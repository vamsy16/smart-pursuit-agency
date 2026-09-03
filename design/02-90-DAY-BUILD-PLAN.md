# 02 · 90-Day Build Plan — from empty repo to running OS

Rules of engagement: **one module per week, live at the end of the week, no "phase 2".** A thing that is
designed but not running does not exist. Founder effort stays under 15 hrs/week while building, because a
plan that requires 60-hour weeks is a plan you will abandon in week 3 — and then the agency is worse off
than if we'd built nothing.

---

## WEEKS 1–2 — The spine (before anything is sold)
- [ ] `SOVEREIGN.md`, `AGENTS.md`, kernel (roles/voice/gate/escalation) — **done in this commit**
- [ ] Repo hygiene: `.gitignore`, branch protection off (solo), tags, `os/memory/log/2026-09-*.md`
- [ ] Domain purchase + Cloudflare DNS + Email Routing (inbound) + SPF/DKIM via SMTP2Go/Brevo (outbound)
- [ ] GitHub secrets: SMTP creds, AI API keys, client-account tokens. `ops/secrets.index.md` = names only
- [ ] Free AI layer configured: Gemini key (free tier), `limits.yml` wired into the agent's pre-flight check
- [ ] Client folder scaffold script: `ops/tools/scaffold-client.mjs` (makes the 15 folders + MANIFEST)
- [ ] Templates: proposal, discovery, audit, MSA/SOW (draft → **book the lawyer call now**), invoice, digest
- **Ship test:** create a fake client, scaffold, draft a proposal from template, gate-score it ≥90.

## WEEKS 3–4 — The shop window (demand can now exist)
- [ ] Public site (static, from markdown, Cloudflare Pages): Positioning · Services · **Price Card** ·
      Autopsies · The Operating System (yes, explain your own OS — it's the moat) · Book a call
- [ ] Price card published with the ₹1L floor. This one page will do more for your rate than 6 months of posts.
- [ ] Autopsy #1 and #2 shipped (one Indian, one international prospect's market), each: 1,200 words +
      8 slides + 5-min voiceover. 25 min of founder work each; the system does the rest.
- [ ] LinkedIn + X + WhatsApp status: profile rewrite around the thesis, not "services offered"
- [ ] Booking: Google Calendar + a 4-field intake form (Tally) → auto-file into `pipeline/leads.yml`
- [ ] D01 (morning brief) + D02 (lead sweep/score) + D05 (pipeline health) live as Actions workflows
- **Ship test:** a stranger can find you, read a real teardown, see your floor price, and book a call
  without you touching a keyboard. Then: send 40 outbound, and start Engine 05's referral loop with 10 partners.

## WEEK 5 — Portal & proof surface (Engine 04)
- [x] ~~portal builder~~ → replaced by design/07: the client artefact is one self-contained HTML/PDF file
- [ ] `os/ops/tools/vault.sh` — **already built and tested** (seal/open/rotate + CI guard); wire `vault init pipeline`
- [ ] D09 (rebuild on push) live · D06 (metric pull) with GSC/GA4 APIs, CSV fallback documented
- [ ] Looker Studio template per client + `04-analytics/sources.md` provenance discipline
- **Ship test:** paste one real client's data → portal renders → digest drafts itself → numbers all traceable.

## WEEK 6 — First real work: land 2 pilot clients
Sell **₹25k audits** and **₹1L sprints**, not discounted retainers — the floor stays intact, and pilots
convert to retainers when the audit lands. Two pilots max (you still need build time):
- [ ] PB-06 audit run end-to-end on a live client · PB-20 onboarding pack · PB-03/04/05 sales loop in production
- [ ] Collect the 3 things pilots alone give you: real numbers, real quotes, real friction in the playbooks
- **Ship test:** a client pays ₹25k, receives a 25-page audit in 72h, and ≥1 books the Sprint.

## WEEKS 7–8 — Delivery line (Engine 03 for real)
- [ ] The 6-station line wired: intake form → ticket → brief → produce → gate → approve → ship
- [ ] PB-07 content factory (Sun 20:00) with per-client weekly quota enforced by the plan, not by mood
- [ ] PB-08/09 ads build + optimisation log · PB-10 design system (your own Canva/Figma template kit,
      free-tier-safe) · PB-24 tracking verification
- [ ] D07 (content) + D08 (digests) + D11 (renewal radar) live
- **Ship test:** 47 items/week for a Standard client with ≤45 min/day of founder approval time.

## WEEK 9 — Money & compliance (unsexy, this is where agencies actually die)
- [ ] Zoho Books free configured, invoice numbering per FY, UPI + payment links, Wise for international
- [ ] GST: register if you plan to invoice USD/DXB clients (you need it for export invoicing); decide
      proprietorship vs Pvt Ltd with a CA in the same call as the MSA review
- [ ] D10 (finance check + dunning) live · ledger + P&L 5-line sheet · advance-tax calendar
- [ ] Bench: recruit 8–12 vetted freelancers (editor, designer, dev, copy, VA) — **now, not at crunch**

## WEEK 10 — Retention engine (Engine 05)
- [ ] D04 (sentiment/amber-red) + D11 full early-warning matrix + PB-14 renewal pack + PB-17 case study
- [ ] Referral ask inserted into PB-13 (post-MBR) and into the digest footer
- [ ] Expansion ladder written into each MANIFEST ("what we'd add at month 4 for +₹0.8L")

## WEEKS 11–12 — Full autonomy & hardening
- [ ] All 14 daemons live, each with a `✅/⚠️/❌` one-line phone alert (Telegram/Slack/Discord channel of one)
- [ ] D13 (AI radar, monthly stack review) + D14 (backups: repo mirror + data exports + secrets sanity)
- [ ] Oracle box: n8n for webhook flows + chatwoot if inbox volume demands (optional; skip if Actions suffice)
- [ ] Load test the governor: simulate 8 clients in `capacity.md`, confirm Red actually blocks proposals
- [ ] Red-team week: run 5 malicious/confusing requests through the OS (a client asking for fake reviews,
      an invoice dispute, a "guarantee #1 rankings" demand, a scope-bully, a leaked-credential email).
      Fix the rules, not the incident.
- [ ] Publish "How we run a one-person ₹10L agency": the OS, minus secrets. This is now a lead magnet *and*
      the beginning of a second product (sell the system to other founders at ₹2–5L).

---

## Success criteria at Day 90 (all measured, none felt)
| # | Test | Pass |
|---|---|---|
| 1 | Pipeline self-generated | ≥12 qualified conversations/mo from owned rails, ≥3 from content |
| 2 | Floor held | zero proposals below ₹1L/mo; ≥₹25k paid entry product sold |
| 3 | Revenue | MRR ≥₹2L, or ₹3L+ collected in projects |
| 4 | Time | founder ≤2h15m/day operating, ≤6 delivery hrs/client/mo |
| 5 | Quality | 100% of shipped deliverables gate-scored ≥90; <1 incident |
| 6 | Autonomy | 10 of 14 daemons run unattended 30 days |
| 7 | Cost | fixed outflow ≤₹2,500/mo; no client unfunded spend |
| 8 | The real one | you are **busy with clients**, not busy with admin |

## If revenue is still zero at Day 60 (it happens; plan for it)
Do not lower the price. Diagnose in this order: (1) are 40 outbound/day actually going out? (2) is the
first response inside 5 minutes? (3) does the price card page exist and say the floor? (4) are there two
autopsies with real numbers? (5) is Tier-C consuming your day? The fix is always one of these five, and
none of them are "more tools". At day 75, take one Tier-B client at the **₹1L Sprint** price to create
proof — that is the only sanctioned exception, and it must include a written case-study clause.

## Budget note (the honest one)
You offered ₹50L for this build. The build needs **₹0** in subscriptions and ~100 founder-hours over 90 days,
plus ~₹10–16k once for the domain and the lawyer. That's not a discount — it's the actual point of the
design: capital is not your constraint, and the plan is engineered so it never becomes one. Keep the ₹50L
as *runway* (12 months of living costs at ₹60–70k/month). Runway is what makes it possible to hold a ₹1L
floor while you build the reputation that deserves it — and that is precisely the thing money buys here.
