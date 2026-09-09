# Invoicing, Payment Terms & India Compliance Basics

## Purpose
Get paid on time, every time, with clean, compliant documentation — cash-flow discipline is what actually keeps an agency alive, not just revenue.

## When to Trigger
Contract signing (set terms), monthly (invoicing cycle), and any late-payment situation.

## Inputs Required
`[CLIENT_NAME]`, `[MONTHLY_RETAINER_AMOUNT]`, `[PAYMENT_DUE_DATE]`, `[GST_REGISTERED: yes/no]`

## Execution Prompt
```
Act as an agency finance/ops consultant. Client: [CLIENT_NAME], retainer
[MONTHLY_RETAINER_AMOUNT]/month, due [PAYMENT_DUE_DATE], GST status
[GST_REGISTERED].

1. Draft a standard payment terms clause for contracts: due date, late fee %,
   work-pause clause if payment is overdue beyond X days, and advance-payment
   requirement for new clients (recommend a %).
2. Draft an invoice template structure appropriate for India (GST line items
   if applicable, HSN/SAC code placeholder, TDS note for the client to
   account for their deduction obligation under Section 194J/194C as
   applicable — flag that I should confirm exact section with a CA).
3. Draft a polite-but-firm late payment follow-up sequence (3 stages: friendly
   reminder → firm reminder with late fee notice → work-pause notice).
4. Give me a simple monthly cash-flow tracking structure (expected in, actual
   in, overdue, upcoming costs) I can run in a spreadsheet.
```

## Deliverable Template
Payment Terms Clause → Invoice Template Structure → 3-Stage Late Payment Sequence → Cash-Flow Tracker Structure

## Premium & QA Notes
Always take an advance/retainer-in-advance (recommend 50-100% upfront for new clients, net-15 for established ones) — this is standard for premium agencies and protects cash flow. GST/TDS specifics are client and structure-dependent — this skill produces a strong draft, but confirm final tax treatment with a qualified CA before finalizing invoice templates.
