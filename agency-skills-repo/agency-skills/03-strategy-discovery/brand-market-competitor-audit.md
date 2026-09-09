# Brand, Market & Competitor Audit

## Purpose
This is the "Requirements + Design" phase — before any campaign or asset is built, understand the client's business, market, and competitive landscape well enough to make decisions no generic agency would arrive at.

## When to Trigger
Start of every new engagement, and every quarter thereafter as a refresh.

## Inputs Required
- `[CLIENT_NAME]`, `[CLIENT_WEBSITE]`, `[INDUSTRY]`
- `[3-5 COMPETITOR_NAMES/WEBSITES]`
- Access to client's analytics/ad accounts (if available)

## Execution Prompt
```
Act as a brand strategist. I'm auditing [CLIENT_NAME] ([CLIENT_WEBSITE]) in the
[INDUSTRY] space, competing against [COMPETITOR_LIST].

Produce a full audit with these sections:
1. Brand Positioning Snapshot — what [CLIENT_NAME] currently claims to stand
   for (from their website/messaging) vs. what evidence supports that claim.
2. Competitor Teardown — for each competitor: their core message, primary
   channel focus, apparent budget tier (low/mid/high production quality),
   and one exploitable weakness in their marketing.
3. White Space Analysis — what message, channel, or audience segment is
   NOT being addressed by anyone in this competitive set.
4. Customer Perspective Simulation — write 3 short "day in the life" personas
   of the target customer, and for each, identify the exact moment they'd
   decide between [CLIENT_NAME] and a competitor, and why.
5. Recommended Strategic Angle — the ONE positioning angle [CLIENT_NAME]
   should own, backed by points 1-4 (not a generic "focus on quality" answer).
```

## Deliverable Template
Brand Snapshot → Competitor Teardown Table (Competitor | Message | Channel Focus | Budget Tier | Weakness) → White Space Map → 3 Customer Personas with Decision Moments → Recommended Strategic Angle (1 paragraph, sharp)

## Premium & QA Notes
This document is the single highest-leverage deliverable in the whole engagement — it's what you show the client to justify premium pricing ("I'm not selling you ads, I'm selling you a positioning decision informed by your competitors' blind spots"). Always verify competitor claims against live sources (web search) before presenting — never let AI invent competitor details from pattern-matching.
