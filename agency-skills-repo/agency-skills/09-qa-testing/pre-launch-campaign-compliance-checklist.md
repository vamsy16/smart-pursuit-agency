# Pre-Launch Campaign QA & Platform Compliance Checklist

## Purpose
Prevent the two most disruptive operational failures in paid media: ad account suspensions/bans, and disapproved/underperforming launches caused by avoidable errors — both directly threaten a client's revenue and your retainer.

## When to Trigger
Before every campaign launch or major campaign edit — mandatory gate, alongside (not instead of) `multi-perspective-qa-checklist.md`.

## Inputs Required
`[PLATFORM]` (Meta/Google/LinkedIn/etc.), campaign brief, ad creative, landing page URL, `[CLIENT_INDUSTRY]` (some industries have extra restricted-category rules — finance, health, alcohol, etc.)

## Execution Prompt
```
Act as a paid media compliance and QA specialist. Reviewing a campaign about
to launch on [PLATFORM] for a client in [CLIENT_INDUSTRY]. Campaign brief and
creative: [PASTE BRIEF/CREATIVE]. Landing page: [PASTE URL/CONTENT SUMMARY]

1. Policy Risk Scan: flag any language, imagery, or targeting choice likely
   to trigger [PLATFORM]'s ad policy review or restricted-category rules for
   [CLIENT_INDUSTRY] (e.g., before/after claims in health, guaranteed returns
   in finance, restricted targeting categories).
2. Landing Page Consistency Check: does the landing page match the ad's claim,
   offer, and destination exactly (platform policies increasingly enforce
   ad-to-page consistency)? Flag mismatches.
3. Account Health Checklist: payment method valid, no recent unresolved
   disapprovals on the account, pixel/conversion events firing correctly
   (cross-reference with tracking setup), domain verified if required.
4. Launch-Day Checklist: budget caps set correctly, schedule/timezone
   correct, correct campaign objective selected, UTM parameters applied
   per governance standard, tracking verified live before spend starts.
5. Rollback Plan: what to do in the first 2 hours post-launch if the ad gets
   disapproved, the account gets flagged, or performance is wildly off
   expected benchmarks.
```

## Deliverable Template
Policy Risk Scan (flagged items + severity) → Landing Page Consistency Check → Account Health Checklist (Pass/Fail) → Launch-Day Checklist → 2-Hour Rollback Plan

## Premium & QA Notes
- This checklist runs on EVERY launch, not just "risky" ones — account suspensions often come from small, easy-to-miss policy violations, not obviously risky campaigns.
- Never rely on AI's policy knowledge alone for final judgment — platform ad policies change frequently; verify current rules against the platform's live policy center for regulated industries.
- Keep a log of every disapproval/suspension incident and its root cause — feed patterns back into this checklist so recurring mistakes stop recurring.
