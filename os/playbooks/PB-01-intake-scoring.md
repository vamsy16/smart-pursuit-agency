# PB-01 · New-lead intake & scoring

**Status: live skill.** Executed as written on 2026-09-04 (lead `L-2026-014`). When Vamsi asks for intake,
this file is the program: open it, run it top to bottom, deliver the outputs, report. Do not improvise the
shape, do not ask which option he prefers — pick per the rules here and say why in one line.

```
Trigger:        "intake: <paste>" · a form submission · a reply to an outbound note · "someone asked about us"
Inputs:         os/engines/00-triage/scoring.yml · os/engines/00-triage/playbook.md · os/stack/verticals.yml
                os/pricing/RATES.md · the pasted text/screenshots (the only research source until step 3)
Output:         .vault-work/pipeline/leads/L-<year>-<nnn>_<slug>.md · scored row · outbox draft · ticket stub
SLA:            5 minutes of agent time · ≤3 minutes of Vamsi's
Gate:           kernel/quality-gate.md → Truth (every figure dated + sourced) · Specificity (a competitor
                could not send this message to anyone else) · Risk (unknowns named in a .verify block)
Owner:          R7 (Growth Ops) · human sends everything: L0, always
```

## Steps

1. **Assign the id.** Next `L-<year>-<nnn>` in the vault ledger (`vault cat pipeline` if it exists, else the
   working file). Company → lowercase kebab slug. Never reuse an id. Never put a real record in
   `os/pipeline/leads.yml` — the public file stays `leads: []` and the CI guard refuses otherwise.
2. **Score from the file, not from memory.** Load `scoring.yml`; for each of the nine dimensions pick the
   band the evidence supports and **write the band's own words next to it** in the lead card. Unknown → the
   zero band, stated as unknown ("budget unknown → 0"), never a flattering guess. Sum core, apply
   `vertical_bonus` after and cap at 100.
3. **Check `hard_fails` explicitly** and write the result, even when it's "none found". A skip here is how a
   black-hat request gets a proposal.
4. **Route on the tier, in the file's words.** A → call inside 24h, proposal inside 72h. B+ → productised
   only (Sprint ₹1L / Audit ₹25k), never a discounted retainer. B → nurture 90 days, 8 touches, free
   teardown. C → PB-02 rejection, 3 minutes maximum.
5. **Research before you write.** 25 minutes max, by hand, on their own properties first: mobile brand
   search (incognito), the ad's landing page, their own site's project/contact pages fetched directly, the
   top three listings, and whether they agree. Anything asserted in a client-facing line must have been
   **opened by me in this session**, with a date. Screenshots are attachments for T1, never invented in T0.
6. **Find the gap, not the flattery.** The useful sentence is always the same shape: *what they are paying
   for* → *where it dies* → *what that costs them*. Three findings, each with a fix sized in hours. Four is
   too many for a first message; ten reads as a pitch.
7. **Draft the reply** into `.vault-work/pipeline/outbox/<date>_<slug>-t0.md`: their facts before our offer,
   one gift with no gate, a one-word reply option, no adjective about us, and no price unless the tier routes
   to a productised offer (then the price is stated plainly — the floor is public on purpose).
8. **Attach the pre-flight** (step 10) to the same file. Vamsi verifies before sending; that is the artefact.
9. **Write the ledger row**: id, slug, vertical, market, source, score, tier, stage, `next_action` +
   `next_action_due` (a stage without a dated next action is a defect), value estimate if any, updated date.
10. **Verify-before-send block, mandatory.** List what I could not confirm (does the form submit? which
    number is authoritative? what's the actual spend?) and the 60–90 second action for each. If a claim can't
    be checked in 10 seconds by Vamsi, I cut the claim.
11. **Seal, log, report.** `vault seal pipeline` · one line in the day log (id + tier + next action, never the
    name in a public file) · report the score math and the route in ≤6 lines.

## Rules that are not negotiable

- **Budget_fit 0 caps the lead at Tier B by rule.** So an unqualified "big" lead cannot generate a retainer
  proposal, and that is the design protecting 20 hours a month of Vamsi's time, not a limitation.
- The **time budget is 20 agent-minutes per lead**; over that, the lead must have moved (a reply, a booked
  call, a paid audit). No "polishing" a cold lead's file.
- Nothing client-shaped is ever committed to the public zone — not the name, not a phone, not a GSTIN, not a
  "harmless" internal note in `os/memory/`. Rule 3c in `public-guard.sh` enforces it; the anonymised public
  version is PB-18's job.
- Public artefacts run the **scrub check**: no name, domain, city, project name, registration number or phone
  string survives in the file that gets committed. Grep for it; do not eyeball it.
- End of execution is: artefacts written, verified, reported. **Not** "would you like me to…".

## Failure modes

| breaks when | do instead |
|---|---|
| no evidence at all (a name and a city) | score the unknowns honestly (they are usually 0), send the offer that needs no evidence: the free teardown or the ₹25k audit — and never a proposal |
| their site is unreachable / JS-only | say so in `.verify`, and drop the technical claims; sell on the visible gap (price/listing/response-time inconsistency), which is checkable by anyone |
| the lead is a friend, a referral, or "just a small job" | same floor, same scoring. Warmth is not a discount; `SOVEREIGN.md` has no exception clause and 2026-09-04 proved the guard doesn't either |
| Vamsi asks for a "reply" only | still write the score + route, in 4 lines, into the same file. The discipline is the product |
| the gate score would be <90 | do not send. Fix or downgrade the ask (audit instead of call) and say which in the report |
