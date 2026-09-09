# Discovery Call & Diagnostic Framework

## Purpose
Turn a first call into a diagnosis, not a pitch — this is the single biggest differentiator between a ₹30K/month freelancer and a ₹3L+/month strategic partner. You are the doctor, not the vendor.

## When to Trigger
Every qualified inbound/outbound lead, before any proposal is written.

## Inputs Required
- `[PROSPECT_COMPANY]`, `[PROSPECT_WEBSITE]`, `[PROSPECT_INDUSTRY]`
- Notes/transcript from the call (or pre-call research)

## Execution Prompt
```
Act as a senior marketing consultant preparing for a discovery call with
[PROSPECT_COMPANY] ([PROSPECT_WEBSITE]), a company in [PROSPECT_INDUSTRY].

1. Based on their website and public presence, draft a 10-question discovery
   script covering: current revenue drivers, past marketing spend & ROI,
   internal team capability, decision-making process, budget authority,
   timeline pressure, and what "success" looks like to them in 6/12 months.
2. Include 3 "diagnostic" questions designed to surface a problem they haven't
   articulated yet (e.g., "Who owns your customer data today, and can you
   segment it by LTV?").
3. Draft a closing script for the call that does NOT pitch services, but instead
   proposes a paid or clearly-scoped "Strategic Audit" as the next step.
4. Give me 5 red-flag answers that should make me walk away from this prospect
   (budget mismatch, no decision authority, "we just need cheap volume", etc.)
```

## Deliverable Template
- 10-question discovery script (grouped by: Business Context / Past Marketing / Decision Process / Success Definition)
- 3 diagnostic "surface the hidden problem" questions
- Closing script (transition to paid audit, not free work)
- Red-flag checklist

## Premium & QA Notes
Never quote pricing on the first call. Position: "I don't sell services until I understand your numbers — let's start with a paid diagnostic." This alone filters out low-budget prospects and reframes you as a consultant, not a vendor.
