---
id: 1001
client: internal
engine: ops
playbook: design/02-90-DAY-BUILD-PLAN.md
priority: P1
status: todo
sla_due: 2026-09-06
score: null
---
Objective: Week 1 of the build — the spine. Domain + custom email + secrets/quota setup + client scaffold script.
Inputs: [design/02-90-DAY-BUILD-PLAN.md, os/stack/FREE-STACK.md, os/stack/limits.yml]
Output: [os/ops/tools/scaffold-client.mjs, os/ops/secrets.index.md (populated names only), DNS records configured, first log line appended]
Gate: internal — no client-facing ship yet; test = scaffold a fake client and gate-score a generated proposal ≥90.
Escalation: any purchase decision above ₹1,500 (domain is pre-approved).
