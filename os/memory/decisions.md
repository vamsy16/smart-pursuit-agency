# Decisions Ledger — append-only, dated, never edited

Format: `YYYY-MM-DD · decision · why · reversible? (Y/N) · decided by`

2026-09-03 · Positioning = "Growth Department-as-a-Service", not "digital marketing agency" · justifies ₹10L by replacing a ₹65L–1.1Cr hire, not by listing deliverables · Y (expensive) · Vamsi
2026-09-03 · Niche = general front door, verticalised preference inside (Engine 00 + verticals.yml) · founder chose general; the vertical is allowed to emerge from case studies instead of being bet on before proof · Y · Vamsi
2026-09-03 · Markets = India now (cash) + international in month 2+ (GST for export invoicing) · 3–5× rate for identical effort · Y · Vamsi
2026-09-03 · Core delivery = Full Growth Partner (SEO+content+ads+CRO+email+reporting) · the only offer where ₹1.5–2.5L/mo is unremarkable · N in practice · Vamsi
2026-09-03 · Hard floor ₹1L/project and ₹1L/month, published publicly · protects the positioning; discounts become the drift that kills a solo agency · N · Vamsi
2026-09-03 · Tooling budget ₹0/mo; only spend = domain + one lawyer-reviewed MSA · capital is not the constraint; time and trust are · Y · Vamsi
2026-09-03 · Nothing client-facing is auto-sent (L0 everywhere) · Law IV; this is the row where solo agencies fail · N · Vamsi
2026-09-03 · Quality gate ≥90/100 required before any deliverable ships · the only defensible reason one person charges team rates · N · Vamsi
2026-09-03 · Capacity ceiling 8 retainers; price rises at 5; waitlist at 8 · growth beyond that is a different business model · Y · Vamsi
2026-09-03 · Repo = single source of truth; no SaaS CRM/database as master · portability across model/tool changes; nothing lost when a free tier dies · N · Vamsi
2026-09-03 · MODE = SEMI-AUTOMATIC: You + Arena agent + GitHub only. No paid AI tier, no API keys, no n8n/Oracle, no cron-driven AI jobs · founder has no budget for paid AI and wants a workflow he can supervise, not a black box · Y (full-auto spec is preserved in daemons/RUNBOOK.md) · Vamsi
2026-09-03 · Daemons become 6 human-triggered rituals (morning / intake / produce / report / prep+log / money / retro / ingest) + 3 key-free Actions (A1 week-start, A2 friday-pack, A3 validate-publish) · same playbooks, different scheduler (your calendar) · Y · Vamsi
2026-09-03 · Client deliverable = self-contained HTML/PDF generated from the repo; no hosted portal until GitHub Pro ($4/mo) is bought with client money · Pages-on-private needs Pro; a designed document beats an empty dashboard anyway · Y · Vamsi
2026-09-03 · Data ingestion = founder pastes CSV/screenshot weekly per client (~8 min/client/wk), never an API pull · removes credential risk and quota risk entirely · Y · Vamsi
2026-09-03 · Approval mechanism = a PR per client per week; merged = shipped; rejected = reworked in-session · the diff is the audit trail and the phone is the office · N · Vamsi
2026-09-03 · Repo stays PUBLIC as the shop window; client/lead/money data goes to a private sibling repo (`smart-pursuit-os`) at client #1 · public buys free Pages + unmetered Actions + proof-of-work marketing; costs confidentiality — so the split is the design · N (irreversible once indexed) · Vamsi
2026-09-03 · PUBLIC-SCOPE.yml is the contract; CI (public-guard) enforces it rather than trusting memory · a leak in a public repo is permanent · N · Vamsi
2026-09-03 · No LICENSE file, ever, unless deliberately open-sourcing the OS · default = all rights reserved · Y · Vamsi
2026-09-03 · Optional per-client PRIVATE repo with the client as collaborator = the portal for tech-literate A-tier accounts (Issues for requests, commits as the audit trail) · ₹0 and differentiating; HTML/PDF report stays the default for non-technical owners · Y · Vamsi
2026-09-03 · SUPERSEDES the two-repo plan in design/06: ONE public repo, two zones — public method + `vault/*.age` encrypted ledger · founder wants a single public repo and only the AI OS; keeps full git continuity while making "public" irrelevant for the record · N (key loss = data loss) · Vamsi
2026-09-03 · Client data may be committed to a public repo only as ciphertext, sealed per session, gzip-before-encrypt · ~10–20 MB/month at 8 clients, well under GitHub's 1 GB · N · Vamsi + agent
2026-09-03 · Passphrase is the only security: 6+ random words, password manager + printed copy, quarterly `vault key` rotation, GitHub 2FA mandatory · honest limits documented in design/07 (last-mile, account compromise, history accidents, enterprise procurement) · N · Vamsi
2026-09-03 · Tier 0 while zero clients: no vault, nothing to encrypt; `vault init pipeline` at first real lead, `vault init <slug>` at first advance · don't build cryptography for an empty drawer · Y · Vamsi
