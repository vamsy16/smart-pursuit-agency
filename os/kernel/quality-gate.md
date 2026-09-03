# Kernel — The Quality Gate (nothing ships below 90)

A deliverable is not "done" when it exists. It is done when it scores ≥90 here and the score is
written into the ticket. This single file is why a solo shop can charge ₹10L and not get embarrassed.

## Scoring (100 points — the six weights sum to exactly 100; re-check the arithmetic whenever one is edited)

| Dimension | Pts | Pass test |
|---|---|---|
| **Truth** | 25 | Every number traceable to a source file/export with a date. Zero invented figures. |
| **Specificity** | 20 | Could a competitor send this unchanged? If yes → 0. Names, numbers, dates, named pages/ads. |
| **Client fit** | 15 | Uses their words, their product, their constraints, their data. References ≥3 client-specific facts from `00-account/`. |
| **Actionability** | 20 | Next step is unambiguous, owned, dated. A reader who does nothing after reading has failed — the doc's fault, not theirs. |
| **Craft** | 10 | Formatting, no typos, no banned vocabulary, correct brand kit, exports sized right. |
| **Risk & honesty** | 10 | Assumptions listed. Unknowns named. "What could make this fail" included. |
| **Deductions** | − | −5 per banned word/phrase · −25 for any unsourced number · −15 for a broken link/path · auto-fail for scope creep beyond the SOW |

**90–100** → ship. **75–89** → one revision pass, re-score. **<75** → stop, escalate to founder,
and log in `memory/lessons.md` as a playbook defect (the process failed, not just the output).

## Stage gates (the "two-pass" rule)
Draft and judgement are never done in the same pass. Cheap, and it's the difference between slop and senior.

1. **Brief** — R1/R2. Output: objective + audience + the gap. *Gate: is the objective falsifiable?*
2. **Draft** — R2/R4/R5. Ugly allowed. Volume allowed. *No self-editing.*
3. **Cold** — 2+ hours (or overnight) between draft and review. Context switch is a feature.
4. **Critique pass** — same agent, new role: "You are a hostile reviewer paid to find 5 reasons this
   gets rejected by a CFO." Output = a numbered list of weaknesses, **not** a rewrite.
5. **Fix pass** — address all 5. Re-score against this file.
6. **Human glance** — founder reads page 1 and the recommendation only. Then it ships.

## Per-type minimum checklists

**SEO/content piece:** query intent answered in H1/H2 within the first 100 words · schema-relevant
entities covered · 3+ internal links with descriptive anchors · meta title ≤60 chars, description
≤155 · no cannibalisation with existing URLs (checked against `clients/<slug>/03-delivery/seo/index.md`)
· CTA present and specific · word band met without padding.

**Paid campaign build:** naming convention followed · conversion tracked and TESTED (a launch without
a verified conversion is a refund waiting to happen) · budgets sum to the approved cap · negatives
loaded · stop-rule written per ad set · creative specs matched to placement · tracking params appended.

**Report:** baseline column present · 3-sentence executive summary on top · one anomaly flagged with
a hypothesis · one ask from the client · no chart without an interpretation · dates on every figure.

**Proposal:** their 1-line problem stated in *their* words · named decision-maker · scope table with
inclusions AND exclusions · price with 3 options anchored high → low · timeline with dates, not
"weeks" · proof: relevant evidence or a labelled "what we'll prove in month 1" · payment terms ·
validity date · one CTA (sign), never three.

**Client email:** ≤150 words · subject carries the ask or the number · one CTA · no attachments
mentioned without being attached.

## The 3 questions the founder asks (30 seconds, every deliverable)
1. Would I put my name on this in front of this owner?
2. Is there a number in here that I cannot trace?
3. What will the client *do* after reading it?

Anything that fails, goes back — do not "fix it live" in the send box. That is how a ₹10L account
becomes a refund.
