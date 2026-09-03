# 01 · MASTER BLUEPRINT — Smart Pursuit AI Operating System

**Design phase deliverable.** Nothing here is aspirational filler: every section resolves to a file that
already exists in `os/`, or to a build task in `02-90-DAY-BUILD-PLAN.md`.

---

## 0. The thesis in five lines

1. A one-person agency cannot compete on **labour**. It can only win on **leverage** — one senior brain,
   a machine that manufactures output, and a reputation that compounds.
2. So the OS is not "chatbots + automation". It is a **factory with a documented product line, a gate,
   and a pipeline** — and a founder who works only where a human is the product.
3. Price is set by **who you are to the client** (peer, owner, accountable), not by how many deliverables
   you list. Hence: public price card, hard floor, scope-not-price concessions, 6-month terms.
4. "Automatic" means: **scheduled daemons produce; the human approves; nothing leaves without a glance.**
   Automating the sending is where solo agencies die.
5. The scarce asset is not money. It's **your hours and your credibility** — so capacity and quality gates
   are first-class modules, not afterthoughts.

---

## 1. Architecture: three planes, one filesystem

```
CONTROL PLANE  · Vamsi (CEO, in person)
  law · money · relationship · taste · final send
        ▲                                   │
        │ 3 escalations/day max             ▼ approvals, 5-10 min/client
INTELLIGENCE PLANE · Agent + roles R1–R9 + playbooks + quality gate
  strategy · research · drafts · builds · analysis · QA scoring
        ▲                                   │
        │ tickets, briefs, state            ▼ files, portals, reports
EXECUTION PLANE · Daemons D01–D14 + free infra + client systems
  publishes, invoices, pulls data, updates dashboards, reminds, records
```

**Kernel** = `os/SOVEREIGN.md` + `os/AGENTS.md` + `os/kernel/*`. Constitution, boot order, roles, voice,
gate, autonomy matrix.
**Filesystem** = `os/` itself. Clients, pipeline, playbooks, memory. Git is the audit trail; a commit
message is the timesheet.
**Daemons** = GitHub Actions cron + n8n (heavy flows) — scheduled, idempotent, non-destructive, never send.
**Interface** = a public site, one self-contained weekly report file per client, and WhatsApp/email (drafts only).
A hosted per-client portal is not in the zero-budget design: see `design/07-ONE-REPO-AI-OS.md`. A read-only
private repo is the opt-in upgrade for a client who asks for always-on access.

Why this shape: it costs ₹0, it degrades gracefully (a daemon's manual version is already the playbook),
and every artefact is a file that any future model, freelancer or auditor can pick up. No subscription,
no vendor lock, no hostage data.

## 2. The five engines

| Engine | File | Turns into |
|---|---|---|
| 00 Triage & Fit | `os/engines/00-triage/` | enquiry → scored, tiered, routed or politely rejected |
| 01 Demand | `os/engines/01-leadgen/` | weekly signature work + search + outbound + authority → conversations |
| 02 Sales | `os/engines/02-sales/` | conversation → diagnosis → 8-page proposal → signature + advance |
| 03 Delivery | `os/engines/03-delivery/` | signed SOW → 47 production items/week through a 6-station line |
| 04 Reporting | `os/engines/04-reporting/` | data → portal, weekly digest, monthly MBR, public case study |
| 05 Retention | `os/engines/05-retention/` | signals → save the account, expand the fee, activate the bench |

Engines are **independent**. Engine 01 can run with no clients; 03 can run with 8; 04's portal can run
before a single line of code exists. Build them in dependency order, ship each in a week, never "in parallel".

## 3. The one thing that makes the ₹10L claim survivable

**The Quality Gate.** `os/kernel/quality-gate.md`: 100-point rubric, nothing ships under 90, a hostile
critique pass between draft and final. This is the only honest reason a solo operator can charge what a
team charges — because the *floor of output quality* is enforced by a process, not by whether you felt
good on Tuesday morning. Everything else in this design is logistics; this is standards.

## 4. Money model (target, month 12)

| | Now | M3 | M6 | M12 |
|---|---|---|---|---|
| Retainers live | 0 | 2 @₹1L | 4 @₹1.5L | 7 @₹1.8L |
| Projects (₹3–15L) | 0 | 1 | 2/qtr | 4/qtr |
| **MRR** | ₹0 | ₹2L | ₹6L | ₹12.6L |
| Fixed cost | ₹0 | ₹900 | ₹2.4k | ₹4.5k |
| Margin | — | 99% | 95% | 88% |
| Founder hrs/week | build | 18 | 15 | 12 |

Two numbers to keep on the wall: **MRR ÷ retainers ≥ ₹1.6L** (below that you're a freelancer with a logo)
and **fixed cost ≤ 5% of revenue** (the moment tooling and "scaling" consume margin, the leverage story dies).

## 5. What the founder does vs what the machine does — permanently

| You (never automate) | OS (never manual) |
|---|---|
| Discovery + closing calls | prep briefs, scoring, follow-up drafts |
| Pressing send on anything client-facing | drafting, filing, versioning |
| Judging a strategy against a business you've met | research, audits, first drafts |
| Saying no to bad-fit money | scoring leads so you see the fit first |
| Being on time and senior | reminders, SLAs, digests, dashboards |
| Deciding what to stop | measuring whether it mattered |

This table *is* the design brief. If a proposed automation moves a left-column row to the right column, it
is rejected. If a manual task keeps appearing in the right column, the fix is a daemon, not discipline.

## 6. The build order (why this sequence, not another)

1. **Constitution + gate first** — an agent without rules produces expensive noise.
2. **Triage + price card + one public autopsy** — demand before delivery, proof before promises.
3. **Portal + reporting** — the visible surface, because retention is the profit engine.
4. **Delivery line** — quota-driven, so growth is capped by design, not by collapse.
5. **Daemons last, not first** — you automate a process that already works on paper. Automating a
   broken process just makes broken faster and harder to see.

Full sequencing: `02-90-DAY-BUILD-PLAN.md`. Constraints and failure modes: `03-RISKS-AND-REALITY.md`.

## 7. Premium ≠ expensive

There is no paid tool in this design and no reason there should be — except a domain (₹700/yr) and a
lawyer-reviewed contract (₹8–15k once). What makes the thing feel premium is entirely non-monetary:
a public floor price, an audit with real numbers, a portal that updates itself, a digest that arrives the
same hour every Friday, a 10-slide review that ends in a decision, and work that never leaves the building
below 90/100. **None of that costs money. All of it costs discipline.**
