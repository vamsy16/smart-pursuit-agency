# PB-18 · Growth Autopsy (the public teardown — the lead magnet)

**Status: live skill.** № 01 published 2026-09-04: `site/autopsies/01-tier2-builder.html`.

```
Trigger:        "autopsy: <business>" · weekly rail-1 slot · a lead worth publishing anonymised
Inputs:         the research from PB-01/PB-19 · site/doc.css · PUBLIC-SCOPE.yml (the scrub rules) ·
                os/kernel/voice.md (banned vocabulary)
Output:         site/autopsies/NN-<anon-slug>.html — one self-contained file · linked from site/index.html ·
                a copy of the named version stays in the vault for the subject, unsent unless they ask
SLA:            45 minutes, once a week. Skip a week rather than publish a thin one.
Gate:           Truth · Specificity · Craft (it must look like the best thing on the site) ·
                Risk — the anonymisation check is a hard fail, not a style note
Owner:          R2 writes, Vamsi publishes (L1: it's a public statement about a real business)
```

## Steps

1. **Write the named version first** (it already exists from PB-01/PB-19's T1). Publishing starts from the
   real findings, never from a sanitised summary of them.
2. **Anonymise by substitution, not by vagueness.** Trade: name → sector + city class + size ("a 192-unit
   residential developer in a Tier-2 North Indian city"), price → band, URL/domain/project/registration
   number/contact strings → removed, exact dates → month, one identifying quote → paraphrase. Keep the
   *mechanism* precise: the value is the method, and method has no name in it.
3. **Run the scrub check as a command, not an eyeball:**
   `grep -oiE "<name|slug|domain|city|project|phone|registration>" site/autopsies/NN-*.html` → must return
   nothing. If it returns one hit, the file does not publish. This is the same rule the CI guard applies to
   the rest of the repo; the autopsy is where it's easiest to slip.
4. **Lead with the leak, not the business.** Title shape: "<sector> is buying <input> it cannot convert".
   Structure: `.lede` → the findings table (leak · what it looks like from outside · why it costs money) →
   the three fixes, in order → "how I'd do it with money and 30 days" → the method, free to steal.
5. **Give the method away in full.** The last section is the seven checks anyone could run. That is the point:
   the reader who can't do it hires you; the reader who can trusts you. Both are wins and neither needs a name.
6. **State the ethics inside the document**: "anonymised — the business is not named here and will not be",
   and that the subject gets the named version privately. If the subject is a live prospect, do not publish
   before T0 has been sent, or it reads as leverage.
7. Publish as a new numbered file (never renumber), link it from the site, one line in the day log.

## Failure modes

| breaks when | do instead |
|---|---|
| the leak is only visible with a login | it's not an autopsy, it's a pitch — pick another subject |
| they find it and are pleased | offer the audit; do not delete it; and never let a happy subject turn a teardown into an endorsement you didn't earn |
| they find it and are angry | apologise once, take it down within the hour, keep the anonymisation and re-publish the pattern without the numbers. Owning it fast is cheaper than being found out later |
| it reads like an ad | cut the last paragraph and every mention of us that isn't in the offer box |
| you're tempted to name them for credibility | no. Proof of method beats proof of access; a named teardown without consent breaks what the client paid for with everyone else |
