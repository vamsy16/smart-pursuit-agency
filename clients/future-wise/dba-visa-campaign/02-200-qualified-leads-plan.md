# Future Wise — 200 Qualified Leads/Month: The System

**Built with:** `04-service-delivery/ppc-paid-media.md` + `01-sales-bd/lead-generation-prospecting.md`
**Reality check first:** 200 *highly-qualified* leads is a ~$700k–$1.2M/year tuition pipeline. It is achievable — but only if "qualified" is defined in writing and enforced weekly. A campaign that promises 200 leads and delivers 200 unqualified ones kills the account in month two.

---

## 1. Define "Highly Qualified" — In Writing, Before Spend Starts

A lead counts toward the 200 **only** if all five are true. Everything else is a raw lead, tracked separately.

| # | Qualifier | How it's captured |
|---|---|---|
| 1 | Holds a **Master's degree** (DBA admission requirement at all four universities) | Form question |
| 2 | Currently on **F-1 / OPT / STEM-OPT / H-1B** — or H-1B not selected this cycle | Form question |
| 3 | Intends to start within the **next 2 intakes** (≤6 months) | Form question |
| 4 | **Funding confirmed or in progress** (~$16k–$20k/yr tuition range, sponsor or loan acceptable) | Advisor call |
| 5 | **Reachable** — valid WhatsApp number, responds within 48 hours | Advisor call |

**Target qualified rate: 25–30% of raw leads.** If it drops below 20%, the campaign is buying the wrong people — fix targeting before increasing budget.

---

## 2. Funnel Math (the numbers you're actually buying)

| Stage | Rate | Monthly volume |
|---|---|---|
| Impressions | — | 430,000 |
| CPM | $28 | $12,000 spend *(mid-case)* |
| Outbound click-through rate | 1.2% | 5,150 clicks |
| Click → lead (form/quiz complete) | 15% | 770 raw leads |
| Lead → qualified (5-point check) | 26% | **200 qualified leads** |
| Qualified → booked call | 45% | 90 calls |
| Booked → showed | 60% | 54 calls |
| Showed → application filed | 45% | 24 applications |
| Application → enrolled | 55% | **~13 enrollments/month** |

**Cost per qualified lead: ~$60–$85.** Plan the budget at **$12,000–$18,000/month**, and treat $70 as your working assumption until week two proves it.

**Sensitivity — what actually moves the number:**

| Lever | Change | Effect |
|---|---|---|
| Hook rate | 20% → 30% | ~50% more reach at same CPM (cheapest win, purely creative) |
| LP conversion | 15% → 22% | +47% raw leads, **no extra spend** |
| Qualified rate | 26% → 35% | +35% qualified leads (targeting + form tightening) |

Creative and landing page are ~2–3x cheaper levers than budget. Spend there first.

**Seasonality:** H-1B lottery results (Feb–Apr) and OPT end-dates (May–Aug) are your peaks — plan 30% higher budget in those windows and shift to retargeting in the troughs. Intake deadlines (Jan / May / Aug / Oct windows, varies by university) give you a legitimate monthly urgency beat.

---

## 3. Channel Architecture

| Channel | Budget share | Role | Notes |
|---|---|---|---|
| **Meta — Reels + Feed (cold)** | 55% | Volume engine | Broad + interest layered; let the algorithm find them. 6 new hooks/week. |
| **Google Search — program intent** | 25% | Highest intent | Keywords: *DBA for working professionals, DBA admission requirements, day 1 CPT DBA, Westcliff DBA, DBA IT management*. **Never bid on "visa", "H-1B", or "CPT approval" service terms** — see `03-compliance-guardrails.md` §3. |
| **Meta — Retargeting** | 10% | Cheapest qualified lead | Video 50%+ viewers, LP visitors, IG engagers, DM openers. Run the 10s cutdown here. |
| **LinkedIn** | 10% | H-1B-not-selected professionals | Job titles: Software Engineer, Data Analyst, Product Manager, Consultant + "Open to work" signals. Expensive CPL, high quality — scale only if cost per *qualified* lead stays under $120. |
| **YouTube Shorts / TikTok** | Test | Bonus reach | Same masters, zero extra production cost. |

### Audience targeting (Meta)
- **Cold core:** 25–45, US, interests *immigration law / H-1B / OPT / F-1 visa / higher education / Indian diaspora interests*, plus expat/desi community interest layers.
- **Exclusions:** anyone already in your CRM (upload list — critical, or you'll pay for your own existing leads).
- **Do not** use Special Ad Category Housing/Employment/Credit — this is an education offer. But avoid any creative that reads as a *job* ad.
- **Lookalikes:** 1% of "qualified + application filed", not 1% of raw leads. Build from the outcome, not the volume.

---

## 4. The Capture Engine — "No Dead-End Views"

You asked for every viewer to become a lead. Here is the honest, working version of that: **for every viewer who shows the slightest interest, there must be zero steps between the impulse and the lead.**

| Touchpoint | Mechanism | Why |
|---|---|---|
| **Comment "DBA"** | ManyChat DM automation → 3-question qualifier → WhatsApp | Comment-to-DM converts **5–10x better** than "link in bio" because the viewer does nothing but type one word |
| **Keyword on screen for the full video** | Persistent bottom bar | Even viewers who drop at 0:08 know what to do |
| **Link in bio** | Direct to the 40-second form | Second path, never the only path |
| **Retargeting pixel** | Everyone who watched 50%+ | You paid for them once — close them with the 10s cutdown |
| **WhatsApp broadcast** | Hinglish/Telugu variants | Where this audience actually replies |
| **DM keyword variants** | "DBA", "CPT", "INFO", "USA" all trigger the same flow | Never make them guess the magic word |

### The 40-second form (this is the qualification gate — do not shorten below 5 fields)
1. Name + **WhatsApp number** (primary contact field — not email)
2. Current status: *F-1 / OPT / STEM OPT / H-1B / H-1B not selected / Outside US / Other*
3. Highest degree: *Master's / Bachelor's / PhD / Other*
4. Target start: *Next intake / 2 intakes / 6–12 months / Just exploring*
5. How will you fund it: *Self / Family sponsor / Loan / Employer / Need guidance*

**Auto-tagging and routing:**
- Master's + next 2 intakes + funding route → **SQL — advisor calls within 5 minutes**
- Bachelor's only → **Nurture** (they may qualify for a master's later — do not discard, do not count)
- "Just exploring" → **Long nurture** (monthly intake newsletter)

> **Speed to lead is the single biggest lever in this entire system.** The first responder wins the enrollment. A 5-minute callback converts several times better than a next-day one. Staff for it or the campaign underdelivers on paper despite good leads.

---

## 5. Follow-Up Sequence — WhatsApp, 5 Touches in 7 Days

| Timing | Message | Purpose |
|---|---|---|
| **0–2 min** | "Thanks {{name}} — here's the DBA compliance checklist [PDF] and your next intake window. Want me to check your profile against the three questions? Yes / No" | Deliver instantly, ask a binary question (low friction reply) |
| **+20 min** | A real, verifiable student case: *"{{Case study: OPT ending in Nov, SEVIS transfer completed in 3 weeks}}"* | Social proof at the moment of doubt |
| **Day 1** | "Which track are you leaning toward — IT or Management? Both are running next intake." | Segmentation + commitment |
| **Day 2** | "Next intake closes {{date}}. Tuition, residency schedule and the funding options are on page 2 of the checklist." | Legitimate deadline |
| **Day 5** | "I'm closing my {{day}} slots — want the 15-minute compliance review? Yes / No" | Takeaway close |

**Rules:** every message ends in a question or a link. Never send a wall of text. Never send the disclaimer-free version — every PDF carries the "not immigration legal advice" line (see `03-compliance-guardrails.md`).

---

## 6. Creative Testing Plan

| Variable | Test first | Valid read needs | Kill criteria |
|---|---|---|---|
| **Hook** | 8 hooks from the bank, equal spend | 1,500 impressions each | Hook rate <20% → cut |
| **Format** | Talking head vs. screen-capture-memo vs. text-only | 3,000 impressions each | CTR <0.8% → cut |
| **CTA** | "Comment DBA" vs "DM me" vs "Link in bio" | 50 raw leads each | Highest cost per *qualified* lead loses |
| **Offer** | Checklist vs. roadmap call vs. intake deadline | 100 raw leads each | Decide on qualified rate, not lead volume |
| **Language** | English vs. Hinglish vs. Telugu | 100 raw leads each | Often the biggest surprise winner — run it |

Test one variable at a time. One variable, one week, one decision.

---

## 7. Weekly Dashboard (report these 10 numbers, in this order)

| # | Metric | Why it's on the list |
|---|---|---|
| 1 | Spend | Context |
| 2 | Hook rate (3s views / impressions) | Leading indicator — moves before everything else |
| 3 | CTR | Creative/audience fit |
| 4 | Raw leads | Volume |
| 5 | **Qualified leads** | **The only number that counts toward 200** |
| 6 | Qualified rate % | Targeting quality |
| 7 | Cost per qualified lead | Efficiency |
| 8 | Calls booked / showed | Sales follow-through |
| 9 | Applications filed | Real revenue predictor |
| 10 | Cost per application | The true unit economics |

**Weekly decision rule:** if cost per qualified lead rises two weeks in a row, pause the worst-performing ad set and reallocate to retargeting before touching the budget. If qualified rate falls while CPL stays flat, the targeting is drifting — tighten the form before you blame the creative.

---

## 8. What To Fix First (prioritised, in order)

1. **WhatsApp number on every form** — email-only capture loses this audience.
2. **5-minute callback SLA** — the highest-ROI operational change available.
3. **Comment-to-DM automation live before the first rupee of spend.**
4. **Hook testing cadence: 6 new hooks per week.** Creative fatigue in this niche is fast — expect 7–10 days of life per hook.
5. **Track qualified lead, not lead.** If the dashboard only reports raw leads, the whole system optimises toward junk.
6. **CRM exclusion list** uploaded before every campaign launch.

---

*Benchmarks above are planning assumptions, not guarantees — validate against your own account data in week 1–2 and replace them with your real numbers by week 3. Do not present these as industry facts to a client or partner until they're backed by your own campaign data.*
