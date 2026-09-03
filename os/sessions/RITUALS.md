# SESSION RITUALS — the scripts that replace the daemons

Semi-auto means the automation is a **conversation you start on a schedule.** So the triggers are written
like code: paste the block, get a predictable output. Keep the wording stable — a stable trigger is what
lets me (Arena) run a ritual without re-reading the whole repo of context each time.

> **Protocol for both of us.** Each ritual starts with me reading `SOVEREIGN.md` → `AGENTS.md` →
> `STATEBOARD.md` → the relevant playbook. Each ends with: a commit or PR, one line in
> `memory/log/YYYY-MM-DD.md`, and a 5-line summary back to you. If a session dies mid-way, work already
> committed is safe; anything uncommitted is re-derived from files, never from my memory of the chat.

---

## R-01 · `morning` — 10 min · Mon/Wed/Fri 08:00
```
morning
```
**I do:** read state → list (a) leads with no `next_action` or overdue, (b) tickets due today, (c) client
requests sitting unfiled, (d) anything in `10-outbox/` older than 24h, (e) anomalies from the latest
analytics files. **Draft a reply for every lead that needs one.** Write `memory/log/<date>.md` stub.
**You do:** read the 5-line summary; send the replies (copy from outbox); pick today's one priority.
**Never:** I do not touch deliverable content here. Triage only.

## R-02 · `intake` — 5 min per lead · on any new enquiry
```
intake
<paste the email / WhatsApp / DM text, plus any website URL>
```
**I do:** run Engine 00 scoring → write the row to `pipeline/leads.yml` → if Tier A, generate the PB-03
prep brief (their 3 visible leaks, 2 competitors, likely spend, 3 questions, suggested tier) → draft the
reply in `10-outbox/` → if Tier B, draft the audit/Sprint offer → if Tier C, draft the polite no.
**You do:** read the tier + score line, send. Book the call if it's an A.
**Speed rule:** same day, always. A lead older than 24h is a lost lead with paperwork.

## R-03 · `produce` — 20–30 min/day · the factory (this replaces D07 entirely)
```
produce <client-slug> seo        # Mon — briefs → drafts → gate
produce <client-slug> ads        # Tue — campaign build / optimisation log
produce <client-slug> design     # Wed — creative batch + export specs
produce <client-slug> copy       # any day — emails, LP copy, social from the SEO cluster
produce all seo                  # batched across clients (faster: same role, one context)
```
**I do, in this order and never collapsed:** brief → draft → *cold* → hostile critique (5 rejection
reasons a CFO would give) → fix → score against `quality-gate.md` → open a PR with the table of scores.
**You do:** read the PR summary + page 1 of anything client-facing. Approve, or `revise #3: <one line>`.
**Cap:** 30 minutes. Whatever's unfinished becomes a ticket for tomorrow. Never "just one more item" —
that's how the ritual gets abandoned.
**Anti-batching-trap:** `produce all seo` is faster than three separate sessions because I stay in one
role. Same-client task switching is cheap; role switching is expensive.

## R-04 · `report` — 45 min · Fri 16:00
```
report wk<NN>
```
**I do:** collect the week's commits per client → write each `12-reviews/<date>_digest.md` in the 5 blocks
(Did · Moved · So what · Need from you · Next) → update `STATEBOARD.md` → build the client-facing
**self-contained HTML report** (one file, opens anywhere, no login) and/or the PDF for WhatsApp/email.
**You do:** paste this week's numbers first if the client didn't send them (`ingest <slug>`), then skim each
digest's "Need from you" line, then send.
**Rule:** every figure gets a source + date range. "No data yet — first read on 14 Sep" is a *correct*
sentence and I will write it rather than invent.

## R-05 · `prep` / `log` — the call pair
```
prep <client-slug>              # 5 min before: 1-page brief
log: <dictate or paste what happened on the call, messy is fine>
```
**`prep` gives you:** promise → result → gap → next bet → 2 asks → the money line → the unspoken risk
(read from `06-comms/log.md` + D04-style signals I check by hand).
**`log` writes:** `06-comms/<date>_<type>.md`, decisions with owner+date, new tickets, `MANIFEST.yml`
health, stage change in `leads.yml`, and any scope creep as a change-request line. **This is the file the
whole system depends on — never skip it.**

## R-06 · `money` — 10 min · Mon/Fri (starts at first client)
```
money
```
**I do:** check `ops/finance/ledger.yml` vs what you tell me landed → generate invoices as HTML/PDF with
your UPI details → draft due reminders (D+2 warm, D+5 pause per §7 of the MSA) → update the money block
in `STATEBOARD.md` → flag any client whose term ends within 60 days (Engine 05).
**You do:** send. Record `collected` when cash actually arrives. Never from `gross`.

## R-07 · `retro` — 20 min · Sun 20:00
```
retro
```
**I do:** the week vs the 5 numbers (calls booked · time-to-proposal · first-pass gate rate · digests on
time · your hours) → 1 playbook patch → capacity check vs `ops/capacity.md` → next week's plan written into
tickets → anything you did by hand twice this week becomes a documented step.
**You do:** read 12 lines. Say yes/no to the patch.

## R-08 · `ingest` — the data handoff (replaces D06)
```
ingest <client-slug>
<paste CSV, or attach GA4/GSC/Ads screenshots, or say "numbers:" + typed list>
```
**I do:** normalise into `04-analytics/<date>_pull.md` with provenance, update the baseline deltas, flag
±20% anomalies, and if something looks like tracking breakage → open a P1 ticket + a pause proposal in the
outbox. **Not a fix — a flag.**

## Cross-cutting rules (both of us)
1. **Checkpoint often.** Commit after each sub-step; a session that dies at minute 3 must not lose 25 minutes.
2. **One PR per client per week** for deliverables; direct commits for internal/ops files.
3. **Never client-send.** Drafts to `10-outbox/`, you send. No exceptions in any ritual.
4. **Gate before merge.** No deliverable in a merged PR without a written score ≥90.
5. **If a ritual's inputs are missing, ask once and move on** — log the gap, don't stall the day.
6. **End every session with the line the daemon would have posted:** `✅ R-03 · nova · 6 items · gate 93/91/90/94/92/88 · PR #12`.

## The week, at 6 clients
| Day | Rituals | Your clock |
|---|---|---|
| Mon | `morning` · `produce all seo` · `money` | 1h 10m |
| Tue | `produce all ads` | 35m |
| Wed | `morning` · `produce all design` | 55m |
| Thu | *(calls + approvals only — deliberately empty so it can absorb overrun)* | 45m |
| Fri | `morning` · `report` · `money` | 1h 25m |
| Sat | calls if any | 0–45m |
| Sun | `retro` | 20m |
| **Plus** | every enquiry gets `intake` the hour it arrives; every call gets `prep`+`log` | ~40m |

**≈ 7–8 hours a week, of which ~2.5 is with clients.** That is the real number for a company that costs
₹0 and produces 40+ items a week. If a full-auto day later needs to shrink this to 2h15, we buy one paid AI
tier and switch the 14 daemons on — the playbooks don't change, only who runs them.
