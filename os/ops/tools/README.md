# Tools — the small programs that make the repo run
**Built (2026-09-03):** `public-guard.sh` (CI + local: refuses client data, secrets, PII, licences, oversized
files in a public repo) and `vault.sh` (seal / open / cat / rotate the encrypted ledger — tested both ways).

**To build, in this order:** `scaffold-client.mjs` (create the 14 folders inside the vault + MANIFEST) →
`report.mjs` (client folder → the one self-contained HTML/PDF the client receives) → `gate.mjs` (score a
deliverable, write the number into the ticket) → `pipeline.mjs` (append/serve lead rows for the intake ritual).
**Dropped from the plan:** `build-portal.mjs` (portals replaced by the report file, design/07) and
`pull-metrics.mjs` (API pulls replaced by the `ingest` ritual — you paste, the agent parses).

Principles: plain Node, no framework, no DB. Read markdown/YAML, write markdown/YAML. Each tool has a `--dry-run`.
Every tool must be replaceable by a human with the playbook in under 30 minutes — if not, simplify it.
