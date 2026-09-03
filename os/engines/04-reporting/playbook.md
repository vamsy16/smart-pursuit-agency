# ENGINE 04 — Reporting, Client Portal & Proof

Reporting is not paperwork. For a solo AI agency, **reporting is the product's visible surface.**
Clients don't see your prompts or your process; they see whether the numbers moved and whether the
document was worth reading. Get this right and retention doubles. Get it wrong and the best strategy
in the country still gets cancelled at month 3.

## Three layers

### 1. The Client Portal (always-on, free, premium)
Built **from this repo** — no Notion seat, no SaaS subscription.
`ops/tools/build-portal.mjs` renders `clients/<slug>/` into a static site per client, published on
Cloudflare Pages (or Vercel/Netlify free) with a shared secret / access password.

Portal contains: Overview (live numbers + status of everything) · This Week · Deliverables & files ·
Calendar · Requests (form link) · Invoices & payments · Docs/MSA · Retro log.
Each client gets `https://<slug>.<yourdomain>.dev?k=<secret>` — a private, fast, white-labelled
surface. Rebuild on push (GitHub Action D09); a client sees the page update the moment you commit.

Why this design: a portal you *pay* for gets stale, because updating it costs money and effort. A
portal that is just your file system renders itself, free, forever. The better you work, the better it looks.

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
