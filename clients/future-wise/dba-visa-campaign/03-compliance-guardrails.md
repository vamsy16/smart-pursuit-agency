# Future Wise — Compliance Guardrails & Pre-Launch QA
**Built with:** `09-qa-testing/pre-launch-campaign-compliance-checklist.md` + `09-qa-testing/multi-perspective-qa-checklist.md` + `10-legal-compliance/contracts-legal-compliance.md`

> **This file is not optional.** A visa-adjacent education campaign is one of the highest-risk categories in paid media. The failure modes are not "low CTR" — they are ad account bans, regulator complaints, and students who paid tuition based on a promise nobody could keep. Every item below is a gate, not a suggestion.

---

## 1. Policy Risk Scan — Severity Flags

| # | Risk | Severity | Required action |
|---|---|---|---|
| 1 | **Meta — personal attributes.** Ads must not imply knowledge of a viewer's personal circumstances. Immigration status is sensitive. | **HIGH** | Script A opens with a *conditional question* ("H-1B not picked? On OPT, clock running?"). For the first 7 days of a new ad account, use the compliance-safe variant: **"If your H-1B wasn't picked this cycle…"**. Never write "You're losing your status" / "You are on OPT". |
| 2 | **Meta — Employment special category.** Ads for *job opportunities, internships, or employment services* trigger restricted targeting. A DBA ad is an education ad — but if the creative reads as "we'll get you a job", reviewers may classify it as Employment. | **HIGH** | Keep every creative unambiguously academic. Never use "job", "hiring", "placement", "employer sponsorship" as the lead promise. |
| 3 | **Google — "Government documents and official services" policy.** Ads promoting visas, passports, or services that help acquire them require certification/authorisation — and as of Oct 5, 2026, proof of explicit government authorisation. | **HIGH** | **Do not bid on visa-service keywords.** Google campaigns target *program-intent education keywords only* (see §3). Educational/editorial/consultancy services may qualify for a **policy exclusion** — apply for it and keep the approval on file. |
| 4 | **Guaranteed-outcome claims.** Anything implying guaranteed CPT, guaranteed status, or guaranteed approval. | **CRITICAL** | Banned outright — see §2. |
| 5 | **Unauthorised university representation.** Using names, logos, or "official partner" language without written authorisation. | **HIGH** | See §4. No logos under any circumstance without written permission. |
| 6 | **Unauthorised immigration advice.** Advising on status, filing, or eligibility for immigration benefits. | **CRITICAL** | All materials carry: *"This is educational information, not immigration legal advice. Consult a licensed immigration attorney."* Staff are trained never to answer status-eligibility questions — route to a licensed attorney. |
| 7 | **Landing page mismatch.** Ad promises a "free checklist"; LP sells a consultation. | **MEDIUM** | See §5 — the LP must deliver exactly what the ad promised, above the fold. |

---

## 2. Banned vs. Approved Language (train every writer, VA, and advisor on this)

| ❌ Never say | ✅ Say instead |
|---|---|
| "Guaranteed CPT approval" | "Ask the school to confirm its practicum requirement in writing" |
| "We'll solve your visa problem" | "Compare programs on how their curriculum is structured" |
| "Work full-time legally while you study — guaranteed" | "CPT eligibility is determined by the school's DSO under 8 CFR 214.2(f)(10)(i)" |
| "100% approval / no risk / safe option" | "CPT is permitted when it is an integral part of an established curriculum and directly related to your major" |
| "USCIS-approved program" | "Accreditation is verifiable through the university and its accreditor (e.g. WSCUC)" |
| "We are an official partner of [University]" *(without signed agreement)* | "[University] offers a DBA in [format]" — factual, sourced |
| "This extends your stay" | "A doctorate is a higher degree level; eligibility and outcomes depend on your individual situation and immigration counsel" |
| "Get a fresh OPT guaranteed after graduation" | "Speak to an immigration attorney about post-completion options" |
| "Last chance before the rules change" *(when untrue)* | Use the real, dated intake deadline |

**The governing principle:** promise the *process* you control (a free compliance checklist, a program comparison, a verified intake date). Never promise the *outcome* you don't control (approval, status, admission, lottery selection).

This isn't just risk management — it's the positioning. Every competitor in this niche is shouting "GUARANTEED". The one operator who says "here's what to verify, and here's what nobody can guarantee you" becomes the only credible voice in the feed. Truth is the conversion asset here.

---

## 3. Keyword & Targeting Boundaries

**Google Search — allowed (program intent):**
`DBA for working professionals` · `DBA admission requirements` · `doctorate business administration online` · `DBA IT management` · `[university name] DBA program` · `DBA vs PhD`

**Google Search — blocked (policy-exposed):**
`visa help` · `H-1B extension` · `CPT approval` · `F-1 status` · `day 1 CPT work authorization` · anything reading as *acquiring or assisting with a government document*

**Meta — targeting:** broad + interest layers on higher-education and diaspora interests. **Exclude your CRM list.** No Special Ad Category unless the creative genuinely reads as employment.

**Landing pages:** must carry, in the footer *and* near any form: *"Future Wise is a private education advisory and is not affiliated with any government agency or immigration authority."*

---

## 4. Verified Program Facts + Re-Verification Protocol

Everything the scripts claim about the four universities. **Re-verify every row before each launch — program structures change, and an outdated claim is both a compliance risk and a broken promise to a student who's paying $50k.**

| University | Verified fact used | Source of record | Status |
|---|---|---|---|
| **Indiana Wesleyan University** | DBA (Management specialisation), online delivery, ~36 months, **one weekend residency per year** | indwes.edu program page | ✅ University source |
| **Westcliff University** | DBA with multiple emphasis areas incl. **IT/Computer Science and Business Administration & Management** (STEM and non-STEM variants); hybrid, ~36 months; WSCUC + ACBSP accredited | University + third-party CPT directories | ⚠️ Confirm format/intakes with admissions |
| **Sofia University** | DBA, ~54 credits / ~3 years, hybrid, **monthly on-site residency** (Palo Alto & Costa Mesa), WSCUC accredited, ~4 intakes/year | Third-party CPT directories | ⚠️ Fully confirm with each university |
| **National Louis University** | DBA, 60 credit hours, ~4 years, blended, **one 3-day campus immersion per term**, requires a **master's in business or related field** | nl.edu program page | ✅ University source |

**Protocol:**
- [ ] Written confirmation from each university's admissions office for: format, residency frequency, intake dates, tuition, and whether the practicum is required for **every** student.
- [ ] Written authorisation before using any university **name in paid creative** or **logo in any asset**. If not held, describe the programs generically ("a US-accredited DBA with a required practicum") until it is.
- [ ] Agent/partner agreements on file where a referral fee is involved.
- [ ] Never state or imply that a university endorses Future Wise or guarantees admission.

**Sources consulted (verified 12 Sep 2026 — re-check before launch):**
- Indiana Wesleyan University DBA — `indwes.edu/program/dba/management/`
- National Louis University DBA — `nl.edu/graduate-school-of-business-and-leadership/programs/doctorate-of-business-administration/`
- Westcliff University DBA / CPT structure — `cptdog.com/day-1-cpt-universities/westcliff` + `unicollege.eu/dba` (Westcliff-accredited delivery)
- Sofia University DBA / CPT structure — `day1cpt.org/news/day-1-cpt-phd-programs` + `cptdog.com/day-1-cpt-universities/sofia`
- Cross-university DBA comparison — `day1cptapply.com/blog/top-day-1-cpt-dba-program-you-should-know/`

*Third-party CPT directories are a starting point, not authority. Every fact that appears on screen or in a landing page must be confirmed in writing by the university's admissions office.*

**On the regulatory environment (used in Script A):** SEVP issued a broadcast on **12 August 2026** restating that CPT must be an integral part of an established curriculum and must not be authorised solely for employment, and stated it is increasing scrutiny of CPT authorisations. This is a compliance reminder to DSOs — **it is not a rule and not a ban on Day-1 CPT**. Scripts must never state or imply that Day-1 CPT has been prohibited. That single misstatement would be both false and commercially self-defeating.

---

## 5. Landing Page Consistency Check

| Requirement | Pass condition |
|---|---|
| Ad promise = LP promise | If the ad says "free compliance checklist", the checklist is downloadable **above the fold** — not gated behind a sales pitch |
| Form length | ≤5 fields, ≤40 seconds. Every extra field costs ~10% of completions |
| WhatsApp field | Primary contact field, above email |
| Disclosure | "Private education advisory, not affiliated with any government agency" — visible without scrolling |
| Legal line | "Not immigration legal advice. Consult a licensed immigration attorney." — near the form |
| Tuition transparency | Real tuition + fees stated (or a clear range), with a link to the university's official page |
| Mobile | Loads in <2.5s on 4G, thumb-reachable CTA, no horizontal scroll. **90%+ of this traffic is mobile.** |
| Post-submit | Instant confirmation + WhatsApp message within 2 minutes + calendar link |

---

## 6. Launch-Day Checklist (run before every launch — not just "risky" ones)

- [ ] Ad account: business verification complete, 2FA enabled, payment method valid, no unresolved disapprovals
- [ ] Pixel/conversion events firing verified live (test submission on a real device)
- [ ] UTM parameters applied per governance standard
- [ ] Budget caps, schedule timezone, and campaign objective double-checked
- [ ] CRM exclusion list uploaded
- [ ] Comment-to-DM automation tested end-to-end on a live post (comment the keyword yourself)
- [ ] WhatsApp business number live and monitored
- [ ] Disclaimers present in ad, LP, PDF, and DM auto-reply
- [ ] Callback roster confirmed — **who answers within 5 minutes, including weekends?**
- [ ] Compliance checklist from §1–§3 signed off by a named person

---

## 7. First-2-Hours Rollback Plan

| If this happens | Do this |
|---|---|
| Ad disapproved | Do **not** resubmit the same creative. Read the specific policy cited, fix the exact line, resubmit once. Log it. |
| Ad account flagged/restricted | Pause all spend immediately, appeal with business verification documents, and switch to the backup ad account **only if it is legitimately yours**. Do not open duplicate accounts to evade enforcement. |
| Cost per qualified lead 2x over target | Pause the worst ad set, shift to retargeting, verify the form is still routing qualified leads (not a tracking break). |
| Sudden drop in qualified rate | Check targeting drift and form routing first — usually an audience expansion the algorithm made on your behalf. |
| Complaint about a claim | Pause the specific creative within 1 hour, document, correct the asset, and notify the university if their name was involved. |

---

## 8. Multi-Perspective QA — Client-Facing Summary

### Reviewer 1 — The Viewer (an F-1 student on OPT, H-1B not selected)
- **Understood in 5 seconds:** "Don't pay a university before checking this." ✅
- **Where they'd lose interest:** Original draft spent 15 seconds on the news before saying what it's *about*. **Fixed:** the four universities + IT/Management tracks now land at 0:20, not 0:35.
- **Unanswered question that blocks action:** *"Is this free?"* → **Fixed:** "Free" now appears on screen at 0:43 and in the end card.
- **Would they act? 4/5.** The credibility line ("your school authorizes CPT, not us") is the reason it isn't a 3.

### Reviewer 2 — The Competitor (a rival consultancy)
- **Weakest element found:** the original CTA was "book a free consultation" — every competitor says that, and it reads as a sales funnel.
- **What they'd challenge:** "You list four universities — are you authorised to promote them?" → **Fixed:** §4 protocol makes authorisation a pre-launch gate, and names are used factually without logos.
- **How they'd make us look outdated:** they'd promise faster enrolment with a "guarantee". We win by being the only one who won't — and by proving it with the three questions.

### Reviewer 3 — Behavioural/Psychological Analyst
- **Specificity:** ✅ dated event, three numbered questions, real deadlines. Weak point was "cheap tuition" in Script C — **made specific** as "somewhere cheap".
- **Cognitive ease:** ✅ three questions, three checkmarks. Reduced from a five-question draft because five doesn't fit a 55-second read.
- **Social proof:** ⚠️ **Action required** — the Day-1 "+20 min" WhatsApp message needs a **real, verifiable** student case study. Do not invent one. If none exists yet, replace it with the university's own published outcome data.
- **Friction:** ✅ one word, one comment, DM in 30 seconds.
- **Loss framing:** ✅ correctly applied — this audience responds to protecting what they have, not to aspiration.

**Verdict: cleared for launch, contingent on §4 authorisation checks and the Week-1 compliance variant in §1 Row 1.**

---

*Log every disapproval, complaint, or corrected claim in a running register with root cause. Feed the patterns back into §1 so the same mistake never costs the account twice.*
