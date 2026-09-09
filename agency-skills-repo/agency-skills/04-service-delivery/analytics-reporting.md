# Analytics, Attribution & Client Reporting

## Purpose
Reporting is the #1 retention lever — clients rarely leave agencies that clearly show ROI, and rarely stay with ones that don't, regardless of actual performance.

## When to Trigger
Monthly (standing report) + real-time dashboard setup at onboarding.

## Inputs Required
`[CLIENT_NAME]`, `[SERVICES_DELIVERED]`, `[KEY_METRICS]`, raw data exports (GA4/Ads/CRM)

## Execution Prompt
```
Act as an analytics lead building the monthly report for [CLIENT_NAME], who
receives [SERVICES_DELIVERED]. Metrics available: [KEY_METRICS]. Data:
[PASTE DATA SUMMARY]

1. Executive Summary: 3-4 sentences, plain English, leading with the single
   most important number this month and what it means for their business
   (revenue/leads/cost — not vanity metrics like impressions alone).
2. Channel-by-Channel Breakdown: metric table + one "so what" insight sentence
   per channel — never just a metrics dump.
3. What We Changed & Why: 2-3 optimizations made this month and the
   hypothesis behind each.
4. Next Month's Focus: 2-3 priorities with expected impact.
5. Flag one risk or watch-item proactively (declining metric, rising CPC,
   seasonality) — surfacing bad news first builds more trust than clients
   discovering it themselves.
```

## Deliverable Template
Executive Summary → Channel Breakdown Table with Insights → Changes Made & Rationale → Next Month Focus → Risk/Watch Flag

## Premium & QA Notes
Never present a metric without a "so what" — a table of numbers is a spreadsheet, not a report. Always verify numbers against the actual source platform before sending; a wrong number in a report destroys trust instantly and is disproportionately damaging versus its likelihood.
