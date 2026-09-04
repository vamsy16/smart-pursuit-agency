# PB-06 · Growth Audit (the ₹25,000 document — and the pre-sale draft of it)

**Status: live skill.** First run 2026-09-04, executed as written; the artefact it produced is the standard
(`.vault-work/pipeline/audits/L-2026-014_ganpati-infrastructure_audit-2026-09-04.html`).

An audit is not a report about how nice the website looks. It is a priced list of places where money is
already going out and nothing is coming back, each one provable, each one with a fix and an owner.

```
Trigger:        "audit: <business>" (free pre-sale draft) · "audit paid <slug>" (the ₹25,000 version) · WON Day 1–3
Inputs:         free draft  : their own site (fetched, not remembered), top 3–4 listings, GBP, live ads,
                             directory data, os/pricing/RATES.md
                paid version : + GA4/GSC, ad account, the enquiry register, their own legal/price facts
Output:         ONE self-contained HTML file, doc.css inlined, zero external requests, prints to A4 →
                  free draft: .vault-work/pipeline/audits/<lead-id>_<slug>_audit-<date>.html
                  paid      : clients/<slug>/02-strategy/audit-<date>.html (+ its .md source) · a copy for
                              the client in 10-outbox · never in the public zone
SLA:            draft 60–90 min · paid 10 working days, delivered with a 20-minute walkthrough
Gate:           Truth (every figure resolves to the §Evidence log with a date and an E-ref) ·
                Specificity (no sentence could survive being sent to a different business) ·
                Risk (§Limitations + the questions-cannot-answer-from-outside section are mandatory, not optional)
Owner:          R1 leads, R6 writes, Vamsi sends (L0). Nothing here goes to a client unsent-by-a-human.
```

## The ten sections, in this order (this IS the product — do not reorder for style)

1. **Read this if nothing else** — 90 words, four things, ₹0-cost share of them, and the one-sentence verdict.
2. **Scorecard** — 8 weighted areas, x/10 each, one evidence sentence per row, and the *visible-from-outside*
   caveat on the total. A number the reader can disagree with line by line beats a paragraph of impressions.
3. **Evidence log** — what was opened, when, what it returned, an `E1…En` reference. Every finding cites one.
4. **Findings** — `severity · what I saw · why it costs money · the fix with a size and an owner`. Three to
   eight of them. A finding with no fix sized in hours is an opinion; it goes in §7 instead.
5. **Cost of the leak** — arithmetic only, with **every assumption labelled `ASSUMED`** and the formula shown.
   "unmeasured" is a permitted and often the most honest cell in the table.
6. **Stop doing these three things** — the fastest money saved is a line item deleted. This section is why
   owners trust the document, and it must cost them something to read.
7. **What I cannot answer from outside** — the `.verify` block. Questions, not claims. Name the two whose
   answers would outrank everything else if they turn out badly.
8. **The 90 days** — weeks 1–12, owner, cost, and a **frozen baseline** stated in five measurable numbers.
9. **What I need from you** — access list, and the two offer boxes (audit vs build) with what we won't sell.
10. **Limitations** — what this document is not: no account data, judgement against a checklist, no promises
    of results. The one section that protects the other nine.

## Rules

- **Open it yourself, or don't say it.** Fetch the URL, read the page. A search-result summary is a lead to a
  claim, never the claim. "Returns Page not found" is fine because I loaded it; "their CTR is 1.2%" is not,
  because nobody can see my screen.
- **Public-safe vs client-safe.** A document naming a prospect lives in the vault, never in the repo —
  `public-guard` rule 3c enforces that. The *anonymised* version of the same analysis is PB-18's autopsy.
- Screenshots: reference them by id (`E4`) and attach real ones. Never invent a screenshot, never describe a
  page you didn't load.
- Banned: "unlock", "elevate", "seamless", "we help businesses like yours", "full-funnel approach", any
  adjective about us. The tone is a colleague who did the reading, not a vendor who wants the account.
- The free draft must be genuinely useful — including a "do these yourself and keep the money" paragraph. That
  is what earns the reply, and it is the reason this audit is 25 pages instead of a 3-page teaser.
- End state: file written, tag balance checked, `grep` confirms zero external requests, guard green, and a
  ≤6-line report. **Not** "shall I send it".

## Failure modes

| breaks when | do instead |
|---|---|
| nothing is visibly wrong | say so: the document becomes "three things that are right, and the one place I'd still check (tracking)". A clean audit is a referral, and often a retainer — no invented findings |
| the site is behind a page builder / unreadable | findings become questions in §7 and the offer shifts to measurement (F7-type work), which is exactly the thing they can't see either |
| they already hired someone | no competitor-bashing, no second-guessing the person in the room: audit the *handoff* (does anyone know cost per walk-in?) and offer the audit as the answer to that one question |
| the price is asked before the work is seen | the free draft IS the answer: 25 pages, ₹0, no meeting needed — and the paid version is what adds their account data |
| tempted to pad to 25 pages | cut. Twelve real findings beat forty formatted ones, and the gate's −25 for an unsourced number applies to filler too |
