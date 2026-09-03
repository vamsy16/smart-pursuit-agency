# The Pipeline — 8 stages, one rule

**Rule: every item is in exactly one stage, has one owner, and one next action with a date. No exceptions.**
That single constraint is what makes a solo pipeline *manageable* and an agency pipeline *profitable*.

```
LEAD ─→ QUALIFIED ─→ DIAGNOSED ─→ PROPOSED ─→ NEGOTIATING ─→ WON
  │         │            │            │             │
  └─────────┴────────────┴────────────┴──→ PARKED (90d nurture) ──→ LEAD
                                   └────→ LOST (reason required)
WON ─→ ONBOARDING ─→ DELIVERING ─→ (monthly reviews) ─→ RENEWED / EXPANDED / CHURNED
```

| Stage | Entry condition | Exit SLA | Auto actions (D02/D05) |
|---|---|---|---|
| LEAD | intake form received or reply captured | score within 4h | Engine 00 score; drafted first reply to `10-outbox/` |
| QUALIFIED | score ≥60, budget confirmed verbally | call booked <24h | calendar hold, prep brief generated |
| DIAGNOSED | call notes filed | proposal <72h | audit checklist run, competitor snapshot |
| PROPOSED | proposal sent + tracked | chase T+1/3/7/12 | follow-up drafts, Loom script |
| NEGOTIATING | client asks for change | decision <7d | scope-swap sheet (reduce scope, never price) |
| WON | signed + advance received | kickoff in <3 working days | client folder scaffolded, ledger, invoices scheduled |
| PARKED | explicitly "not now" | re-touch every 30d | 2 useful items per touch, no nagging |
| LOST | no after 4 chases or a "no" | retro within 7d | reason coded, feeds D13 + Engine 01 |
| DELIVERING | past day-30 | weekly digest forever | D08, D04 sentiment, D11 renewal radar |

## Files
- `pipeline/leads.yml` — one line per lead: id, name, company, vertical, score, tier, stage, owner, next_action, next_action_due, value ₹, source rail.
- `pipeline/tickets/NNNN-slug.md` — the work unit (see `os/AGENTS.md`). Internal only in the public zone:
  a client's tickets live in `clients/<slug>/05-tasks/tickets/`, inside the vault.
- `pipeline/lost.md`, `pipeline/won.md` — the two files that make you smarter: reasons, sizes, and what to change.

## Targets (measured weekly, D12)
Lead→call **<24h** · call→proposal **<72h** · proposal→signature **<10d** · win rate on proposals ≥35% ·
average deal ≥₹9L (project) / ≥₹1.5L/mo (retainer) · **pipeline coverage ≥6 months of fixed costs**.

## The dashboard that keeps you honest
A single table in `STATEBOARD.md`, five columns: **Leads this week · Calls booked · Proposals out ·
Signed ₹ · Cash collected ₹.** Everything else in the pipeline is decoration. If "calls booked" is the
weak column for two weeks, the fix is in Engine 01 — not in working harder.
