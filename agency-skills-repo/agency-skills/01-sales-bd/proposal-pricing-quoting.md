# Proposal Writing, Pricing & Quoting

## Purpose
Produce proposals that read like strategic business cases, not service menus — designed to win ₹1.5L–₹5L+/month retainers.

## When to Trigger
After discovery call + (ideally) paid audit is complete.

## Inputs Required
- `[CLIENT_NAME]`, `[INDUSTRY]`, discovery call notes / audit findings
- `[BUDGET_RANGE]` (client-stated or inferred)
- `[SERVICES_PROPOSED]`
- `[TIMELINE]`

## Execution Prompt
```
Act as a strategy consultant writing a client proposal for [CLIENT_NAME], a
[INDUSTRY] company. Based on these discovery notes: [PASTE NOTES], write a
proposal with this exact structure:

1. Situation Summary — reflect back their business situation in their own
   language + 2-3 data points from their industry (use real, cited stats where
   possible, not invented numbers).
2. The Core Problem — one clear, sharply-worded diagnosis (not a list of 10
   problems — pick the ONE that matters most).
3. Recommended Approach — 3 phases (30/60/90 days), each with a name, objective,
   and 3-4 concrete actions. No jargon like "synergy" or "holistic".
4. Investment — present [2-3] pricing options structured as Retainer +
   Performance Bonus (not flat project fee), each with what's included and
   projected outcome ranges (ranges, not guarantees).
5. Why Us — 3 sentences max, backed by a specific proof point (case study,
   number, or process advantage) — never generic claims like "we're passionate".
6. Next Step — one single, low-friction call-to-action with a deadline.

Keep total length under 1000 words. Write for a time-poor decision-maker.
```

## Deliverable Template
Situation Summary → Core Problem → 3-Phase Approach → Investment table (3 tiers) → Why Us → Next Step (with expiry date on the offer)

## Premium & QA Notes
- Always give 3 pricing tiers (anchoring effect: middle tier looks reasonable next to premium tier). Never give one price.
- Every number in "projected outcomes" must be labeled as a range/estimate — overpromising kills premium positioning the moment results lag.
- Run through Psychological Lens (`09-qa-testing`): does this proposal reduce the reader's *effort to say yes* (clarity, one CTA) or does it create decision fatigue?
