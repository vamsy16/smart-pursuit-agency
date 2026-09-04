# PB-19 · Outbound list build, personalise & four-touch sequence

**Status: live skill.** The sequence a scored lead enters; PB-01 hands it the tier and the first message.

```
Trigger:        "outreach: <one business>" · "outreach list: <segment>" · Tue/Thu rail-3 block · PB-01 routed to A/B+
Inputs:         scored lead cards (vault) · os/engines/01-leadgen/playbook.md (rails + 40/day) ·
                os/pricing/RATES.md (the offer ladder) · site/doc.css (the artefact standard)
Output:         .vault-work/pipeline/sequence/<slug>/t0.md t1.md t2.md t3.md · the named teardown (rendered
                HTML, self-contained, for T1) · for a public run: site/autopsies/NN-<anon-slug>.html (PB-18)
SLA:            T0 same day · T1 +2 days · T2 +7 · T3 +21, then the file closes. 4 touches. Never 5.
Gate:           Truth (only facts opened this session) · Specificity (the message could not be sent to any
                other business) · Actionability (one reply-word CTA) · Risk (the .verify block, always)
Owner:          R7 researches, R2 writes, Vamsi sends. Nothing is auto-sent — Law IV.
```

## Steps

1. **Send channel by market, not by preference.** Tier-2 India and local service → WhatsApp first, email in
   parallel with the same body. Founder-led tech/international → email first, LinkedIn as T2.
2. **Send window.** Never before 09:00 or after 19:00 local. Never Sunday for anything where the buyer
   visits a site or the owner is in meetings (real estate, clinics, schools, manufacturing). Tue–Thu 10:30–11:30
   and 15:30–16:30 are the two quiet windows in an Indian office day.
3. **T0 = three findings, one gift, one reply word.** Their facts before our offer. No adjective about us.
   No attachment. No meeting request beyond "15 minutes if it looks useful". If the offer is productised, the
   price sits in the message in plain words — the floor is public on purpose.
4. **T1 = the actual teardown**, rendered with `site/doc.css` inlined (one file, zero external requests, prints
   to PDF). Structure: `.lede` one paragraph → 3–5 `.finding` blocks (severity · what I saw · why it costs money ·
   the fix with a size) → "do these yourself this month, ₹0" → the offer box → `.sources` → `.verify`.
5. **T2 = one insight, no ask.** Something true about their market or a competitor's move, three sentences.
   This touch converts more than the pitch does, because it proves the read rather than the offer.
6. **T3 = close the file** at D21: "if the timing's wrong, tell me and I'll stop; if it's useful, the audit is
   ₹25,000." Then the lead goes to `PARKED` with a 90-day diary date. Silence is an answer; treat it as one.
7. **Any reply breaks the sequence.** Skip to the call or the audit; never send T1 into a live conversation, and
   never send two touches in one day because the first got ignored.
8. **Batch by segment, personalise the first 40 words.** 40/day is the rail's ceiling; a day of 6 hand-researched
   notes beats a day of 40 templated ones, and the file's honesty requirement makes 40 impossible anyway.
9. **Log every touch** in the lead card with date + channel + which finding it led with. `lost.md` gets the reason
   code when it ends — that is how the next T0 is sharper.

## Rules

- Never message a personal number or private email scraped from a data broker. Published business contacts
  only: their own site, their listings, their GBP. A first impression bought with somebody's staff directory is
  a lead you did not earn, and it is the fastest way to make this OS worse than the problem it solves.
- No "just following up", no "circling back", no "hope you're well", no "quick question", no "we help businesses
  like yours grow". A banned-vocabulary list lives in `os/kernel/voice.md`; the gate deducts 5 per hit.
- Nothing that could be a regulated claim: no guaranteed results, no "we'll double your leads", no subsidy/EWS
  eligibility wording, no medical outcome language.
- If a finding requires a login to prove (ad account, GA property, form wiring), it is phrased as a question in
  the `.verify` block, never as an assertion.

## Failure modes

| breaks when | do instead |
|---|---|
| the business has no visible leak | say so and withdraw: "three things check out, keep your person" — a sent note that says nothing's wrong is the highest-trust outreach you can run, and it earns referrals |
| the site is behind a page builder / can't be read | T0 leads with the *listing* or *response-time* gap (publicly checkable) and the teardown becomes "what I'd check with you on a call" |
| they reply angry ("how did you get my number") | answer in one line with the public source, apologise for the intrusion not the research, offer the free teardown anyway or walk — never defend twice |
| they ask for per-lead / per-sale pricing | that makes us a broker; decline with the reason, offer the audit instead (PB-02's tone, not a fight) |
| 40/day becomes the goal | drop to 8 and keep the gate. Volume below 90 is how a solo shop builds an invisible reputation problem in a small city |
