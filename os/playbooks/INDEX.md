# Playbooks — the operating manual

> **STATUS: the 24 rows below are a numbering scheme and a backlog, not files.** The working playbook for
> each engine currently *is* `os/engines/0N-*/playbook.md`. A `PB-NN` becomes its own file only when a
> daemon or a second role needs to call it, or when it outgrows its engine. Do not go hunting for `PB-07.md`.

A playbook is how a company of one gets scale: **an SOP written like a man page**. If a task is done
twice by hand, it becomes a playbook; a playbook is how a daemon is specified; a daemon is how the
playbook stops needing you.

Format (mandatory — the format is what makes it executable):
```
PB-NN · Title
Trigger:        what starts it
Inputs:         files / data / access required
Steps:          numbered, unambiguous, tool-agnostic where possible
Output:         exact paths + format
SLA:            expected duration
Gate:           which section of kernel/quality-gate.md applies
Failure modes:  what breaks, and what to do instead
Owner:          role (R1–R9) / human?
```

## Index

| # | Playbook | Trigger | Output |
|---|---|---|---|
| PB-01 | New-lead intake & scoring | form submitted / reply | scored lead + drafted first reply |
| PB-02 | Tier-C rejection | score <40 | one-message no, reason logged |
| PB-03 | Discovery-call prep | call booked <24h | 1-page prep brief |
| PB-04 | Proposal assembly | call done | 8-page proposal in outbox |
| PB-05 | Follow-up sequence | proposal sent | T+1/3/7/12 drafts |
| PB-06 | Client audit (Day 1–3) | WON | 25-page findings + 90-day plan |
| PB-07 | Content factory | weekly Sun | briefs → drafts → gate ≥90 |
| PB-08 | Paid campaign build | strategy approved | account structure + creatives + stop rules |
| PB-09 | Weekly optimisation log | Mon | actions taken, why, next watch |
| PB-10 | Design batch / template system | Wed | 6–12 assets + specs + export pack |
| PB-11 | Client request triage | form entry | ticket + owner + SLA |
| PB-12 | Weekly digest | Fri 16:00 | 5-block digest draft |
| PB-13 | Monthly review deck | month-end | 10-slide MBR + decision list |
| PB-14 | QBR / renewal pack | day -60 | renewal + expansion proposal |
| PB-15 | Incident & rework response | client complaint | 3 response options + fix + patch |
| PB-16 | Invoice & dunning | D10 | invoice/reminders in outbox |
| PB-17 | Case study generation | strong month | proof pack, anonymised + named |
| PB-18 | Autopsy (public teardown) | weekly | 1,200w + 8 slides + script |
| PB-19 | Outbound list build & personalise | Tue/Thu | 40 researched leads + 40 notes |
| PB-20 | Onboarding access pack | WON | credentials request, SLAs, calendar |
| PB-21 | Offboarding & handover | churn | archive + free 90-day plan + asset handover |
| PB-22 | Bench job brief & review | capacity Red | freelancer brief + QA pass |
| PB-23 | Vertical/market research | new A1 lead in new vertical | crash brief (1 page) |
| PB-24 | Tracking & attribution verification | Day 5 | verified conversion path, documented |

**Every playbook ends with "Owner: human?" — if it isn't, the goal is that within 90 days it is never needed.**
Two things stay permanently human, by design: the client conversation (Law IV) and the judgment call on
what to do about a number (Analyst proposes; you decide what it means for a business you've met).
