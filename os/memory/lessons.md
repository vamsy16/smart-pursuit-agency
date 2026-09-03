# Lessons Ledger — every incident becomes a checklist line within 24h

Format: `date · what happened · root cause (process, not person) · playbook patched · rule added`

2026-09-03 · [SEED — no incidents yet] · Design phase assumption recorded: free-tier limits verified same-day
because three changed in 2026 (Oracle ARM halved 4/24→2/12, Gmail send-as ends Jan 2027, Gemini free Pro removed).
Lesson encoded in the design: **never trust a stack table older than 60 days** — hence D13 AI radar +
`stack/limits.yml` freshness is mandatory, and no critical path may depend on a single free service.
