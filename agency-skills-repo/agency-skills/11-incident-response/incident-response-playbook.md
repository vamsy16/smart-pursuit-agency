# Incident Response Playbook

## Purpose
When something breaks — ad account suspended, website down, data exposure, a campaign goes viral for the wrong reason — the first hour of response determines whether it's a manageable event or a client-relationship-ending one. This skill gives you a calm, pre-built process instead of improvising under pressure.

## When to Trigger
Immediately upon discovering any of: ad account suspension/ban, site/landing page downtime, data breach/exposure, PR-negative viral moment, major campaign performance collapse, or a critical tool/integration failure.

## Inputs Required
`[INCIDENT_TYPE]`, `[CLIENT_NAME]`, `[WHAT_HAPPENED — facts only]`, `[TIME_DISCOVERED]`

## Execution Prompt
```
Act as a crisis management advisor. Incident: [INCIDENT_TYPE] affecting
[CLIENT_NAME]. What happened: [WHAT_HAPPENED]. Discovered at:
[TIME_DISCOVERED].

1. First-Hour Actions: an ordered checklist of what to do immediately
   (contain the issue technically first, THEN communicate — don't reverse
   this order) specific to [INCIDENT_TYPE].
2. Client Communication Script: a message to send the client within the
   first hour — transparent about what's known/unknown, what's being done,
   and next update time. Never speculate on cause before it's confirmed.
3. Root Cause Investigation Checklist: what to check to understand why this
   happened, specific to [INCIDENT_TYPE].
4. Follow-Up Communication Template: for once the issue is resolved —
   what happened, what was done, what's changed to prevent recurrence
   (a credible "post-mortem" builds more trust than the incident itself
   damages, if handled well).
5. Internal Process Fix: what should be added to relevant checklists
   (`09-qa-testing`, tracking setup, etc.) so this specific failure mode
   is caught earlier next time.
```

## Deliverable Template
First-Hour Action Checklist → Client Communication Script (initial) → Root Cause Checklist → Resolution/Post-Mortem Communication Template → Process Fix Recommendation

## Premium & QA Notes
- Speed and honesty of communication matters more than having already solved the problem — clients forgive incidents; they don't forgive silence or discovering it themselves before you tell them.
- Never guess at root cause publicly before confirming it — a wrong explanation retracted later is worse than a delayed but accurate one.
- Every incident should permanently improve a checklist elsewhere in this repo — that's what turns "premium" from a claim into an actual track record over time.
