# Email Marketing & Marketing Automation / CRM

## Purpose
Turn email/CRM into the highest-ROI channel in the client's stack — automation sequences that sell while you sleep.

## When to Trigger
Onboarding (build core flows) + monthly campaign calendar.

## Inputs Required
`[CLIENT_NAME]`, `[ESP/CRM_PLATFORM]`, `[CUSTOMER_JOURNEY_STAGES]`, `[PRODUCT/OFFER]`, `[LIST_SIZE if known]`

## Execution Prompt
```
Act as a lifecycle marketing strategist for [CLIENT_NAME] using
[ESP/CRM_PLATFORM], selling [PRODUCT/OFFER].

1. Core Automation Flows: define the essential flows for this business
   (e.g., Welcome, Abandoned Cart, Post-Purchase, Win-Back, Lead Nurture) —
   only recommend flows relevant to their actual business model.
2. For the 2 highest-impact flows, write the full email sequence (subject
   lines + preview text + full body copy for each email + timing/delay
   between emails).
3. Segmentation Strategy: how to segment [LIST_SIZE] contacts by
   engagement/purchase behavior for more relevant sending.
4. Deliverability Checklist: sender reputation, authentication (SPF/DKIM/DMARC),
   list hygiene practices to keep inbox placement high.
```

## Deliverable Template
Flow Priority Map → 2 Full Email Sequences (subject/preview/body/timing) → Segmentation Plan → Deliverability Checklist

## Premium & QA Notes
Every subject line must be tested against the Psychological Lens: curiosity gap, specificity, or clear value — never vague ("Check this out"). A/B test subject lines on real sends; don't assume the AI-drafted "best" one wins without data.
