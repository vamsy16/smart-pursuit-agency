# ENGINE 03 — Delivery (what the OS actually manufactures)

This is the "Full Growth Partner" production line. The design goal: **a client paying ₹1.5–4L/month
receives more visible output per week than a 5-person in-house team**, while you spend ≤45 min/day on it.
That only works if work is *manufactured on a line*, not improvised per client.

## The Line (6 stations, every client, every week)

```
INBOX → BRIEF → PRODUCE → GATE(90) → APPROVE → SHIP → MEASURE → RETRO
   ↑____________________________________________________________|
```

| Station | Who | Output | Time |
|---|---|---|---|
| **Inbox** | Client fills a 4-field request form (Tally/Google Form → auto-file in `clients/<slug>/05-tasks/`) | ticket file | 0 min of you |
| **Brief** | R1/R2 | objective, audience, angle, the gap, success test | automated |
| **Produce** | R2 SEO · R3 Ads · R4 Copy · R5 Design · R6 Analytics | drafts, creatives, campaign specs | automated batch |
| **Gate** | `kernel/quality-gate.md` | score ≥90 or back to Produce | automated |
| **Approve** | You (glance) + Client (async, 48h SLA, auto-approve clause) | ✅ | 5–10 min/client |
| **Ship** | Scheduled publishing, ad upload, email send, asset handoff | live | automated |
| **Measure** | D06 pulls numbers into the client dashboard | updated figures | automated |
| **Retro** | R9 | what worked, playbook patch | 10 min/week total |

## Weekly production quota per Standard retainer (the "contract you can actually keep")

| Deliverable | Volume/wk | Owner |
|---|---|---|
| SEO articles (1,500–2,500w, brief→draft→edit) | 3 | R2 + R4 |
| Technical/on-page fixes | 5 | R2 |
| Ad creatives (static/carousel) + copy variants | 6 | R5 + R4 |
| Campaign optimisation actions logged | 3 | R3 |
| Short-form video scripts (shot by client or repurposed) | 4 | R4 + R5 |
| Social posts (from the article ecosystem) | 12 | R2/R4 |
| Email/WhatsApp broadcast | 1 | R4 |
| Weekly digest to client | 1 | R8 |
| Dashboard refresh | 1 | R6 |

**Total ≈ 47 production items a week per client.** An in-house team bills ₹6–9L/month to produce that.
You produce it for ₹1.5L. That is the entire business case — and it's why capacity, not price, is your constraint.
*Never promise volume above this line to a new client.* Over-promising is how a solo agency dies, usually
in month 3, always politely, right after the third "not seeing results" email.

## Batching rules (the only way solo survives)
- **Theme days.** Mon = SEO batch (all clients) · Tue = Ads · Wed = Design · Thu = Client comms/reports · Fri = new business + strategy. Switching *clients* is expensive; switching *task types* is cheap.
- **One monthly production sprint per client**, not daily firefighting. The calendar is the contract.
- **Approve in bulk.** A single "this week's 12 items, reply yes/1/2" message. Never 12 approval threads.
- **Auto-approve clause in the MSA:** requests unanswered in 48h are considered approved. This one line
  removes ~40% of solo-agency delay and is standard at serious shops.

## The onboarding sequence (days 0–30, `templates/onboarding`)
- **D0:** welcome + access pack (all logins via a secrets manager, never chat), 6-month review dates booked, comms SLA published.
- **D1–3:** audit sprint — GSC/GA4/ads/SEO/tech/tracking/funnel review. Everything the client thinks they
  know is replaced with data. This is where you earn the right to be called a partner.
- **D4:** the **Findings & 90-Day Plan** deck. 12 slides max. Includes "3 things to stop doing this week" —
  clients remember stop-do lists more than to-do lists.
- **D5:** tracking implementation verified end-to-end (conversion test order/click, not "configured").
- **D7:** first quick win shipped + reported. Month 1 retention is decided in week 1 by *evidence of motion*.
- **D30:** first monthly review: what moved, what we learned, what changes. Never a status update. Always a decision meeting.

## QA & rework
- Client revision requests: 2 rounds included, then `08-change-requests/` with a rate card. Written
  politely as process, never as a fight. (Undocumented scope creep is what turns a ₹1.5L client into a loss.)
- **Mistake protocol:** find → write to `09-qa/incidents.md` → draft a client note in `10-outbox/` with
  impact, fix, prevention → same-day patch in the relevant playbook. Own it in one paragraph, fast.
  Premium clients tolerate errors; they do not tolerate finding out late.

## Capacity governor (`ops/capacity.md`)
Green ≤4 retainers · Amber 5–7 (raise prices 20% and slow onboarding) · Red 8 (Sprints only, activate bench).
The system refuses to generate a new delivery plan at Red without a written founder override. This is the
rule that keeps a ₹10L agency from becoming a burnout story.

## What this engine must never do
Publish without a gate score · start work without an advance · accept a request that needs a human's
hands for >2 hours without a change request · let a client's ad account run without tracking verified ·
ship a report with no "what we need from you" line.
