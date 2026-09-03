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
if [ -f os/pipeline/leads.yml ]; then
  n=$(grep -c '^  - id:' os/pipeline/leads.yml 2>/dev/null || echo 0)
  [ "$n" -gt 1 ] && err "leads.yml holds $n records — your prospect list is your revenue. Private repo only."
fi
echo "$FILES" | grep -qiE '(INV-[0-9]|invoice|contract|msa\.|sow\.|\.pdf$|\.csv$|\.xlsx$)' \
  && err "invoice / contract / export artefact in a public repo"
# 3 · secrets
pats='AKIA[0-9A-Z]{16}|ghp_[A-Za-z0-9]{36}|gho_[A-Za-z0-9]{36}|github_pat_[A-Za-z0-9_]{40}|AIza[0-9A-Za-z_-]{35}|rzp_(live|test)_[A-Za-z0-9]{14}|xox[bp]-[A-Za-z0-9-]{10,}|-----BEGIN [A-Z ]*PRIVATE KEY-----|password[[:space:]]*[:=][[:space:]]*[^[:space:]]{6,}'
hits=$(printf '%s\n' "$FILES" | xargs -d '\n' grep -IlE "$pats" 2>/dev/null || true)
[ -n "$hits" ] && { err "secret-shaped strings:"; printf '  %s\n' $hits; }
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
