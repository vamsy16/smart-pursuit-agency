# ENGINE 00 — Triage & Fit (the "general" leak plug)

**Why this engine exists.** Vamsi chose *general* digital marketing. General is how you get:
endless low-budget enquiries, "can you do Instagram for ₹8k", and a founder who is busy but not
rich. This engine keeps the front door general and the **inside verticalised**. You never say
"we only do X". You say "everyone can talk to us; only a few get a retainer."

## The single mechanism

Every lead — inbound form, DM, referral, WhatsApp, cold reply — gets **scored before it gets a call.**
Scoring is done by R7 from a 9-field intake form. No score, no calendar slot.
This is the difference between a premium agency and a freelancer inbox.

### Intake form (the only 9 fields that matter)
1. Company + website
2. What are you selling, to whom, at what price (₹ per sale / LTV if known)
3. Current monthly marketing spend (media only, excluding salaries)
4. Who is the decision-maker, and are they on this call?
5. Primary goal in the next 90 days (one metric)
6. What's been tried and what happened
7. Team doing marketing today (names/roles, not "we have a team")
8. Start date (ASAP / this quarter / exploring)
9. Approved budget range (with a floor-adjacent option so nobody lies)

## Scoring → routing (see `scoring.yml`)

| Score | Tier | Where it goes |
|---|---|---|
| 80–100 | **A** | Founder discovery call within 24h. Priority assembly of a ₹1.5–4L/mo retainer proposal. |
| 60–79 | **B+** | Productised offer only: Growth Sprint (₹1L) or Deep-Dive Audit (₹25k). Never a discounted retainer. |
| 40–59 | **B** | Nurture sequence (8 touches / 90 days). Ask for one micro-commitment (audit call after we send a free teardown). |
| 0–39 | **C** | Polite one-message no + the self-serve SOP link. Log reason. Move on in under 3 minutes. |

### The Tier-C no (this is a feature, write it once, reuse forever)
> "Hi [name] — thanks for the detail, it helped. For what you're describing at your current stage,
> the honest answer is that we're not the right fit: our engagements start at ₹1L/month and are built
> for teams already spending on acquisition who need a system, not extra tasks. Two things that will
> help you more right now: [1 specific fix for their actual problem] and [one free resource]. If
> you'd like a second opinion once you're at [concrete threshold], come back any time."

Giving away one *specific* fix in a rejection is what makes Tier-C leads send you their friends.
It costs 40 seconds and compounds.

## The quiet verticalisation (never announced as a niche)

Every lead carries a **vertical bonus**: A1-fuelled industries get +12 to their score.
`os/stack/verticals.yml` holds the list, refreshed monthly by D13. Which means: you *market*
general, you *prefer* the verticals where ₹10L is normal and data is easy to get, and within 6
months your case-study library *becomes* your niche by accident. That is how you get niche pricing
without betting the agency on a niche before you have proof.

## Weekly triage review (15 min, D12 output)
- % leads scored within 4h of first contact (target: 100%)
- A/B/C distribution — if >60% are C, the *front door* is wrong, not the leads. Change magnet, not the score.
- Reasons for Tier-C rejection, top 3 — these become content for the next month's magnet.
- Median time from lead → call (target <24h) and lead → proposal (target <72h).
