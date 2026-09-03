#!/usr/bin/env bash
# vault.sh — the ledger inside a PUBLIC repo.
#
# One public repo, two zones:
#   public zone   method, playbooks, site, anonymised proof        → readable by the world, on purpose
#   vault zone    vault/<client>.age, vault/pipeline.age            → committed as ciphertext; unreadable without the passphrase
#
# Git history is public. Encryption makes "public" irrelevant for the vault — security comes from the
# key, not from hiding the file. Losing the key means losing the vault; there is no recovery, no support,
# no reset. Keep the passphrase where a fire and a lost laptop both can't reach it.
#
# Uses openssl (installed everywhere, no accounts, no expiry). `age` is nicer if you install it —
# the tool prefers it automatically.

set -uo pipefail
ROOT=$(git rev-parse --show-toplevel 2>/dev/null || pwd)
V="$ROOT/vault"
W="$ROOT/.vault-work"          # plaintext working copy — gitignored, never committed
ENVKEY="${SMARTPURSUIT_KEY:-}" # optional: export SMARTPURSUIT_KEY=... to skip prompting
mkdir -p "$V"

have() { command -v "$1" >/dev/null 2>&1; }
enc_tool() { if have age; then echo age; else echo openssl; fi; }

pass() {
  if [ -n "$ENVKEY" ]; then printf '%s' "$ENVKEY"; return; fi
  if [ -t 0 ]; then read -rs -p "passphrase: " k >&2; echo; printf '%s' "$k"; return; fi
  printf '%s' "$(cat)"        # CI/agent pipe mode
}

_seal() { # <dir> <out-file>
  local dir="$1" out="$2" tmp
  tmp=$(mktemp)
  # tar+gzip first: client markdown compresses ~5x, and encrypted blobs cannot delta in git — this is
  # the single biggest lever on repo size. Never encrypt uncompressed text.
  ( cd "$dir" && find . -type f -print0 | sort -z | tar --null -czf - -T - ) > "$tmp"
  if [ "$(enc_tool)" = age ]; then
    pass | age -z -p -o "$out" "$tmp" 2>/dev/null || { printf '%s' "$(pass)" | age -z -p -o "$out" "$tmp"; }
  else
    openssl enc -aes-256-cbc -pbkdf2 -iter 200000 -salt -in "$tmp" -out "$out" -pass "pass:$(pass)"
  fi
  rm -f "$tmp"
  printf '🔒 sealed %s (%s bytes, %s)\n' "$(basename "$out")" "$(wc -c <"$out" | tr -d ' ')" "$(enc_tool)"
}

_open() { # <in-file> <dir>
  local inp="$1" dir="$2" tmp
  [ -f "$inp" ] || { echo "no vault file: $inp" >&2; return 1; }
  mkdir -p "$dir"; rm -rf "${dir:?}"/*; 
  tmp=$(mktemp)
  if [ "$(enc_tool)" = age ]; then
    pass | age -d -z -i "$inp" -o "$tmp" 2>/dev/null || { printf '%s' "$(pass)" | age -d -z -i "$inp" -o "$tmp"; } || { rm -f "$tmp"; echo "decrypt failed — wrong passphrase?" >&2; return 1; }
  else
    openssl enc -d -aes-256-cbc -pbkdf2 -iter 200000 -in "$inp" -out "$tmp" -pass "pass:$(pass)" \
      || { rm -f "$tmp"; echo "decrypt failed — wrong passphrase?" >&2; return 1; }
  fi
  tar -xzf "$tmp" -C "$dir" && rm -f "$tmp"
  printf '🔓 opened %s → %s/ (%s files)\n' "$(basename "$inp")" "${dir#"$ROOT"/}" "$(find "$dir" -type f | wc -l | tr -d ' ')"
}

case "${1:-help}" in
  init)   # create a vault for a client (or pipeline)
        name="$2"; [ -d "$W/$name" ] || mkdir -p "$W/$name"
        [ -f "$V/$name.age" ] && { echo "vault exists: $name — use: vault open $name"; exit 1; }
        printf '# %s\n\nEncrypted client record. Plaintext lives only in .vault-work/ (gitignored).\n' "$name" > "$W/$name/README.md"
        _seal "$W/$name" "$V/$name.age"; git add "$V/$name.age"
        echo "created vault/$name.age — staged for commit." ;;
  open)   name="$2"; mkdir -p "$W/$name"; _open "$V/$name.age" "$W/$name" ;;
  seal)   name="$2"; _seal "$W/$name" "$V/$name.age"; git add "$V/$name.age" ;;
  ls)     for f in "$V"/*.age; do [ -e "$f" ] || continue
              printf '%-26s %8s bytes  %s\n' "$(basename "$f" .age)" "$(wc -c <"$f" | tr -d ' ')" "$(git log -1 --format=%cs -- "$f" 2>/dev/null)"; done ;;
  cat)    name="$2"; sub="${3:-}"   # read one file out of the vault without writing plaintext to disk
        tmp=$(mktemp -d); _open "$V/$name.age" "$tmp" >/dev/null || { rm -rf "$tmp"; exit 1; }
        if [ -n "$sub" ]; then cat "$tmp/$sub"; else find . -path ./vault -prune -o -true >/dev/null; ( cd "$tmp" && find . -type f | sort ); fi
        rm -rf "$tmp" ;;
  key)    # rotate / verify: re-seal everything with the passphrase just typed
        printf '%s' "$(pass)" > /dev/null; echo "re-seal with the new key? type 'yes' to continue"; read -r y
        [ "$y" = yes ] || exit 0
        for f in "$V"/*.age; do [ -e "$f" ] || continue
          n=$(basename "$f" .age); _open "$f" "$W/$n" >/dev/null; _seal "$W/$n" "$f"; done
        echo "re-sealed. commit the new ciphertext." ;;
  *) cat <<EOF
vault.sh — the ledger inside a public repo
  vault init <name>      create vault/<name>.age (client slug, or "pipeline")
  vault open <name>      decrypt into .vault-work/<name>/ for editing
  vault seal <name>      re-encrypt and stage vault/<name>.age
  vault cat <name> [f]   list files, or print one, without touching disk
  vault ls               all vaults, sizes, last change
  vault key              re-seal everything with a new passphrase
env  SMARTPURSUIT_KEY     set it to skip the prompt (the agent uses this; it is never written to a file)
EOF
       ;;
esac
