# MASTER GUIDE — Digital Marketing Agency Skill System
### Why it exists, how to use it, when to use which skill, and a full worked example

---

## PART 1: WHY THIS REPOSITORY EXISTS

You are running an agency as **one operator + AI**, and taking on projects worth **₹10L+/month** in total client value. At that scale, three things typically go wrong for a solo/lean operator:

1. **Inconsistency** — quality depends on your mood/energy that day, not on a repeatable process.
2. **Invisible risk** — tracking errors, ad account bans, compliance gaps, and client-concentration risk quietly build up until they cause a crisis.
3. **Looking like everyone else** — without a deliberate system, your outputs (proposals, ads, reports) drift toward generic "agency-speak," which caps your pricing.

This repository is not a content library — it's an **operating system**. Every function of a real enterprise-grade agency (Sales → Onboarding → Strategy → Delivery → Ops → Finance → Retention → QA → Legal → Incident Response) is broken into a "skill": a self-contained playbook you feed into any AI chat, with a fixed input list and a fixed output shape, so the quality bar doesn't depend on remembering the right prompt from memory every time.

**The three lenses that make this "premium," not generic**, are used across almost every skill:
- **Viewer Lens** — would the real end-customer actually respond?
- **Competitor Lens** — would a rival agency's reviewer find an easy reason to poach this client?
- **Behavioral/Psychological Lens** — does it follow real decision-science principles (specificity, social proof, low friction), not just "look nice"?

---

## PART 2: HOW TO USE THIS SYSTEM (the loop)

Every skill file follows this shape: **Purpose → When to Trigger → Inputs Required → Execution Prompt → Deliverable Template → Premium & QA Notes.**

The standard way to run any skill:

1. **Open the skill file** that matches your current task (use the Master Reference Table in Part 3 to find it).
2. **Fill in the bracketed inputs** — keep a running "Client Brief" note per client so this takes seconds, not minutes.
3. **Paste the Execution Prompt into your AI chat** and run it.
4. **If it's a client-facing deliverable** (proposal, ad, report, content, landing page), run it a second time through `09-qa-testing/multi-perspective-qa-checklist.md` — as a **separate, fresh prompt/session**, not appended to the same conversation.
5. **You make the final call.** AI drafts, you decide. This is the part clients are actually paying premium for.

---

## PART 3: MASTER SKILL REFERENCE TABLE — What, When, Inputs, Time

This table covers all 34 skills. Use it to find the right skill fast. "Time" is realistic hands-on time for you to fill inputs, run the prompt, and review output — not including the actual work the output leads to (e.g., running an ad campaign for a month).

### 🟦 01 — Sales & Business Development

| Skill | When to Trigger | Key Inputs Needed | Time to Run |
|---|---|---|---|
| Lead Generation & Prospecting | Weekly, standing pipeline activity | Niche, ICP revenue range, geography, service focus | 20–30 min/week |
| Discovery Call & Diagnostic | Every qualified lead, before proposal | Prospect name/site/industry, call notes | 15 min prep + call time |
| Case Study & Portfolio Building | After any meaningful result; quarterly refresh | Client (or anonymized), situation, action, result, permission status | 20–30 min |
| Referral & Partnership Channel | Ongoing, from month 1 | Your services, ICP, list of complementary providers | 30 min setup, 15 min/month maintenance |
| Proposal, Pricing & Quoting | After discovery/audit is complete | Client name, industry, notes, budget range, services, timeline | 30–45 min |
| Negotiation & Closing | When client raises an objection/counter or goes silent | The objection text, deal value, your margin floor | 10–15 min |

### 🟦 02 — Client Onboarding

| Skill | When to Trigger | Key Inputs Needed | Time to Run |
|---|---|---|---|
| Onboarding, Contracts & Kickoff | Immediately after signature, before work starts | Client name, scope, retainer, start date, POC | 30–45 min |

### 🟦 03 — Strategy & Discovery

| Skill | When to Trigger | Key Inputs Needed | Time to Run |
|---|---|---|---|
| Brand, Market & Competitor Audit | Start of engagement + quarterly refresh | Client site, industry, 3–5 competitor URLs, analytics access | 60–90 min (incl. verification) |

### 🟦 04 — Service Delivery

| Skill | When to Trigger | Key Inputs Needed | Time to Run |
|---|---|---|---|
| SEO | Onboarding audit + monthly cycle | Website, target keywords, competitor URLs, GSC/GA data | 45–60 min |
| Paid Media (PPC) | Campaign setup + weekly/monthly optimization | Budget, platform, target CPA/ROAS, offer, past data | 45–60 min |
| Social Media Management | Monthly planning + daily/weekly execution | Platforms, brand voice, audience, monthly theme | 60 min/month + daily posting time |
| Content Marketing | Monthly planning, tied to SEO gaps | Client, industry, target topics, buyer-stage focus | 45–60 min |
| Email Marketing & Automation | Onboarding (core flows) + monthly campaigns | ESP/CRM platform, journey stages, offer, list size | 45–90 min |
| Web Design & Dev / CRO | New builds, landing pages, CRO audits | Page purpose, audience, conversion goal, analytics | 60–90 min |
| Branding & Creative Direction | Weak/inconsistent brand, or standalone offer | Client, industry, current assets, audit findings | 60 min |
| Analytics & Client Reporting | Monthly + dashboard setup at onboarding | Services delivered, key metrics, raw data exports | 30–45 min/month |
| Influencer & Creator Marketing | Awareness campaigns, client request | Product, audience, budget, platform focus | 45 min |
| Video Production & Short-Form | Monthly content/ad production | Platform, purpose, product/offer | 45 min |
| **Tracking & Measurement Infrastructure** | Day 1–3 of onboarding + monthly audit | Website, platforms in use, key conversion events | 60–90 min (one-time) + 15 min/month audit |

### 🟦 05 — Operations & Project Management

| Skill | When to Trigger | Key Inputs Needed | Time to Run |
|---|---|---|---|
| Project Management (SDLC cycle) | Continuously — the operating rhythm | Number of active clients, services per client, tool stack | 30 min setup, ongoing use |
| Team, Freelancer & Vendor Management | When nearing capacity or need a specialist | Task/role needed, budget, quality bar | 30–45 min per hire |
| Tool Stack & Tech Infrastructure | Agency setup + quarterly review | Services offered, tools budget, team size | 60 min (rare) |
| **Agency KPI / Business Health Dashboard** | Set up once, review monthly | Client list + retainers, capacity, pipeline | 45 min setup, 15 min/month |

### 🟦 06 — Finance & Payments

| Skill | When to Trigger | Key Inputs Needed | Time to Run |
|---|---|---|---|
| Pricing Models & Packaging | Agency setup + annual review | Services, target revenue, estimated costs | 45–60 min (rare) |
| Invoicing, Payments & India Compliance | Contract signing + monthly invoicing | Client, amount, due date, GST status | 20 min setup, 5 min/month per client |

### 🟦 07 — Retention & Growth

| Skill | When to Trigger | Key Inputs Needed | Time to Run |
|---|---|---|---|
| Client Retention, QBRs & Upsell | Quarterly + continuous monitoring | Client, quarter data, current scope, unmet needs | 60–90 min/quarter |
| **Difficult Client Conversations** | Whenever friction arises mid-engagement | Situation type, specific context | 15–20 min |

### 🟦 08 — Agency Positioning

| Skill | When to Trigger | Key Inputs Needed | Time to Run |
|---|---|---|---|
| Positioning, USP & Premium Brand | Agency setup + every 6–12 months | Strongest services, best results, target client profile | 90 min (rare) |

### 🟦 09 — QA & Testing

| Skill | When to Trigger | Key Inputs Needed | Time to Run |
|---|---|---|---|
| Multi-Perspective QA Checklist | **Every single client-facing deliverable, no exceptions** | The draft + its goal + audience | 15–20 min |
| **Pre-Launch Campaign Compliance Checklist** | Before every campaign launch/major edit | Platform, brief, creative, landing page, industry | 20–30 min |

### 🟦 10 — Legal & Compliance

| Skill | When to Trigger | Key Inputs Needed | Time to Run |
|---|---|---|---|
| Contracts, IP & Legal Basics | Every new contract; annual review | Client, scope, term, jurisdiction | 45 min + lawyer review |
| **Data Privacy / DPDP Compliance** | Onboarding + whenever new data touchpoint is added | Client, data types collected, tools handling data | 45 min + legal review |

### 🟦 11 — Incident Response

| Skill | When to Trigger | Key Inputs Needed | Time to Run |
|---|---|---|---|
| Incident Response Playbook | Immediately on: ban, downtime, breach, PR incident, performance collapse | Incident type, client, facts, time discovered | 15–20 min (used under pressure — keep it fast) |

**Bold** = added in v1.1 to close gaps identified after the initial build.

---

## PART 4: FULL WORKED EXAMPLE — "GlowNest Skincare"

To make this concrete, here is one hypothetical client run **start to finish**, showing exactly what I (acting as your AI) would be given as input, what gets run, roughly what comes back, and how long each step realistically takes. Use this as your template for every real client.

**Fictional client profile:** GlowNest — a D2C skincare brand, ₹8Cr annual revenue, wants to scale beyond Instagram-only marketing. Found via LinkedIn (buying signal: recently hired a "Growth Manager"). Target retainer: ₹2L/month (SEO + Paid Media + Social + Content).

---

### STAGE 0 — Pipeline: Lead Generation & Prospecting
**Skill used:** `01-sales-bd/lead-generation-prospecting.md`
**Time:** ~25 minutes

**Inputs I fill in:**
```
NICHE/VERTICAL: D2C skincare
ICP_REVENUE_RANGE: ₹5-15Cr annual revenue
GEOGRAPHY: India (metro-focused)
SERVICE_FOCUS: Full-funnel (SEO + Paid + Social + Content)
```
**What I run:** Paste the Execution Prompt from the skill file with these filled in.

**What comes back (summarized):** A buying-signal matrix (funding news, new hires in growth/marketing roles, negative reviews about site speed, etc.), 3 outreach message variants, and a weekly cadence (e.g., 10 companies/day researched, 5 outreach messages/day, 2-touch follow-up).

**What I actually do next:** I spot GlowNest's "Growth Manager" LinkedIn job post — a buying signal from the matrix. I send outreach variant #2 (referencing their recent hire specifically), lightly edited in my own voice.

---

### STAGE 1 — Discovery Call & Diagnostic
**Skill used:** `01-sales-bd/discovery-call-diagnostic.md`
**Time:** ~15 min prep + 30–45 min call

**Inputs I fill in:**
```
PROSPECT_COMPANY: GlowNest
PROSPECT_WEBSITE: glownest.example.com
PROSPECT_INDUSTRY: D2C Skincare
```
**What I run:** Execution Prompt → generates a 10-question discovery script + 3 diagnostic questions + a closing script that pitches a paid Strategic Audit instead of free work + 5 red-flag answers to watch for.

**What comes back (summarized):** Questions like "Who owns your customer data today, and can you segment by LTV?" and a closing line: *"Rather than quote you today, I'd like to run a paid Strategic Audit first so any recommendation is based on your actual numbers, not guesswork."*

**What I actually do:** Run the call using this script. GlowNest confirms budget authority sits with the founder (no red flags), and agrees to a ₹25,000 paid audit.

---

### STAGE 2 — Strategy: Brand, Market & Competitor Audit
**Skill used:** `03-strategy-discovery/brand-market-competitor-audit.md`
**Time:** ~75–90 minutes (including manual verification of competitor claims via web search)

**Inputs I fill in:**
```
CLIENT_NAME: GlowNest
CLIENT_WEBSITE: glownest.example.com
INDUSTRY: D2C Skincare
COMPETITOR_LIST: [3-5 real competitor brand websites]
```
**What I run:** Execution Prompt → Brand Positioning Snapshot, Competitor Teardown, White Space Analysis, 3 Customer Personas with decision moments, and one Recommended Strategic Angle.

**What comes back (summarized):** Finding — GlowNest's competitors all lead with "clean beauty" messaging (crowded space); White Space = nobody in this set is speaking to "skin barrier science" positioning, which matches GlowNest's actual formulation strength.

**What I actually do:** Verify 2-3 competitor claims independently (I don't take AI's competitor read at face value), then package this as the core deliverable of the paid audit — this document is what justifies premium pricing in the next stage.

---

### STAGE 3 — Proposal, Pricing & Quoting
**Skill used:** `01-sales-bd/proposal-pricing-quoting.md`
**Time:** ~40 minutes

**Inputs I fill in:**
```
CLIENT_NAME: GlowNest
INDUSTRY: D2C Skincare
[Paste discovery notes + audit findings from Stage 2]
BUDGET_RANGE: ₹1.5L-2.5L/month (inferred from company size)
SERVICES_PROPOSED: SEO + Paid Media + Social + Content
TIMELINE: 90-day initial engagement, then ongoing retainer
```
**What I run:** Execution Prompt → Situation Summary, Core Problem, 3-Phase 30/60/90 approach, 3-tier Investment table, Why Us, Next Step.

**What comes back (summarized):** Core Problem framed as: *"GlowNest is fighting for attention inside a crowded 'clean beauty' message when its real differentiator — skin barrier science — is currently invisible."* Three pricing tiers: ₹1.5L / ₹2L / ₹2.8L per month, each with a clear scope difference.

**What I actually do:** Run this through the QA gate (Stage 3.5 below) before sending.

---

### STAGE 3.5 — Mandatory QA Gate
**Skill used:** `09-qa-testing/multi-perspective-qa-checklist.md`
**Time:** ~15–20 minutes, run as a fresh/separate AI session

**Inputs I fill in:** The full proposal draft + stated goal ("get GlowNest to sign the ₹2L/month tier") + audience ("time-poor founder, has seen agency pitches before").

**What comes back:** Viewer Lens flags that the "Why Us" section sounds generic ("passionate about beauty brands") — rewritten to cite the specific skin-barrier-science insight instead. Competitor Lens flags the 90-day plan looks similar to a generic funnel — tightened to name the specific white-space angle in Phase 1. Behavioral Lens confirms the 3-tier pricing anchors well but flags the CTA has two competing asks — trimmed to one.

**What I actually do:** Send the revised proposal.

---

### STAGE 4 — Negotiation & Closing
**Skill used:** `01-sales-bd/negotiation-closing.md`
**Time:** ~10 minutes

**Inputs I fill in:**
```
OBJECTION_TEXT: "This is a bit above what we budgeted — can you do ₹1.5L for the full scope in the ₹2L tier?"
DEAL_VALUE: ₹2L/month
MARGIN_FLOOR: ₹1.7L/month
```
**What comes back:** A response script that trades scope for price rather than discounting outright: *"At ₹1.5L, I can deliver SEO + Social + Content in month one, and phase in Paid Media in month two once we've built the tracking foundation — full scope stays at ₹2L."*

**What I actually do:** Send this. GlowNest agrees to ₹2L/month, full scope, starting next month.

---

### STAGE 5 — Onboarding, Contracts & Kickoff
**Skill used:** `02-client-onboarding/onboarding-contracts-kickoff.md`
**Time:** ~40 minutes

**Inputs I fill in:**
```
CLIENT_NAME: GlowNest
SERVICES_SCOPE: SEO + Paid Media + Social + Content
MONTHLY_RETAINER: ₹2,00,000
START_DATE: 1st of next month
POINT_OF_CONTACT: Founder + Growth Manager
```
**What comes back:** 7-day onboarding checklist, kickoff call agenda, access request checklist (ad accounts, GA4, CMS, socials — via password manager, never email), and the "Working Together" one-pager (response times, reporting cadence, revision policy).

**What I actually do:** Send the contract via e-signature (see `10-legal-compliance/contracts-legal-compliance.md` for the MSA draft, reviewed by a lawyer once), collect 50% advance payment per the invoicing skill, and run the kickoff call.

---

### STAGE 6 — Tracking & Measurement Setup (before anything launches)
**Skill used:** `04-service-delivery/tracking-measurement-infrastructure.md`
**Time:** ~75 minutes (one-time)

**Inputs I fill in:**
```
CLIENT_WEBSITE: glownest.example.com
PLATFORMS_IN_USE: GA4, Meta Pixel, Google Ads, Shopify
KEY_CONVERSION_EVENTS: Purchase, Add to Cart, Email Signup
```
**What comes back:** Tracking audit checklist, UTM naming convention (e.g., `utm_source=meta_utm_medium=paid-social_utm_campaign=q1-launch`), conversion definition doc (Shopify = source of truth for revenue), and the discrepancy-explanation script for later.

**What I actually do:** Personally verify GA4 events fire correctly using GA4 DebugView and Meta Pixel Helper before any campaign goes live — this is the one step AI cannot verify for me.

---

### STAGE 7 — Service Delivery: Month 1 Planning
Run in this order, each ~45–60 minutes:

1. **SEO** (`04-service-delivery/seo.md`) — Inputs: website, target keywords ("skin barrier repair," "niacinamide serum India"), competitor URLs → Output: technical audit + 90-day roadmap.
2. **Paid Media** (`04-service-delivery/ppc-paid-media.md`) — Inputs: ₹60,000/month ad budget (carved from retainer), Meta + Google, target ROAS 3x → Output: campaign architecture, audience segments, ad creative briefs.
3. **Social Media Management** (`04-service-delivery/social-media-management.md`) — Inputs: Instagram + Pinterest, brand voice ("confident, science-backed, warm"), skin-barrier-science angle from the audit → Output: content pillars + 30-day calendar.
4. **Content Marketing** (`04-service-delivery/content-marketing.md`) — Inputs: target topics from SEO gap analysis → Output: content matrix + 3 full briefs.

**What I actually do:** Each output above goes through the same QA gate (Stage 3.5 pattern) before scheduling/publishing — particularly ad creative and any claims about skincare efficacy, which also gets checked for compliance.

---

### STAGE 8 — Pre-Launch Campaign Compliance Check
**Skill used:** `09-qa-testing/pre-launch-campaign-compliance-checklist.md`
**Time:** ~25 minutes, before the Paid Media campaign goes live

**Inputs I fill in:** Platform (Meta), the ad creative and copy, landing page URL, industry (skincare — a regulated-adjacent category with restrictions on before/after claims).

**What comes back:** Flags one ad variant's "clears acne in 7 days" claim as a likely policy violation and a legal overreach for a cosmetic (not drug) product — rewritten to "supports visibly clearer skin with consistent use." Confirms landing page matches ad offer. Confirms pixel firing correctly (cross-checked against Stage 6 tracking setup).

**What I actually do:** Fix the flagged ad copy before launch — this single check likely prevents a disapproval or, worse, an FTC/ASCI-style compliance issue.

---

### STAGE 9 — Monthly Reporting
**Skill used:** `04-service-delivery/analytics-reporting.md`
**Time:** ~40 minutes, end of Month 1

**Inputs I fill in:** Services delivered, key metrics (organic traffic, ROAS, follower growth, leads), raw data pulled from GA4/Ads/Shopify.

**What comes back:** Executive summary leading with the most important number (e.g., "Paid Media delivered a 2.8x ROAS in month one against a 3x target — on track, driven by strong performance in the retargeting segment"), channel breakdown with "so what" insights, what was changed and why, next month's focus, and one proactively-flagged risk (e.g., rising CPCs in the category).

**What I actually do:** Verify every number against the live platforms before sending — never send an AI-drafted number unverified.

---

### STAGE 10 — Quarterly: Retention & Upsell
**Skill used:** `07-retention-growth/client-retention-upsell-qbr.md`
**Time:** ~75 minutes, end of Quarter 1

**Inputs I fill in:** One quarter of performance data, current scope, an unmet need observed (e.g., GlowNest's email list is growing but unused).

**What comes back:** QBR deck outline (honest recap of wins + misses first), an upsell opportunity framed as solving a problem ("Your email list has tripled and isn't being monetized — this is the moment to add Email Marketing & Automation"), and 5 early churn-risk warning signs to monitor going forward.

**What I actually do:** Present wins and misses honestly before pitching the upsell — never in the same breath as bad news.

---

### STAGE 11 — Ongoing: Operations & Business Health
Run monthly, in the background, regardless of any single client's cycle:

- `05-operations-pm/project-management-sdlc.md` — keeps GlowNest's monthly cycle from colliding with your other clients' cycles.
- `05-operations-pm/agency-kpi-dashboard.md` — checks GlowNest isn't becoming more than ~30% of total revenue (concentration risk) as the relationship grows.
- `06-finance-payments/invoicing-payments-india.md` — monthly invoice generation and payment tracking.

**Situational skills** (used only if/when triggered, not part of the standard monthly loop): `11-incident-response` (if something breaks), `07-retention-growth/difficult-client-conversations.md` (if GlowNest pushes back on a missed target or asks for extra scope for free), `10-legal-compliance/data-privacy-dpdp-compliance.md` (triggered here because GlowNest collects customer emails via popups — this should actually be run back in Stage 5/6, not skipped).

---

## PART 5: TIME BUDGET — What Running This System Actually Costs You

| Phase | One-Time (per new client) | Recurring (per month, per client) |
|---|---|---|
| Sales → Close (Stages 0–4) | ~2–2.5 hours total | — |
| Onboarding + Tracking Setup (Stages 5–6) | ~2 hours total | — |
| Service Delivery Planning (Stage 7) | — | ~3–4 hours/month |
| QA Gates (Stages 3.5 & 8, run repeatedly) | — | ~1–1.5 hours/month |
| Reporting (Stage 9) | — | ~40 min/month |
| Retention/QBR (Stage 10) | — | ~75 min/quarter (~25 min/month averaged) |
| Ops/Finance (Stage 11) | — | ~30 min/month |

**Realistic total: ~6–7 hours/month of direct hands-on time per ₹2L/month client** once onboarded (excluding actual campaign execution/content production time, which varies by scope and what you delegate to freelancers via `05-operations-pm/team-freelancer-vendor-management.md`). This is what makes a **3–5 client, ₹10L/month portfolio** realistic for one operator using this system — the AI does the drafting and structuring; you spend your hours on judgment, verification, and the client relationship.

---

## PART 6: WHAT ELSE COULD BE ADDED (if you want to keep extending this)

The core lifecycle is now covered end to end. If you want to go further, the next layer would be **industry-specific playbook variants** (e.g., a D2C e-commerce version vs. a B2B SaaS version of the SEO/PPC/Content skills, since the buyer psychology and channels differ meaningfully) — but that's an extension to build once you have 2-3 real clients and can see which industry you're actually specializing in, per the Positioning skill's advice to niche down rather than stay generic.

