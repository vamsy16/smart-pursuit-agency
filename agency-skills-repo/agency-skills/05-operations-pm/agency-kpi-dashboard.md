# Agency Business Health Dashboard (KPIs Beyond Cash Flow)

## Purpose
The finance skill tracks cash flow (money in/out). This tracks whether the AGENCY ITSELF is healthy — revenue quality, capacity risk, and client concentration risk — the metrics that predict whether ₹10L/month is sustainable or fragile.

## When to Trigger
Set up once, review monthly.

## Inputs Required
Current client list with retainer values, team/freelancer capacity, pipeline status

## Execution Prompt
```
Act as an agency operations/finance advisor building a monthly business
health dashboard. Current clients and retainers: [PASTE LIST]. Current
capacity: [PASTE TEAM/FREELANCER CAPACITY]. Pipeline: [PASTE PIPELINE STATUS]

1. Core KPI List with formulas: MRR (Monthly Recurring Revenue), client
   concentration risk (% of revenue from single largest client — flag if
   over 25-30%), average retainer value, gross margin per client (retainer
   minus direct costs: tools, freelancers, ad spend management overhead),
   utilization rate (capacity used vs. available), pipeline coverage ratio
   (pipeline value vs. revenue target).
2. Build a simple monthly dashboard structure (spreadsheet-ready: rows =
   metrics, columns = last 3 months + trend) I can maintain in 15 minutes/month.
3. Flag 3 early-warning thresholds specific to a solo/lean agency (e.g.,
   "if any single client exceeds 30% of revenue, prioritize new client
   acquisition even if at capacity" ) and what action to take when each is
   crossed.
4. Give a simple formula for "true hourly value" per client (retainer minus
   costs, divided by hours actually spent) so I can spot underpriced clients
   quietly eating margin.
```

## Deliverable Template
KPI List with Formulas → Monthly Dashboard Template Structure → Early-Warning Thresholds + Actions → True Hourly Value Formula

## Premium & QA Notes
Client concentration risk is the most commonly ignored metric by solo agency operators — losing one client that's 40% of revenue is an existential event, not a normal setback. Review this monthly even when things feel fine; the point is catching risk before it's a crisis, not after.
