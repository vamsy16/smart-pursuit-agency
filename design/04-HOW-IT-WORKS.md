# 04 · HOW IT WORKS — the minute-by-minute operating manual

The blueprint (`01`) says what is built. This says **what actually happens**, on a Tuesday, with a real client.
Read this once and you'll know what every day of the agency looks like — including the parts nobody
tells you about in "AI agency" content: the waiting, the glance-and-approve, the money chases.

---

## PART 0 · Day minus-7 — the one-time wiring (about 6 hours, spread over a week)

Nothing works until these exist. Do them in this order; each is a one-time cost.

| # | Step | Tool | Time | What it unlocks |
|---|---|---|---|---|
| 1 | Buy domain | Namecheap/Porkbun/Cloudflare Registrar | 15 min | Everything premium. `.agency`, `.in`, `.co` — ₹500–900 |
| 2 | Move DNS to Cloudflare (free) | Cloudflare | 20 min | Email routing, Pages deploy, SSL, WAF — all free, all from one place |
| 3 | Email: `vamsi@`, `hello@`, `accounts@`, `proposals@` | Cloudflare Email Routing → Gmail | 30 min | Real-domain identity; inbound free & unlimited |
| 4 | Sending as your domain | SMTP2Go free (1,000/mo) or Brevo (300/day) + DKIM | 30 min | No "via gmail.com", no spam-folder proposals |
| 5 | This repo → private GitHub, Actions enabled | GitHub free | 20 min | The brain + free compute (2,000 min/mo) |
| 6 | Secrets + quota ledger | GitHub Settings → Secrets, `os/stack/limits.yml` | 30 min | Agents can use APIs without ever seeing a password |
| 7 | AI keys (free tier) | Google AI Studio (Gemini Flash) | 15 min | Bulk content; D07 uses ≤600 requests/day, inside the 1,500 cap |
| 8 | Intake + request forms | Tally (free, Indian, no branding) | 45 min | Two forms: *lead intake* (9 fields) and *client request* (4 fields) → webhook/file |
| 9 | Calendar + calls | Google Calendar + Google Meet | 15 min | Two 30-min slots/day, 11:00 & 16:00 IST, published on the site |
| 10 | Zoho Books free + UPI/Razorpay link | Zoho, Razorpay | 60 min | GST-ready invoices, payment links, collection tracking |
| 11 | Analytics for your own site | GA4 + Search Console + Looker Studio | 45 min | You must have your own numbers before you audit someone else's |
| 12 | One phone-alert channel | Telegram "Saved Messages" bot or a Discord channel of one | 20 min | Every daemon posts ✅/⚠️/❌ in one line |
| 13 | Book the CA + lawyer slot | phone call | 15 min | One-time ₹8–15k for MSA+SOW review; ask the CA about GST/export invoicing in the same call |
| 14 | *(optional, week 9)* Oracle free VM → n8n | Oracle Always Free | 2–3 h | Only if webhooks/chatbots are needed. **Do not start here.** GitHub Actions covers weeks 1–8 |

**Day 1 reality check:** none of this requires code from you. Steps 5–7 involve an agent writing the workflows;
you paste keys and approve commits. If a step takes you more than an hour of fighting, note it in
`memory/QUESTIONS.md` and move on — the system runs at 60% wiring.

---

## PART 1 · One Tuesday, hour by hour

Scenario: **6 active clients**, 1 proposal outstanding, 2 leads in the pipe. This is the actual loop.

### 05:00 · D06 metric-pull *(you are asleep)*
Pulls GA4 + Search Console + Ads for each client. Writes `clients/<slug>/04-analytics/2026-09-09_pull.md`
with a provenance line (source · date range · method). Flags anything moving ±20%.
→ commit `D06: metric pull 6 clients · 1 anomaly (apex-realty paid -24%)`

### 05:20 · D02 lead-sweep *(pass 1)*
New form entries are read, scored by Engine 00 (`scoring.yml`), and each gets a **drafted reply in the outbox**.
→ `pipeline/leads.yml` gains 3 rows; `os/clients/…/10-outbox/` is where replies sit. Nothing sent.

### 07:30 · D01 morning-brief → your phone
Four lines, nothing else:

```
✅ D01 · Tue 09 Sep · 6 clients · 41 items produced overnight, 6 gated ≥90
⚠️ apex-realty: paid search −24% WoW · CPA ₹2,900 vs ₹2,200 target · hypothesis: 2 expired creatives
🔴 L-2026-048 scored 84 (Tier A, ₹2.5L/mo fit) · real estate · asked for "just Instagram" → needs reframing
📌 Today: 1) send L-048 reply 2) 11:00 call Nova EdTech 3) glance at 6 gated items 4) invoice 3 due
   Estimated time: 2 h 05 m
```

**You do not open a dashboard in the morning.** The brief comes to you. That ordering is the whole design:
the machine reads state, you read a summary.

### 08:00–08:40 · Window 1 — Pipeline (40 min, you)
- Open `10-outbox/` → 2 drafted replies for L-048, one for a warm referral. Edit the *first sentence* of
  L-048's reply (it needs to address the "just Instagram" thing), send both. **8 min.**
- D02 already drafted today's 40 outbound notes from PB-19 (researched lists + one specific observation
  per prospect). You scroll, delete 6 that look off-target, send 34. **22 min.**
- L-048 replies while you're still there → D02's rule says: propose two call slots in the same message.
  You paste `11:00 IST` and `16:00 IST`. Call booked. **3 min.**
- Read the two `⚠️` flags. Move apex-realty to today's 16:00 client window. **7 min.**

Total: 40 minutes. No "marketing" happened. **A pipeline got built.**

### 08:40–09:00 · Triage of overnight output (20 min)
Six deliverables sit at `needs-review`, each with a gate score and a 3-line summary:

```
clients/nova-edtech/03-delivery/content/2026-09-09_article_study-abroad-consult_v01.md
score 93 · truth 25 · spec 18 · fit 15 · action 15 · craft 10 · risk 10
flag: "CPC figures cited from client CSV (Aug) — not verified against Ads UI"
→ approve / revise / reject
```
You read **only the summary and the flag**. Approve 5, revise 1 (the flag was right — the number needs
verification). Revise = you type one line: `cross-check CPC against Aug Ads export, then re-score`.
The agent does it in ~4 min and re-scores. **You never edit prose. You judge and dispatch.**

### 11:00–11:45 · The call (Nova EdTech, month 4 MBR — 45 min)
You open **one file**, generated by R1 last night: the prep brief.
```
clients/nova-edtech/12-reviews/2026-09_prep-mbr.md   (1 page)
promise → result → gap → why → bet for Oct → 2 asks → money
their number that matters: ₹3,100 → ₹2,480 blended CPL
unspoken risk: their new marketing manager has stopped replying to digests (amber, D04)
```
The call: you confirm the gap, get the manager's authority clarified (the real churn risk), agree one new
channel, and let them talk for 15 minutes. **You do not present slides — the portal already did.**

### 11:45–12:00 · Post-call capture (15 min — the most important 15 in the day)
You dictate 90 seconds into your phone. R8 turns it into:
- `06-comms/2026-09-09_mbr.md` (decisions + who-does-what-by-when)
- 2 tickets in `05-tasks/` (one for the new channel setup, one for the manager intro)
- `MANIFEST.yml` health: amber → green
- 1 change-request line if scope grew
If this step gets skipped, everything downstream goes blind. So: it is 15 minutes, scheduled, and it is
the only place where "AI remembers everything" is *actually* true — because you wrote it into a file.

### 13:00–14:00 · Off (lunch, gym, family). The machine is mid-batch.

### 14:00–14:20 · Window 2 — Approvals (20 min)
- Bulk-approve today's ship list: one message per client, 12 items at once, "reply yes / 1 / 2".
- D09 rebuilt each client's report file on commit; the week's calendar is already inside it.
- Two publishes were scheduled automatically for 18:00 (approved content only).

### 14:20–14:45 · Money (25 min)
D10 prepared: 3 invoices (₹4.5L due), 2 reminder drafts (day+2, warm), 1 pause notice (day+19 — the
client has gone quiet; the MSA clause handles it so you don't have to be the bad guy). You send all six
in four minutes and mark `collected: ₹1.5L` when one lands. Ledger file updates; `STATEBOARD.md` money block
rewrites itself.

### 16:00–16:40 · Client time — the real kind
The apex-realty flag from the morning. You open the anomaly note: two creatives expired, one ad set
burning at ₹2,900 CPA. R3 had already drafted the fix (pause one, refresh two, move ₹18k to the winner,
stop rule written). This is a **decision, not a task**: you approve the pause, adjust the refresh angle
(the owner prefers project photos over render — you know this from `00-account/`, the AI doesn't), send.
Then you make a call you'd been meaning to make: 15 minutes to a referral source. No deliverable, all revenue.

### 17:00–17:30 · Window 3 — Learn (30 min, Mon/Wed/Fri only)
D12 posts the week so far. You do one of three: patch a playbook, extend a daemon to one more client, or
turn something you did manually today into a ticket for tomorrow's build. Today: "expired creatives should
have been caught 5 days ago" → PB-09 gets a new line: *check creative expiry on every Monday run*. One
sentence, committed, logged to `lessons.md`. That's how the same mistake stops being possible.

### 17:30 · Done.
Nothing is "in your head". Every client has a `next_action` with a date in `leads.yml`/`MANIFEST.yml`.
Tomorrow's D01 already knows what to tell you.

**Time actually worked: 2 h 06 m. Client-facing time: 1 h 40 m.**

---

## PART 2 · What happens to a lead, step by step

```
08:04 a form lands  →  08:05 file in pipeline/leads.yml  →  08:05 scored 84 (Tier A)
→  08:06 drafted reply in 10-outbox  →  08:12 YOU send  →  08:20 they pick a slot
→  auto: calendar hold + PB-03 prep brief generated  →  11:00 call  →  notes → 5 files
→  72h: 8-page proposal with 3 price options  →  you glance, send
→  T+1 "one thing I forgot" · T+3 90-second portal walkthrough · T+7 a free fix · T+12 "closing the file?"
→  signed + advance  →  07:00 next morning: folder scaffolded, kickoff ticket, portal live, 6 review dates booked
```
Response speed is the single biggest lever and it costs you nothing here, because the drafting is done
before you wake up. **Median: you touch a lead for 6 minutes; it becomes a ₹1.5L/mo conversation.**

## PART 3 · What happens to a ₹10L project

| Day | Who | What | Your minutes |
|---|---|---|---|
| 0 | you | Advance received → `status: WON`, folder scaffold, ledger | 20 |
| 1–3 | R1/R2/R6 | Audit sprint: 25-page findings, tracking review, competitor scan, funnel teardown | 15 (skim) |
| 4 | R1 + you | **Findings & 90-day plan** deck — you add opinion, cut fluff | 45 |
| 5 | R3/R6 | Tracking verified end-to-end (a test conversion, not "configured") | 10 |
| 7 | R2–R5 | First quick win shipped + reported in writing | 10 |
| 8–90 | line | Weekly quota: content, creatives, optimisations, digests | 15/week |
| 30/60/90 | R6 | Monthly review = a decision meeting, never a status update | 45 each |
| 90 | R9 | Case study drafted from their own files, anonymised, consent asked | 20 |

The client experiences: **something arriving every single week, and a reason to stay every month.** That's
what ₹10L buys — not talent, *relentless visible motion*.

## PART 4 · Where clients fit into this (they never see a chat log)

| Client sees | Never sees |
|---|---|
| Their portal (updated on every commit) | The repo, other clients, your pipeline |
| Weekly digest, Fri 16:00, 400 words | Gate scores, tickets, internal notes |
| A request form with "4 fields, 24h turnaround" | How it gets made |
| Invoices with UPI link + payment terms | Bench rates, your margins |
| You, on a call, knowing their numbers | That a machine did 90% of the reading |

**The one-line story you tell clients:** "We run a documented operating system instead of a big team —
that's why you get department output at a fraction of the cost, and everything we do is in writing." It's
true, it's premium, and it makes your *smallness* the reason to hire you. Never say "it's just me and AI"
in a way that sounds like a discount.

## PART 5 · How to operate this when you're on your phone

Replies you can send from a phone: "approved", "revise: <one line>", "yes / 2 / 5", the four money notes.
Anything needing judgement (bad news, price, scope concession, a complaint) is a **call or a written
message you type yourself**. There is no app to open — the outbox lands in your inbox, and the state is
one file you can read in 40 seconds.

If you're on a trip and can only do 15 minutes: approve the digests (D08 keeps clients calm), send the
one lead reply that matters, and let everything else queue. The system is designed to wait for you without
getting lost — that's what "the repo is the database" buys you.

## PART 6 · When it breaks (it will)

| Failure | What you see | What you do | Cost |
|---|---|---|---|
| A daemon errors | `❌ D07 · quota 429 · parked 2 items` | Nothing today; read the one-line fix. If 2 days: run the playbook by hand | ~0 |
| A free tier dies | stack row stops working | Fall back to the row in `FREE-STACK.md`; note it for D13 | <1 h, once |
| An agent goes off-rails | gate score <75, or a client-flag you missed | Don't fix the output — fix the playbook line that allowed it | 10 min, permanent |
| A client goes quiet | D04 amber: no requests 2 weeks, approvals slow | Send a *new insight*, not a reassurance email | 20 min |
| Tracking breaks mid-spend | anomaly + `⚠️ revenue attribution missing` | Pause spend (L1 allowed: pause-and-notify), fix, report | hours, not days |
| You get sick | — | Everything is a file: a bench partner or a friend with repo read access can keep digests and publishes running | the system keeps breathing |

**Rule: every incident ends in a document, not an effort.** That's the compounding trick — after 40
incidents, you have 40 rules that make the same 40 failures impossible, and no competitor can copy them
because they'd need your 40 incidents.

## PART 7 · What "automatic" is not

- ❌ Not: bots that DM clients, auto-posted AI slop, a chatbot that promises things, ad budgets that move
  themselves, or a system that runs without ever showing you anything. Those are how ₹10L accounts become
  ₹10L refund disputes.
- ✅ Yes: 100% of reading, drafting, calculating, tracking, filing, scheduling, reminding and scoring.
- ✅ Yes: 100% of *proposing* anything involving money or promises.
- ✅ No: nothing leaves the building unsent-by-you. Ever.

Expectation, stated plainly: **the machine will make you faster and more consistent than any one-person
shop you know. It will not make you unnecessary — the day it could, it could also be replaced by the
client's cousin with a laptop.**

## PART 8 · Measuring whether it's actually working (weekly, D12, 5 numbers)

1. **Calls booked** ≥5/week — if this is weak, Engine 01 is wrong; nothing else matters.
2. **Time-to-proposal** ≤72h and **first-response** ≤5 min.
3. **Gate pass rate** on first submission ≥80% (below that, your playbooks are vague — fix the doc).
4. **Digests on time** 100%; **client requests inside SLA** ≥95%.
5. **Your operating time** ≤2h30/day. Over for a week = a missing automation. Under an hour with an empty
   calendar = a missing rail. The number is a thermometer for the design, not for your worth.

---

### The short version
You wake up to a brief. You answer people, judge work, take calls, sign money. The machine researches,
writes, tracks, publishes, invoices and remembers. Every mistake becomes a rule. Every rule makes tomorrow
cheaper. In 12 months you're not running a freelance habit with a logo — you're running a company whose
process is the product.
