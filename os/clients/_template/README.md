# `clients/<slug>/` — the folder IS the account

Scaffolding is generated automatically on WON (`ops/tools/scaffold-client.mjs <slug> <tier>`).
Numbering is stable forever — it's how agents, the report generator, and you all know where things live.

| Folder | Contains | Written by | Read by |
|---|---|---|---|
| `00-account/` | business facts, ICP, offer, pricing, competitors, tone, "what success means" | R1 at onboarding | every engine |
| `01-authority/` | **signed** MSA/SOW, POA for ad/GSC/GA accounts, approved budget caps, who-approves-what | you | gate for any L1 action |
| `02-strategy/` | 90-day plan, constraint analysis, channel rationale, quarterly revision | R1 | the report file |
| `03-delivery/` | `seo/` `ads/` `content/` `copy/` `design/` `web/` — the factory output | R2–R5 | report, QA |
| `04-analytics/` | data pulls, `sources.md`, baselines, dashboards | R6, D06 | reports |
| `05-tasks/` | client requests → `tickets/NNNN-slug.md`, same format as the public pipeline — and they stay **here**, since a ticket names you | intake, R2–R6 | you |
| `06-comms/` | meeting notes, decisions, `log.md` (who said what, when, and the promised date) | R8 | D04 sentiment |
| `07-calendar/` | content + campaign + reporting calendar, next 4 weeks visible | R8 | report + calendar |
| `08-change-requests/` | scope-out requests, impact, quote, approval | R8 | finance |
| `09-qa/` | gate scores, incidents, rework log | R9 | retro |
| `10-outbox/` | **every draft to the client** (email, digest, proposal, apology) — human sends | all roles | you |
| `11-finance/` | invoices, receipts, payment proofs, credit notes | R8 | D10 |
| `12-reviews/` | weekly digests, monthly MBR decks, QBR, renewal | R6/R8 | case study |
| `13-case-study/` | anonymised + (if consented) named proof pack, screenshots, quotes | R9 | Engine 01 |
| `14-report/` | the self-contained HTML/PDF we send — the client's "portal" in this mode | R6 | the client |
| `MANIFEST.yml` | slug, tier, MRR, start, renewal date, health, owner contacts, caps, access status | scaffold | everything |

## Rules
1. **Nothing about a client lives outside their folder.** If you can't find it there, it doesn't exist —
   which is exactly why the system never guesses (Law III).
2. `01-authority/` gates money and access. No L1 action without it. No "they said yes on a call".
3. `10-outbox/` is the only exit door. Sending from anywhere else breaks Law IV.
4. Clients get **reports**, not repo access. A tech-literate client may be offered a read-only private
   repo of their own (their choice, still ₹0) — never write access to this one.
5. On churn: folder is frozen and archived (not deleted) — history is a legal and sales asset.
6. Naming: `YYYY-MM-DD_type_topic_v01.ext`. Never `_final`, `_final2`, `_realfinal`.
