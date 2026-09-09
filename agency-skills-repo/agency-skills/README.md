# 🏢 Smart Pursuit — Digital Marketing Agency Skill Operating System

**Operating model:** You (Founder/Operator) + Any AI Chat (Claude, ChatGPT, Gemini, etc.)
**Target:** Run a premium, boutique-but-enterprise-grade agency capable of executing **₹10L+/month** in client work — solo or with a lean team — without looking, pricing, or behaving like a generic marketing agency.

This is not a "content pack." It's an **operating system**: every function of a real agency (Sales, Strategy, Delivery, Ops, Finance, Retention, QA, Legal) is broken into a "skill" — a self-contained playbook you paste into an AI chat, fill in the `[VARIABLES]`, and get back a ready-to-use, client-facing output.

---

## 📁 Repository Map (v1.1)

| Folder | Phase | What it does |
|---|---|---|
| `00-how-to-use` | — | How to run these skills with any AI, prompt discipline, variable system |
| `01-sales-bd` | Acquisition | Prospecting, outreach, discovery calls, proposals, pricing, negotiation, closing, **case-study/portfolio building**, **referral & partnership channel** |
| `02-client-onboarding` | Onboarding | Contracts, kickoff, expectation-setting, access/handover |
| `03-strategy-discovery` | SDLC: Requirements + Design | Audits, research, competitor teardown, strategy docs |
| `04-service-delivery` | SDLC: Build + Execute | SEO, Paid Media, Social, Content, Email/Automation, Web Dev, Branding, Analytics, Influencer, Video, **Tracking & Measurement Infrastructure** |
| `05-operations-pm` | SDLC: Manage | Project management, sprints, team/freelancer/vendor management, tool stack, **agency KPI/business-health dashboard** |
| `06-finance-payments` | Commercial | Pricing models, packages, invoicing, payment terms, India-specific (GST/TDS) |
| `07-retention-growth` | SDLC: Maintain | QBRs, upsell, churn prevention, expansion, **difficult client conversations** |
| `08-agency-positioning` | Brand of You | How the agency itself is positioned to *not* look like a commodity agency |
| `09-qa-testing` | SDLC: Test | Multi-perspective QA (viewer/competitor/behavioral), **pre-launch campaign compliance checklist** |
| `10-legal-compliance` | Risk | Contracts, NDAs, IP ownership, **data privacy / DPDP Act compliance** |
| `11-incident-response` | Risk | Ad account bans, downtime, breaches, PR incidents — first-hour playbook |

**v1.1 changes:** added tracking/measurement infrastructure, pre-launch campaign compliance QA, DPDP Act data-privacy addendum, case-study/portfolio-building (solves "no track record yet"), referral/partnership channel (reduces cold-outreach dependency), incident response playbook, difficult-client-conversation scripts, and agency-level KPI dashboard (client concentration risk, true margin per client). Also added `LICENSE`, `CONTRIBUTING.md`, `.gitignore` for a clean GitHub repo.

---

## 🧠 The Core Principle

Every skill file follows the same 6-part shape so any AI can execute it consistently:

1. **Purpose** — what business outcome this drives
2. **When to Trigger** — the exact moment in the client lifecycle to use it
3. **Inputs Required** — what you must feed the AI (client name, industry, budget, competitors, etc.)
4. **Execution Prompt / Workflow** — copy-paste instructions for the AI, step by step
5. **Deliverable Template** — the exact structure of the output (so it's client-ready, not a chat wall of text)
6. **Premium & Multi-Perspective QA Layer** — this is what makes it *not* look like every other agency (see below)

## 🎯 What Makes This "Premium" and Not Generic

Three filters are baked into every skill:

- **Viewer/Client Lens** — would the end customer of *my client* actually stop, feel something, and act? Generic agencies optimize for "looks professional." This system optimizes for **response**.
- **Competitor Lens** — before anything is finalized, the AI is explicitly instructed to critique the output as if it were a rival agency's pitch reviewer trying to find a reason to poach the client. If it survives that, it ships.
- **Behavioral/Psychological Lens** — every asset (proposal, ad, landing page, email) is checked against basic persuasion and decision-science principles (specificity, social proof, loss framing, cognitive ease, anchoring) — not fluffy "psychology," just testable levers.

This 3-lens QA pass is in `09-qa-testing/multi-perspective-qa-checklist.md` and is **referenced by every other skill** — treat it as a mandatory final gate, not an optional extra.

## 💰 Built for ₹10L+/month Execution

The pricing, packaging, and positioning skills (`06-finance-payments`, `08-agency-positioning`) are deliberately built around **retainer + performance hybrid models**, not one-off freelancer-style pricing — because ₹10L/month is a portfolio of 3–6 mid-to-large retainers, not one big project. The system is designed to help you build and run that portfolio solo, using AI as your "team" for research, drafting, QA, and reporting, while you own strategy, client relationships, and final judgment.

## 📖 Start Here
Before anything else, read the Master Guide — it explains why this system exists, has a complete reference table of all 34 skills (when to trigger each, what inputs each needs, how long each takes), and walks through one full client engagement end-to-end (a fictional D2C skincare brand, "GlowNest") showing exactly what gets run at every stage from first cold outreach to the quarterly retention review.

- 📄 **[`docs/Smart-Pursuit-Master-Guide.pdf`](docs/Smart-Pursuit-Master-Guide.pdf)** — the designed, branded version (recommended for reading/printing/sharing internally)
- 📝 **[`docs/MASTER-GUIDE.md`](docs/MASTER-GUIDE.md)** — the plain-markdown version (recommended for quick edits and version-controlled updates)

## 🔧 How to Use

1. Clone this repo.
2. Read `00-how-to-use/USAGE-GUIDE.md` first.
3. When you hit a task ("write a proposal", "audit a client's SEO", "build a 90-day content plan"), open the matching skill file, copy the **Execution Prompt** into your AI chat, fill the variables, and run it.
4. Always run the output through `09-qa-testing/multi-perspective-qa-checklist.md` before sending to a client.
5. Version-control your filled-in outputs per client in a `/clients/<client-name>/` folder (not included here — that's your operational data).

---
*This repository is a living operating system. Add new skills as your agency's edge cases grow — see `00-how-to-use/USAGE-GUIDE.md` for the template to create new ones in the same format.*
