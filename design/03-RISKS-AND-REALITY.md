# 03 · Risks, Reality, and What ₹50L Would Actually Change

A design that only tells you what will work is marketing, not engineering. These are the ways this fails,
ranked by likelihood, with the mitigation already wired into the repo.

---

## The five real risks

### 1. "General" positioning eats the floor (probability: high)
You chose no niche. The failure mode isn't failure — it's *drift*: three Tier-B clients at ₹40k/mo that
feel like wins, forty hours of persuasion, zero case studies, and a price you can never raise because your
last twelve invoices say otherwise.
**Mitigation, already built:** Engine 00 score gates the calendar; the ₹1L floor is a law, not a
preference; the productised floor (₹25k audit / ₹1L sprint) gives Tier-B somewhere to go that isn't a
discounted retainer; the vertical preference table quietly shapes what you write about so the case-study
library becomes a niche by month 6.
**You must still do one thing:** refuse out loud. The OS can score a lead; only you can decline a cheque.

### 2. Solo capacity is the ceiling (high, and permanent)
Delivery at Engine 03's quota for 8 clients is ~55 hrs/month each — real, and no automation makes you
omnipresent. Growth past 8 is a *business-model* change, not an optimisation.
**Mitigation:** capacity governor refuses at Red; bench absorbs overflow at 83% margin; waitlist turns
capacity into positioning; the AI-ops product (selling this OS to other founders) is the escape hatch that
scales without you.
**Do not** hire a manager before 40 hrs/week of supervisable work exists. You'll spend the ₹10L on salary
and the ₹10L on the client you dropped while managing.

### 3. Free-tier fragility (medium, annoying)
Three facts already moved in 2026: Oracle's free ARM allowance was **halved to 2 OCPU/12GB**; Gmail's
"Send mail as" for custom domains is **ending Jan 2027**; Gemini free-tier Pro access is effectively gone.
Free tiers can also be reduced with no notice — and free-tier AI **may train on your inputs**, which for
client-confidential work is a contractual problem, not a philosophical one.
**Mitigation:** `limits.yml` + Rule A9 (80% tripwire), fallback column on every stack row, GitHub Actions
(not the Oracle VM) as the primary scheduler, D13 AI radar, and the anonymise-first privacy rule in
SOVEREIGN §5.4. Also: anything the business depends on must degrade to a documented manual playbook.
**When revenue exists, kill this risk:** a ₹999–2,000/mo paid AI tier and Zoho Mail Lite are the first
upgrades worth buying — they buy *reliability and client privacy*, not features.

### 4. Quality drift → the refund (medium, catastrophic)
One published article with an invented statistic. One campaign launched with untested tracking. One
proposal that promised "page 1". At ₹10L, a client doesn't complain — they screenshot you and tell the
industry.
**Mitigation:** the 100-point gate, the two-pass critique, Law II (truth) and Law III (never guess business
truths), the stop-rules in PB-08, and the tracking-verification gate on Day 5. The gate is not paperwork;
it's the only thing that makes one person's output safe to attach a ₹10L invoice to.
**Non-negotiable behaviour:** if the gate is skipped twice on the same client, pause their work and fix the
process. A two-day delay is cheaper than a reputation that never recovers in a small market.

### 5. Founder burnout / abandonment (medium, and it's the usual ending)
Every "AI agency" plan dies like this: week 1 excitement, week 4 the daemons break, week 6 everything is
done by hand again, week 10 the repo is a museum.
**Mitigation:** the design deliberately caps your day at 2h15m and *orders* the build so week 4 already
produces money-visible assets (site, price card, two autopsies, leads scoring themselves). Momentum comes
from early revenue, not from discipline. And nothing in this plan requires you to be a programmer: the
agent writes the workflows, you approve the diff.
**Tripwire:** if founder operating time exceeds 4 hrs/day for a week, that's a **defect report** on a
playbook — not a willpower problem. Raise it, fix the doc, ship the daemon.

---

## What ₹50L would change (be honest about the difference)
If this were a ₹50L build, four things would be different — and none of them is "the automation":

| | Current design (₹0) | With ₹50L |
|---|---|---|
| **Legal** | template MSA, one lawyer review | counsel on retainer, IP + data-processing cover for international clients, enforceable contracts |
| **Brand** | self-built static site, your writing | identity system, film, a real domain of proof assets — affects close rate at ₹10L more than any workflow |
| **Team** | bench + AI (up to ~8 clients) | 2 juniors + 1 ops manager → 15–25 clients, but it stops being an AI agency and becomes an agency with software |
| **Software** | repo + Actions + n8n | a bespoke portal with SSO, integrations, SLAs — nice; sells nothing you can't sell with a portal that updates on commit |

The ₹50L version buys *scale and insulation*. The ₹0 version buys *the same engine and the same floor*, and
is the correct starting point — because the thing that fails first at this size is never the software.
It's the willingness to say no to a ₹40k client, and to spend an afternoon on an audit nobody forced you to do.

## What NOT to build (a list to read when you're bored or excited)
- ❌ Your own SaaS for clients (portals, dashboards) before 10 paying clients. It's a startup, not an agency.
- ❌ A social-media scheduling tool, an AI chatbot for your own site, an agent swarm that "runs itself".
- ❌ Anything requiring 24/7 uptime for client delivery. If the Oracle box dies and a client notices, the design was wrong.
- ❌ Paid automation platforms whose free tier you'll outgrow in a month and whose migration will cost a week.
- ❌ Hiring before the waitlist is real.
- ❌ "Just this one small project at ₹40k to keep the lights on." That is the single decision that most
  reliably prevents the ₹10L year. Use the audit and the sprint instead — same money, different ceiling.

## The one-sentence test for anything new
**Does this make the founder's day smaller or the client's trust bigger?** If neither, it doesn't get built —
and that rule, more than any daemon, is what will make the difference between a premium agency and a busy freelancer with a good laptop.
