# Templates — write once, bill forever

> **STATUS: none of these files exist yet.** This is the Week 1–2 build list, and the spec each one must
> satisfy. Until a file exists, the ritual writes that artefact from the description below — so treat this
> table as instructions to me, not as a directory listing.

## The visual standard for anything a human receives

`site/doc.css` is the single stylesheet for every artefact: audit report, teardown, proposal, weekly report
file, MBR, handover. Rules that make it the standard:

1. **One file, self-contained.** `doc.css` is **inlined** into the artefact, so it opens offline, on a
   two-bar phone, inside an email client, and prints to PDF without a single network request. No webfonts,
   no CDN, no build step — Georgia and the system stack, because a document that needs the internet to look
   right is not finished.
2. **Print is a first-class target.** `@page` A4 margins, `break-inside: avoid` on every finding, KPI block,
   table and code panel. "Save as PDF" is a supported delivery method, not an accident.
3. **The honesty furniture is structural.** `.sources` (every figure, dated), `.verify` (what was *not*
   confirmed, before anyone acts on it), `.tag` (priority / confidential / demo). A template that has no place
   to put an uncertainty will ship one anyway.
4. **A finding is a shape, not a paragraph.** `.finding` = severity · what I saw · why it costs money ·
   the fix with a size. Anything that does not fit that shape is an opinion, and goes in the notes.
5. **Markdown stays the source of truth.** The .md file is what agents write and read; the HTML is a
   rendering produced by `report.mjs` (not built yet — until then the agent hand-builds from this stylesheet,
   as the sample below shows).

Specimen, same layout the client receives: [`site/autopsies/01-tier2-builder.html`](../../site/autopsies/01-tier2-builder.html)
— anonymised on purpose: the public zone never carries a prospect's or a client's name.

Every template below is **repo-resident** and **variable-driven**, so the sales/ops engine can assemble a
client-ready document in minutes. Placeholders use `{{like_this}}`; the values come from
`clients/<slug>/MANIFEST.yml` (the account record) and `clients/<slug>/00-account/` (the facts) — never from memory.

| File | Used at | Notes |
|---|---|---|
| `proposal.md` | PROPOSED | 8 pages, 3-option price table, inclusions AND exclusions. The doc that sets ₹10L expectations |
| `discovery-call.md` | call | 45-min structure + the 9 intake questions + objection cues |
| `audit-report.md` | Day 3 | findings → severity → cost of the leak → 3 stop-doing items → 90-day plan |
| `msa.md` / `sow.md` | WON | 6-month term, 48h auto-approve, pause-on-late, IP-on-payment, no-guarantee, DPA for intl. **Lawyer-review once** |
| `invoice-note.md` | finance | warm + exact, payment link, what happens if unpaid |
| `welcome.md` | Day 0 | plus a 3-min personal video — the highest-ROI 10 minutes in onboarding |
| `weekly-digest.md` | Fri | the 5 blocks, 400 words, no adjectives |
| `mbr-deck.md` | month-end | 10 slides, ends on a decision, not a summary |
| `qbr.md` | quarter | 3-month trajectory, next bet, expansion offer, renewal |
| `onboarding-pack.md` | Day 1–7 | access checklist, calendar, comms rules, 30-day plan |
| `change-request.md` | scope-out | impact in hours and ₹, polite, never defensive |
| `content-brief.md` | PB-07 | intent, gap vs top 5, entities, word band, links, CTA, success test |
| `ad-creative-brief.md` | PB-08 | hook/angle/proof/CTA + specs per placement + stop rule |
| `case-study.md` | PB-17 | context → problem → what we did → numbers with dates → quote → what we'd change |
| `autopsy.md` | PB-18 | public teardown structure: what I found, why it costs money, the 3 fixes, how we'd do it |
| `outbound-sequence.md` | PB-19 | 4 touches, teardown-first, close-the-file final |
| `reject.md` | PB-02 | the Tier-C no that earns referrals |
| `renewal.md` | day -60 | their results + what's next + new rate |
| `handover.md` | churn | asset index, credential return, free 90-day plan, warm close |
| `nfr-response.md` | Day 0 sales | the "how are you different" doc a serious buyer quietly wants |

## Rules
- A template with a placeholder nobody fills is a lie. Delete or fix it in the same commit.
- Templates are versioned: `proposal.md` v3 means three deals taught it something. If a template hasn't
  changed in 90 days, R9 reviews whether it's still true.
- **Never** store client data inside a template. Only `{{tokens}}`.
- Every client-facing template carries the same footer block: your name, the site, the price floor, and
  one line about the OS — because the documents *are* the marketing.
