# 05 · SEMI-AUTO MODE — the three-actor architecture

**You → Arena agent → GitHub.** That's the whole company. No Gemini key, no n8n, no Oracle VM, no
paid AI tier, no scheduler talking to APIs. The 14-daemon design in `daemons/RUNBOOK.md` stays written
(it's the full-auto mode we can switch on later); what follows is what actually runs now.

## What this removes — and what genuinely replaces it

| Removed (needs money or keys) | Replaced by | Honest cost |
|---|---|---|
| Gemini/GPT API batch content | **Arena session** (the `PRODUCE` ritual) | Your week: 3 scheduled sessions instead of a Sunday cron |
| D06 auto metric pull (GA4/Ads APIs) | **You paste numbers or a screenshot → I parse to files** | ~8 min/client/week, and it's the biggest tax in this mode |
| Cron schedulers (D01/D05/D08) | **A fixed calendar ritual + `git log` as the clock** | Nothing prompts you. The alarm on your phone is the daemon |
| n8n / Oracle box / webhooks / chatbots | **Deleted entirely** | Nothing lost this year; re-add only if volume demands |
| Cloudflare portal + Pages | **GitHub Pages (public repo) for the site; a self-contained HTML/PDF report as the "portal"** | No per-client login to build, and a designed document reads *more* premium than a dashboard |
| SMTP relays, DKIM, sending services | **Your Gmail + `@gmail` for now; custom domain when the first invoice clears** | Weaker first impression — fix with the ₹700 domain, which we do before selling anyway |
| Tally forms + auto-intake | **The enquiry itself: you paste email/WhatsApp text to me → I score, file, draft** | Zero setup, zero vendor |
| Zoho Books / Razorpay automation | **Invoice = a repo-generated HTML/PDF + UPI ID typed in. Razorpay/UPI when real money moves** | Manual, but you issue maybe 6 invoices a month |

**What stays, because it's free and needs no keys:** the repo as the brain, GitHub Issues as the board,
Actions for three mechanical jobs, Pages (public repo) for the site.

## The GitHub facts this design is built on (verified 2026)
- Free: unlimited public **and private** repos, unlimited collaborators, Issues + PRs + Projects all free.
- **2,000 Actions minutes/month** on the private repo (public repos: included, effectively free) — our three jobs use ~60.
- ⚠️ **GitHub Pages is public-repo-only on Free**; private Pages needs Pro ($4/mo ≈ ₹350). This is the
  *only* real limitation of the 3-actor stack — and it's why the client artefact is **a file we ship**, not
  a hosted login. (When you want a true portal: $4/mo, everything else stays the same.)
- Actions minutes are Linux-denominated: keep the jobs Linux-only, no macOS/Windows runners, no big-runner labels.

## The architecture

```
        ┌──────────────────────────────────────────────┐
        │  YOU  — decide, talk, press send, paste data │
        └───────▲──────────────────────────┬───────────┘
                │ approvals, numbers        │ trigger words
        ┌───────┴──────────────────────────▼───────────┐
        │  ARENA AGENT — reads the repo, does the work  │
        │  9 roles · playbooks · gate ≥90 · writes files │
        └───────┬──────────────────────────▲───────────┘
                │ commits, PRs             │ state, history, board
        ┌───────▼──────────────────────────┴───────────┐
        │  GITHUB (private)  os/ · clients/ · memory/   │
        │  Issues = tickets · PR = approval · git = audit│
        │  └─ Actions A1/A2/A3 (no keys, ~60 min/mo)    │
        │  GITHUB (public)  site → Pages · autopsies     │
        └──────────────────────────────────────────────┘
```

**The Arena agent is the daemon.** It just runs on your schedule instead of cron's. That is not a downgrade:
it removes every rate limit, every leaked key, every "the free tier changed and we were blind" failure — and
the playbooks we wrote are *more* valuable now, because a precise playbook is what makes a session short.

## The 6 rituals (full scripts in `os/sessions/RITUALS.md`)

| Ritual | When | You type | Time | What I do |
|---|---|---|---|---|
| **MORNING** | Mon/Wed/Fri 08:00 | `morning` | 10 min | Read state → list due tickets, unanswered leads, anomalies → draft every reply into the outbox |
| **INTAKE** | on any new enquiry | `intake:` + paste | 5 min/lead | Score (Engine 00), prep brief, draft reply, update `leads.yml` |
| **PRODUCE** | Mon SEO · Tue ads+design · Wed copy | `produce <slug>` | 20–30 min/day | Brief → draft → cold critique → fix → gate-score → PR for your approval |
| **REPORT** | Fri 16:00 | `report <week>` | 45 min | Assemble digests + monthly files from the week's commits; build the client report HTML/PDF |
| **CALL** | 5 min before / 15 after | `prep <slug>` / `log:` + dictation | 5+15 min | 1-page prep brief → post-call files, tickets, health update |
| **RETRO** | Sun 20:00 | `retro` | 20 min | Week vs targets, playbook patches, next week's plan, capacity check |

Plus `money` (Mon/Fri, 10 min) once you have clients. Total at 6 clients: **≈8–10 hrs/week of founder
time, ~50 min/week per client** — versus the day-design's 2h15m. Semi-auto costs you roughly 20 minutes a
client a week more than full-auto, and zero rupees. That trade is worth it right now; revisit at ₹6L+/month.

## The git flow (this *is* the approval gate)

```
I work on a branch:  arena/<client>-<week>-deliverables
I push a PR titled:  "nova-edtech · wk37 · 6 items · gate 93/91/90/94/92/88"
You, on GitHub Mobile, read:  the PR description (1 table) + the diff of page 1 only
You type:            approve → merge  ·  or  "revise #4: <one line>"
Merged = shipped.  Rejected = I rework the same session.
```
Why this instead of a dashboard: the diff is the approval, git history is your audit trail, your phone is
your office, and if the session dies mid-work **nothing is lost** — files are versioned. It also makes
scope disputes trivial: 18 months from now you can prove what shipped on which date.

## Data ingestion (the honest weak point, handled)
No APIs means you become the sensor. Make it cheap:
1. **Screenshots are input.** GA4/GSC/Ads screenshot → I extract the table, write `04-analytics/` with a
   provenance line ("manual export, GA4 UI, 1–7 Sep, Vamsi"). Legible, auditable, no API needed.
2. **One paste per client per week.** Ask each client in the MSA to send a Monday metrics snapshot (most
   use Looker/AgencyAnalytics and can export CSV in a click). Their 30 seconds saves your 8 minutes.
3. **CSV drop folder.** `os/clients/<slug>/04-analytics/INBOX/` — paste files there, say `ingest <slug>`,
   I normalise them into weekly pulls and update the dashboard numbers.
4. **Baseline still freezes on day 3.** Manual or not, the discipline that makes you trusted is a dated file.

## Three mechanical jobs (Actions, zero keys, ~60 min/month)
| ID | When | What | Fails how |
|---|---|---|---|
| **A1 week-start** | Mon 06:00 | Creates this week's ticket files from each client's calendar, appends to `STATEBOARD.md`, opens the log stub | Skipped = `produce` catches up; nothing lost |
| **A2 friday-pack** | Fri 12:00 | Collects the week's commits per client into `12-reviews/<week>_raw.md`, checks every deliverable has a gate score, flags missing ones | Skipped = I rebuild it in the `report` session |
| **A3 validate+publish** | on push | Lints markdown/paths/links, checks the 4-law violations (invented numbers, `10-outbox` bypass), builds public site → Pages | Red CI = I fix it; blocks nothing internal |

Nothing client-facing, no secrets, no AI, no quota risk. If Actions is down, the ritual covers for it —
**every one of these has a manual twin inside its session.**

## The failure mode of semi-automation (name it before it happens)
A daemon runs whether you feel like it or not. A ritual does not. So the *only* real risk in this design is
that a bad week skips three sessions and you're back to freelancing from memory. Mitigations, built in:
- **Sessions are additive, never dependent.** Miss one and nothing breaks — work queues in `pipeline/tickets/`
  and the next `produce` just has a longer list. No "the job failed on Sunday so Monday is blind".
- **Fixed calendar entries named like meetings** (`PRODUCE — Smart Pursuit — 25 min`) with the ritual's
  trigger text in the description, so opening the session is copy-paste, not decision-making.
- **40-minute hard cap.** If a ritual can't finish in the window, the unfinished part becomes a ticket for
  tomorrow. Long sessions are how this design gets abandoned.
- **One phone alarm** (08:00 M/W/F) is the entire scheduling layer. Dignified? No. Effective? Yes.

## What this does *not* save you from
You still check the inbox 3× a day (no push notifications without a service), you still paste numbers, and
you still open a chat to make anything happen. Nothing here makes you optional — it makes you **the only
person with the expensive job**. Which was the plan from the beginning.

## Upgrade ladder (only when revenue says so, in this exact order)
1. **₹700/yr domain** — before any of this matters. (still the #1 spend)
2. **GitHub Pro $4/mo (~₹350)** — private Pages = a real client portal, 3,000 Actions min, protected branches. Unlocks the "always-on portal" promise. Buy when a client asks for one.
3. **A paid AI tier** — only if we want overnight content batches and auto-pulls running *while you sleep*. At 6+ clients, ~₹1,500/mo starts paying for itself. This is when the 14 daemons switch on.
4. **A video editor, 5 hrs/mo** (₹6–10k) — the one deliverable a chat session can't hand you while you're on a call.
5. **Zoho Books Standard ₹899** — when turnover crosses ₹25L or you need GST return filing.
   **Do not** add #3 before #1 and #2 exist. Automation on top of a bad pipeline is how you scale a mistake.
