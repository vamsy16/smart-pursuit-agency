# Skills Traceability Audit — Was This Written Through the Repo's Skills?

**Audit date:** 12 Sep 2026 · **Auditor:** self-audit against `00-how-to-use/USAGE-GUIDE.md` §2–3 and each skill's Deliverable Template
**Purpose:** Answer honestly whether this campaign pack was produced *through* the repo's skill system, or written freehand and labelled with skill names afterwards.

---

## 1. Verdict Up Front

**Partially. The video, paid-media and QA skills were run faithfully. The content, social, email, branding, CRO, tracking and privacy skills were not run at all.**

For the *video scripts*: yes, genuinely run through `04-service-delivery/video-production.md` — which is why the output has a hook bank, three full scripts, an editing brief and a repurposing plan in that exact structure. That's an auditable shape, not a vibe.

But `video-production.md` is a **short-form video skill, not the content-marketing skill**. It imposes no buyer-stage mapping and no "the ONE belief this piece must change" discipline. So the honest answer to *"are you writing through content writing skills?"* is **no — not for the content layer.**

---

## 2. Skill-by-Skill Scorecard

| Skill | Status | Evidence | Gap |
|---|---|---|---|
| `04-service-delivery/video-production.md` | ✅ **Run** | Hook Bank (8) → 3 scripts w/ shot lists → Editing Brief → Repurposing Plan — matches Deliverable Template exactly | None material |
| `09-qa-testing/multi-perspective-qa-checklist.md` | ✅ **Run** | Reviewer 1/2/3 → final revised (file `03` §8); re-run as a dedicated pass in file `04` | Guide says run as a *separate session*; I ran it in the same context — close, not exact |
| `09-qa-testing/pre-launch-campaign-compliance-checklist.md` | ✅ **Run** | Policy Risk Scan → LP Consistency → Account Health → Launch-Day → 2-Hour Rollback | None material |
| `04-service-delivery/ppc-paid-media.md` | ⚠️ **Partial** | Campaign architecture, audiences, testing plan, dashboard | **Missing:** audience segments with *relative size + funnel role*; **2 creative angles per segment**; a "so what" narrative line per reported metric |
| `04-service-delivery/content-marketing.md` | ❌ **Not run** | — | **The whole content layer**: no Content Matrix, no buyer-stage mapping, no "ONE belief" briefs, no 150-word opening. *(Addressed now in `07-content-program.md`)* |
| `04-service-delivery/branding-creative.md` | ❌ **Not run** | — | Viewpoint feedback's #1 issue was *"what is Future Wise?"* — a positioning failure. I patched a script line instead of fixing the root cause |
| `04-service-delivery/social-media-management.md` | ❌ **Not run** | — | No content pillars, no 30-day calendar, and **no Community Management SOP** — no response-time targets, no escalation triggers. Real PR exposure in a category where a student can publicly claim a broken promise |
| `04-service-delivery/email-marketing-automation.md` | ❌ **Not run** | — | WhatsApp sequence hand-written in file `02`, but not in template form; no email flows, no segmentation, no deliverability checklist. The "just exploring" segment I routed to "long nurture" has **nothing to nurture them with** |
| `04-service-delivery/web-design-dev.md` (CRO) | ❌ **Not run** | — | LP requirements asserted in `03` §5, but no CRO pass. The landing page is where the lead is actually captured, and I claimed 90%+ mobile traffic without testing it |
| `04-service-delivery/tracking-measurement-infrastructure.md` | ❌ **Not run** | — | The 200-lead math depends entirely on conversion events firing correctly. I gave a launch-checklist line, not a tracking plan |
| `10-legal-compliance/data-privacy-dpdp-compliance.md` | ❌ **Not run** | — | **Meaningful omission.** I designed a form collecting phone number, visa status and degree history from India-linked users. DPDP Act obligations attach to that. Never addressed |
| `03-strategy-discovery/brand-market-competitor-audit.md` | ❌ **Not run** | — | Prerequisite input for the branding skill. Competitor claims in my copy are asserted, not audited |

---

## 3. Two Wrong Citations I Need To Own

### ❌ `01-sales-bd/lead-generation-prospecting.md`
I listed this as a basis for the 200-lead plan. **It's the wrong skill.** That file is for the *agency finding its own retainer clients* — buying signals, cold outreach to prospective clients, weekly prospecting cadence for ₹1.5L–₹5L/month retainers. It has nothing to do with qualifying a client's student leads. I borrowed its word "qualification" and attached the filename. The **output** stands on its own reasoning, but **the attribution was wrong.**

### ❌ `10-legal-compliance/contracts-legal-compliance.md`
I cited this in the README for "disclaimers and claim boundaries." **I never opened the file** — and it doesn't cover that. It's about MSAs, IP ownership, ad-account ownership and non-solicitation. Advertising claim boundaries aren't in it. A filename in a README that doesn't support the claim is exactly the kind of thing a rival agency would use to discredit the whole pack — and per the repo's own Competitor Lens, that's the standard I'm held to.

**Corrected attribution for the campaign pack:**
- Video scripts → `video-production.md`
- Paid plan → `ppc-paid-media.md` *(partial — see gaps)*
- Claim/creative boundaries → **no existing skill covers this**; the compliance checklist is the nearest fit, and the claim rules in `03-compliance-guardrails.md` §2 are original work, not repo-sourced

---

## 4. What This Means Commercially

The gaps aren't cosmetic. Three of them directly threaten the 200-lead target:

1. **No nurture content for the "just exploring" segment.** File `02` routes them to "Long nurture (monthly intake newsletter)" — with nothing built to send. That segment is the cheapest inventory in the account and it currently falls out of the funnel.
2. **No positioning.** Every competitor can say "we help with DBA admissions." Until Branding & Creative Direction is run, Future Wise is undifferentiated, and the viewer feedback already proved viewers can't tell what it is.
3. **No Community Management SOP.** The DMs and comments this campaign deliberately generates have no response targets and no escalation path — on a topic where a public complaint about a broken promise is a genuine brand risk.

---

## 5. Discipline Rule Going Forward

Per `USAGE-GUIDE.md` §3: *"Always ask the AI to output in the Deliverable Template format given in the skill file — never accept a loose paragraph dump."*

**Applied to myself:** no future file in this folder gets a `Built with:` line unless its structure matches that skill's Deliverable Template item-for-item. Where a skill wasn't run, the file says **"no skill run — original work"** and stands on the reasoning alone. Skill names are not garnish.
