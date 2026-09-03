# ENGINE 04 — Reporting, Reports & Proof

Reporting is not paperwork. For a solo AI agency, **reporting is the product's visible surface.**
Clients don't see your prompts or your process; they see whether the numbers moved and whether the
document was worth reading. Get this right and retention doubles. Get it wrong and the best strategy
in the country still gets cancelled at month 3.

## Three layers

### 1. The client's "portal" — one self-contained file, not a hosted login
The portal idea is **superseded by `design/07`**: in a single public repo we never publish a client surface,
and a designed document out-impresses an empty dashboard. So the artefact is a file.

`14-report/<week>_report.html` — one file, CSS inlined, zero external requests, opens on a phone, prints to
PDF. Contents: Overview (live numbers + status) · This week · Deliverables & files · Next 14 days ·
Invoices & payments · What we need from you. Generated in the `report` ritual from the week's real files,
sealed into the vault, **sent by you**.

Why this is better, not merely cheaper: nothing to host, nothing to secure, no password to manage, no build
tool to break — and the client keeps a permanent record they can forward internally, which is how a retainer
gets defended at their end when budgets get reviewed.

**Optional upgrade for tech-literate A-tier clients** (founders, SaaS, D2C), offered rather than assumed: a
read-only private repo of their own containing their folder — Issues as the request queue, every deliverable
a dated commit. Still ₹0, and "your growth team runs on version control; audit any Tuesday, three years out"
closes deals. Default stays the file.

### 2. Weekly Digest (≤400 words, 90 seconds to read, sent the same hour every week)
Five blocks, fixed order:
1. **Did** — items shipped (count + links). Never "worked on".
2. **Moved** — 3 metrics vs last week vs baseline, with ±%.
3. **So what** — 3 sentences of interpretation. (This is the part an in-house hire usually skips — it's the whole reason they hire an agency.)
4. **Need from you** — max 3 asks, each with a date and what happens if nothing arrives.
5. **Next** — next week's ship list, so the retainer is visibly occupied in advance.

Rule: **a client who doesn't know what you did this month will assume you did nothing.** Silence churns
more retainers than bad results do. The digest is also your insurance: the "Did" list is the evidence
file for every scope discussion.

### 3. Monthly Business Review (a decision meeting, not a recap)
10 slides max, from `templates/qbr`. Structure: promise → result → gap → why → next month's bet →
what we need → money (spend, CAC, revenue, our fee vs the value) → **renewal or expansion conversation.**
Two slides you must never skip: (a) "what would have happened if we did nothing" and (b) "3 things
we're stopping". Both raise renewal probability and price tolerance more than any chart.

## Numbers discipline (Law II made mechanical)
- Every figure has: source system, date range, and how it was pulled (recorded in `04-analytics/sources.md`).
- **Baseline frozen on Day 3** of the engagement, exported to a file. All "improvement" claims are
  measured against that file. No backfilling, no cherry-picking a better week. If you did it for them,
  they will assume you'd do it to them.
- Anomalies >±20% flagged as incidents, with a hypothesis, not a celebration.
- Data missing = the sentence "No data yet — first read on DATE". Never a soft number to fill the gap.

## Tracking & measurement (built once in onboarding, reused for every client)
GA4 + events + `gtag`/GTM container · conversion definitions signed off in writing · UTM spec
(`engines/04-reporting/utm-spec.md`) · call tracking where the sales cycle is phone-led · CRM stage
tracking · a monthly "attribution health check" (D14) that catches broken tracking *before* the client
discovers it in a report.

## Public proof factory (the compounding asset)
Every 90 days, each client with clean data gets a **case study** drafted automatically from their own
files: context → problem → what we did → numbers (with dates and screenshots) → quote → what we'd do
differently. Published anonymised by default ("a 40-person real estate developer, Vizag"), named if
they consent — you always ask, because the *named* version is worth 5x.

And the highest-leverage one: **Smart Pursuit's own numbers, published.** Your traffic, your pipeline,
your response times, your revenue milestones, what the OS did that week. Nobody else in your market can
run this experiment on themselves. It is free, it never expires, and it is the reason a ₹10L proposal
from a one-person agency gets read instead of haggled.

## KPIs
Digest on time (target 100%) · Digest open/reply rate · Proposal-to-signature time · Retainer renewal
rate (target ≥85%) · Case studies produced per quarter (≥1) · Number of "no data yet" flags (must fall) ·
Client requests answered inside SLA (≥95%).
