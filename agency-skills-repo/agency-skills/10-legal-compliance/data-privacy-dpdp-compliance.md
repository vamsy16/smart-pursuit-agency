# Data Privacy & DPDP Act Compliance (India)

## Purpose
Any agency running email marketing, CRM, retargeting pixels, or lead-gen forms is processing "personal data" under India's Digital Personal Data Protection Act (DPDP Act, 2023) and its rules. This is a current, real compliance obligation, not a hypothetical risk — build it in now rather than retrofit later.

## When to Trigger
Client onboarding (data handling setup), and whenever a new data-collecting asset (form, pixel, CRM import) is added to a client's stack.

## Inputs Required
`[CLIENT_NAME]`, `[DATA_TYPES_COLLECTED]` (email, phone, purchase history, etc.), `[TOOLS_HANDLING_DATA]` (CRM, ESP, ad platforms)

## Execution Prompt
```
Act as a data privacy compliance advisor (note: for final legal sign-off,
a qualified privacy lawyer should review — this builds a strong working
draft) for [CLIENT_NAME], collecting [DATA_TYPES_COLLECTED] via
[TOOLS_HANDLING_DATA], operating in India.

1. Consent Checklist: what needs explicit, specific consent before collection
   (per DPDP principles: clear notice, purpose limitation, ability to
   withdraw consent) for each data-collecting touchpoint (forms, cookies/
   pixels, WhatsApp/SMS opt-ins).
2. Privacy Notice Essentials: the minimum elements a client's privacy policy/
   consent notice should contain to cover the agency's data processing
   activities on their behalf (purpose, retention, third-party sharing with
   ad platforms, grievance/contact mechanism).
3. Data Processing Agreement (DPA) Outline: since the agency processes data
   ON BEHALF OF the client, draft the key clauses a DPA between agency and
   client should include (data used only for agreed purpose, breach
   notification timeline, data deletion on contract end, sub-processor
   disclosure for any tools/freelancers with data access).
4. Data Minimization Checklist: for [DATA_TYPES_COLLECTED], flag anything
   being collected that isn't actually necessary for the stated marketing
   purpose (a common, easily-fixed compliance risk).
5. Breach Response Outline: first-24-hours steps if client customer data is
   exposed (containment, assessment, notification obligations) — cross-
   reference with `11-incident-response`.
```

## Deliverable Template
Consent Checklist by Touchpoint → Privacy Notice Essentials List → DPA Clause Outline → Data Minimization Checklist → Breach Response Outline

## Premium & QA Notes
- **This is a drafting aid, not legal advice** — DPDP rules and enforcement are still evolving; have a qualified privacy lawyer review consent flows and DPAs before relying on them, especially for clients handling sensitive categories (health, financial, children's data).
- Positioning angle: most competing agencies ignore this entirely — being the agency that proactively raises data compliance is a credible premium differentiator with enterprise clients, whose legal/compliance teams will actively check for this.
- Never store client customer data (lists, CRM exports) in your own tools longer than necessary — minimize your own liability surface, not just the client's.
