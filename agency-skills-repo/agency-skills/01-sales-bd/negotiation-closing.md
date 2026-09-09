# Negotiation & Closing

## Purpose
Protect premium pricing while closing deals — avoid the two failure modes: discounting into unprofitability, or losing deals by being rigid.

## When to Trigger
After proposal is sent and client responds with objections, silence, or a counter.

## Inputs Required
- `[OBJECTION_TEXT]` (what the client actually said)
- `[DEAL_VALUE]`, `[MARGIN_FLOOR]` (your minimum acceptable price)

## Execution Prompt
```
Act as a senior sales negotiator. A prospective client raised this objection
after receiving our proposal (deal value [DEAL_VALUE], my minimum acceptable
price [MARGIN_FLOOR]):

"[OBJECTION_TEXT]"

1. Classify the objection: Price / Trust / Timing / Authority / Fit.
2. Give me a response script that does NOT immediately discount — instead,
   trades scope, timeline, or payment terms for any price movement.
3. Give me one "walk-away" version of the response, for use if this is a
   low-value prospect not worth chasing.
4. Give me a follow-up sequence (3 touches over 2 weeks) if the client goes
   silent after the proposal.
```

## Deliverable Template
Objection type → Primary response script → Trade-off options table (what you give up if price drops) → Walk-away script → Silent-prospect follow-up sequence

## Premium & QA Notes
Rule: never discount without removing scope. "I can do that budget, but we'd need to reduce to [X channels] / extend timeline to [Y]." This protects margin and trains clients that price = scope, permanently.
