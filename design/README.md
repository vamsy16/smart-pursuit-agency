# DESIGN — the blueprint folder

This folder is the **specification**. `os/` is the **system**. Read the spec once, live in `os/` daily.

| Doc | What it answers |
|---|---|
| `01-MASTER-BLUEPRINT.md` | What is being built, why this shape, and which files implement it |
| `02-90-DAY-BUILD-PLAN.md` | Week-by-week build, ship tests, Day-90 pass/fail table |
| `03-RISKS-AND-REALITY.md` | The five ways it fails, mitigations already wired, what money would change |
| `07-ONE-REPO-AI-OS.md` | **The active model: one public repo, public method + sealed vault, you + Arena + GitHub** |

Supporting design decisions, kept where they are used (not duplicated here):
- **Rules & roles** → `os/SOVEREIGN.md`, `os/kernel/`
- **Sessions & rituals** → `os/sessions/RITUALS.md` · **built code** → `os/ops/tools/` (guard + vault)
- **Engines** → `os/engines/00…05/`
- **Economics** → `os/pricing/RATES.md`, `os/ops/finance.md`
- **Infrastructure** → `os/stack/FREE-STACK.md`, `os/stack/limits.yml`, `os/daemons/RUNBOOK.md`
- **Time design** → `os/ops/cadence.md`, `os/ops/capacity.md`
- **Premium experience** → `site/index.html` (the visual design of the OS: what a client and a prospect see)

## Reading order if you have 10 minutes
`01` → `03` → `os/pricing/RATES.md` → `os/ops/cadence.md`.
Everything else is depth for when you build.

## What is *not* in this design (deliberately)
Client-facing mobile app · custom SaaS · agent swarms · paid automation platforms · hiring plan.
All four return once there are ≥10 paying clients; adding them earlier is how solo founders build a product
instead of a business. See `03-RISKS-AND-REALITY.md` §"What NOT to build".
