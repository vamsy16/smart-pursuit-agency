# Tracking & Measurement Infrastructure (Analytics Foundation)

## Purpose
Every other reporting/optimization skill in this repo assumes clean data. This skill IS that assumption — it builds and verifies the tracking foundation before a single rupee of ad spend or a single report goes out. Bad tracking is the single most common cause of agency-client trust breakdown (your number ≠ their number).

## When to Trigger
Day 1-3 of onboarding (before any campaign launches or first report is due), and audited monthly.

## Inputs Required
`[CLIENT_WEBSITE]`, `[PLATFORMS_IN_USE]` (GA4, Meta Pixel, Google Ads, CRM, etc.), `[KEY_CONVERSION_EVENTS]` (purchase, lead form, call, signup)

## Execution Prompt
```
Act as a marketing analytics/tracking implementation specialist setting up
measurement for [CLIENT_WEBSITE]. Platforms in use: [PLATFORMS_IN_USE].
Key conversions to track: [KEY_CONVERSION_EVENTS].

1. Tracking Audit Checklist: GA4 property setup correctness, conversion event
   configuration, Meta Pixel + Conversions API (server-side) status, Google
   Ads conversion tracking/tag linkage, cross-domain tracking if applicable,
   consent mode / cookie banner impact on data collection.
2. UTM Governance Standard: a fixed naming convention (source/medium/campaign/
   content) that every channel (paid, email, social, influencer) must follow,
   so campaign-level reporting is comparable across channels without manual
   cleanup.
3. Conversion Definition Doc: for each of [KEY_CONVERSION_EVENTS], define
   exactly what fires it, its value (if e-commerce), and which platform is
   the "source of truth" when platforms disagree (recommend: CRM/backend data
   as source of truth for revenue, ad platforms for cost/efficiency signals).
4. Data Discrepancy Playbook: the 3 most common reasons GA4, Meta, and Google
   Ads numbers won't match each other (attribution windows, view-through vs
   click-through, bot filtering) and the explanation script to give a client
   who asks "why don't these numbers match?"
```

## Deliverable Template
Tracking Audit Checklist (Pass/Fail/Needs Fix per item) → UTM Naming Convention Doc → Conversion Definition Table (Event | Trigger | Value | Source of Truth) → Discrepancy Explanation Script

## Premium & QA Notes
- Run this BEFORE the first ad rupee is spent or first report is promised — fixing tracking after a month of bad data means you can never fully trust that month's numbers.
- Verify every claim in the audit against the live GA4/Ads/Pixel Helper tools yourself — AI can tell you *what* to check, not confirm the live account's actual state.
- Put the "why don't these numbers match" explanation in writing during onboarding (proactively), not reactively when a client already looks suspicious.
