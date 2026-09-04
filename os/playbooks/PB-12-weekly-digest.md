# PB-12 · Weekly digest + the client's report file

```
Trigger:        "report wk<NN>" · Fri 16:00 (drafted Thu evening when the week's commits are fresh)
Inputs:         the week's commits per client · 04-analytics/sources.md (dated pulls) · MANIFEST (quota, terms)
                09-qa/gate.md (scores incl. what was held back) · 11-finance (invoice state)
Output:         12-reviews/wk<NN>_digest.md (~400 words) · 14-report/<date>_wk<NN>_report.html (self-contained,
                doc.css inlined, zero external requests, prints to PDF) · STATEBOARD line · vault seal
SLA:            45 minutes across all clients, batched: read once, write per client
Gate:           Truth (every figure resolves to a dated row in sources.md; an unsourced number is a −25 hard
                fail) · Risk (name the item that failed the gate and the one that got killed) · Craft (no adjective)
Owner:          R6 writes, Vamsi sends (L0 — a client-facing message is always a human send)
```

**The five blocks:** 1 where we are (tier, month n/N, what needs a decision) · 2 what got done — itemised
counts, including what was **held back** and why · 3 what the numbers moved, each with its source, and one
anomaly with a hypothesis and a check date · 4 next fourteen days with dates · 5 what we need from you,
numbered, with a deadline and the minutes each ask costs them.

Rules: the client's money never hides (invoice state goes in the file, not in a separate awkward mail); no
chart without a sentence of interpretation; nothing is "on track" unless a number says so; the file **is** the
record — no portal, no login, and no copy stays outside the vault; if a deliverable scored under 90 and is
being shown anyway, that's a policy violation and the fix is the gate, not the wording.
