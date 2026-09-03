#!/usr/bin/env bash
# public-guard — fails CI if anything client-shaped is committed to the PUBLIC repo.
# Run locally:  bash os/ops/tools/public-guard.sh
set -uo pipefail
FILES=$(find . \( -path ./.git -o -path ./node_modules \) -prune -o -type f -print 2>/dev/null | sed 's|^\./||')
fail=0
err() { printf '::error::%s\n' "$1"; fail=1; }

# 1 · real client folders
for d in $(find os/clients -mindepth 1 -maxdepth 1 -type d 2>/dev/null | grep -v '_template$'); do
  err "real client folder here ($d). Clients live in the PRIVATE repo."
done
# 2 · live books, CRM, contracts, exports
for f in os/ops/finance/ledger.yml os/pipeline/live-leads.yml os/ops/bench/rates.yml; do
  [ -f "$f" ] && err "$f is private-only"
done
# Count with wc -l, not grep -c: grep exits 1 on no match, so `|| echo 0` appended a second "0" and the
# integer test errored — and an errored test silently PASSES. A guard that can pass on error is worse than none.
# Rule is unconditional: a real lead record in the public tree fails, whether or not a vault exists.
if [ -f os/pipeline/leads.yml ]; then
  n=$(grep -E '^[[:space:]]*-[[:space:]]+id:[[:space:]]+L-[0-9]{4}-[0-9]+' os/pipeline/leads.yml 2>/dev/null | wc -l | tr -d '[:space:]')
  n=${n:-0}; case "$n" in (*[!0-9]*) n=0;; esac
  [ "$n" -gt 0 ] && err "leads.yml holds $n record(s) as plaintext — the prospect list is the revenue. Move it: vault init pipeline, then empty this file."
fi

# 3b · the vault: ciphertext only, plaintext never
for f in $(find vault -maxdepth 1 -type f 2>/dev/null | grep -v '\.age$' || true); do err "$f is plaintext — vault/ may contain only *.age"; done
find vault -mindepth 2 -type f 2>/dev/null | grep . && err "loose files under vault/ — everything must be inside a sealed .age"
git ls-files --error-unmatch .vault-work >/dev/null 2>&1 && err ".vault-work is TRACKED — plaintext client data is in the repo. Remove from the index and history now."
grep -q '.vault-work' .gitignore 2>/dev/null || err ".gitignore missing .vault-work/ (the plaintext working copy)"
echo "$FILES" | grep -qE '^vault/[a-z0-9-]+\.age$' && printf '::notice::vault present — confirm the passphrase is stored outside this machine\n'

# 4 · Indian PII (mobile / GSTIN / PAN / card)
pii=$(printf '%s\n' "$FILES" | grep -E '\.(md|yml|html|txt)$' | xargs -d '\n' grep -InE \
  '(^|[^0-9])[6-9][0-9]{9}([^0-9]|$)|[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{3}|[A-Za-z]{5}[0-9]{4}[A-Za-z]{4}|[0-9]{4}[ -]?[0-9]{4}[ -]?[0-9]{4}[ -]?[0-9]{4}' 2>/dev/null \
  | grep -viE 'example|placeholder|xxxx|12345|00000' || true)
[ -n "$pii" ] && { err "possible phone / GSTIN / PAN / card number:"; printf '  %s\n' "$pii" | head -20; }
# 5 · hygiene: an open-source licence would let anyone copy the OS
if [ -f LICENSE ] && grep -qiE 'MIT|Apache|BSD|GNU|GPL' LICENSE; then
  err "open-source licence detected — delete LICENSE unless giving competitors your OS is intentional"
fi
big=$(find . \( -path ./.git -o -path ./node_modules \) -prune -o -type f -size +1M -print 2>/dev/null | sed 's|^\./||' || true)
[ -n "$big" ] && { err "files >1MB (the brain stays text-only):"; printf '  %s\n' $big; }

[ "$fail" -eq 0 ] && printf '✅ public-guard clean — safe for a public repo.\n'
exit $fail
