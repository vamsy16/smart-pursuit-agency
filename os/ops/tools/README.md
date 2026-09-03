# Tools — the small programs that make the repo run
Week 1–2: `scaffold-client.mjs` (14 folders + MANIFEST.yml), `gate.mjs` (score a deliverable, write it to the ticket).
Week 5: `build-portal.mjs` (client folder → static portal, deploy on push via D09).
Later: `pull-metrics.mjs` (GA4/GSC/Ads → `04-analytics/`, with `sources.md` provenance), `invoice.mjs`.

Principles: plain Node, no framework, no DB. Read markdown/YAML, write markdown/YAML. Each tool has a `--dry-run`.
Every tool must be replaceable by a human with the playbook in under 30 minutes — if not, simplify it.
