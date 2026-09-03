# Finance & Compliance (the boring half that ends agencies)

Revenue ≠ cash. A solo agency with ₹40L on paper and ₹0 in the bank dies in month 4 while looking
successful. This file is the minimum viable finance system: **₹0 of software, one hour a week.**

## The ledger (single file, updated forever)
`vault/finance.age` → `finance/ledger.yml` inside it. **Never a public path:** one row names a client and an amount.
Decrypt, edit, re-seal in the same session — the `money` ritual does this and nothing else.
```yaml
- date: 2026-09-14
  type: retainer          # retainer | project | audit | refund | expense | tax
  client: <slug>
  gross: 150000
  tax: 0                  # GST if registered
  collected: 150000       # actual cash, not promise
  method: NEFT
  invoice: INV-2026-014
  notes: month 1 of 6
```
Rules: **cash-in is the only truth.** `collected` is never copied from `gross`. Every invoice has an
ID, sequential per FY, and a matching folder in `clients/<slug>/11-finance/`.

## Invoicing (Zoho Books Free — under ₹25L turnover; 1 user; ~1,000 invoices/yr)
- Retainers: monthly auto-invoice on the 1st for the current month, due **on receipt** (not net-15:
  net terms are how small agencies finance their clients).
- Projects: 50% advance → 25% at milestone → 25% at handover, or 40/60 for two-week sprints.
  No work before the advance lands. "Pay us next week" is the beginning of a write-off.
- UPI for ≤₹2L, NEFT/IMPS for more, cards only when the client insists (2% + GST — pass it through).
- International: Wise Business receive in USD/GBP/AED → INR; invoice in ₹ *or* USD with a fixed-rate
  note + 3% FX buffer; TDS by overseas clients is a real issue for Indian service exporters — get the
  90-day treatment sorted with a CA *before* invoice #1 in USD.

## Collections ladder (D10 runs it; you only see exceptions)
D-0 due → polite invoice + payment link → **D+2** "any issue with the invoice?" → **D+5** deliverables
pause (auto-generated, non-emotional, in writing) → **D+14** escalation note + services formally on hold.
The pause is the whole trick: work stops, tone stays warm, and you never have to be aggressive.
**Put the pause clause in the MSA on day 1** so it's policy, not personality.

## Weekly 20 minutes (Fri)
Reconcile `collected` vs bank · forecast next 30 days of committed payables · runway months =
(fixed outflow × 3) is the minimum buffer before any tool/hire spend.

## Monthly P&L, 5 lines only
`Collected · Direct cost (bench + tools + ad-account fees passed through) · Fixed (₹0–3k target) ·
Tax provision (set aside 30% of profit, monthly, in a separate account — non-negotiable) · Owner draw.`
Settle on yourself a fixed monthly salary once revenue covers 3 months of it. Founder-draw-by-schedule
is what makes an agency feel real and stops the "reinvest everything" panic-buying of tools.

## India compliance checklist (do it in order, not in a rush)
1. **Business form:** proprietorship is fine to start (₹0, 1 week). Move to Pvt Ltd when you sign a
   ₹10L+ client that requires it, or when revenue passes ₹25L/yr, or when you hire.
2. **Current account + UPI** in the business name. Never mix personal.
3. **MSA + SOW templates** reviewed once by a lawyer (₹8–15k). Includes: payment-on-receipt, 48h
   auto-approve, pause-on-late-payment, IP transfer on full payment, client-supplied-assets warranty,
   no-guaranteed-results clause, mutual confidentiality, termination with 30 days' notice.
4. **GST:** registration mandatory for services above ₹20L turnover (lower in special states);
   **and you cannot invoice international clients without it** (LUT for zero-rated exports) — so
   the "sell to the US" plan makes GST registration a month-2 item, not a month-12 item.
   Once GST-registered, Zoho free won't file returns → Standard ₹899/mo. That's a ₹10,800/yr decision.
5. **TDS/26AS, advance tax** (Q1–Q4), **ITR** via a CA (₹3–8k/yr) — buy the year, not the panic.
6. **Client data agreement (DPA)** for international clients; free to template, expected at $5k/mo.
7. Insurance (professional indemnity) when project value >₹20L — cheap relative to a single dispute.

## What to refuse
Any client asking you to invoice through a personal account, "share" their ad billing, take 0% advance
on ₹10L scope, or accept net-60 with no written reason. Those are not admin details; they are the shape
of the relationship, and they always cost more later than the deal earns now.
