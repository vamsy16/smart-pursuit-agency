# AGENTS.md — Kernel Boot Order

Read this **before doing any work in this repository.** This is what makes a fresh chat
in Arena behave like a trained employee instead of a stranger.

## 1. Boot sequence (mandatory, in order)

1. `os/SOVEREIGN.md` — constitution, laws, red lines.
2. `os/kernel/*.md` — behaviour, voice, quality gate, escalation rules.
3. `os/memory/STATEBOARD.md` — what is live right now: clients, pipeline, cash, blockers.
4. The relevant **playbook** for the task in `os/playbooks/`.
5. The client's folder in `os/clients/<slug>/` if the task is client-specific.

Never start client work without steps 1–2 and 4–5. Never answer a business question from memory
when a file holds the truth.

**Vault protocol (single public repo).** Client records are never stored as plaintext here. Per session:
`bash os/ops/tools/vault.sh open <slug>` → work in `.vault-work/<slug>/` (gitignored) →
`vault seal <slug>` → the ciphertext `vault/<slug>.age` is the commit. The passphrase comes from
`$SMARTPURSUIT_KEY` if set in the session env; if it is not set, ask once, never echo it, never write it to
a file, and never put it in a commit message, a log line or a chat summary. If `vault/` is empty, this
client does not exist yet — say so instead of inventing state.

**Session protocol.** Every working conversation opens with a ritual trigger (`morning`, `intake`,
`produce <slug> <type>`, `report wkNN`, `prep <slug>`, `log:`, `money`, `ingest <slug>`, `retro`) and closes
with a commit or PR plus one line in `memory/log/`. Deliverables go to a branch → PR (that is the approval
gate); internal files commit directly. See `os/sessions/RITUALS.md` and `design/05-SEMI-AUTO-3-ACTOR.md`.

## 2. The 10 OS rules for agents

| # | Rule |
|---|---|
| A1 | **Files are the database.** If it isn't written into the repo, it didn't happen. |
| A2 | **Write before you report.** Update the state file first, then tell the human. |
| A3 | **One job = one output path.** Deliverables land in the exact folder the playbook names. |
| A4 | **Never invent numbers, sources, testimonials or metrics.** (`SOVEREIGN` Law II) |
| A5 | **Never send externally.** Produce a draft into `os/clients/<slug>/10-outbox/`; a human sends. |
| A6 | **Run the gate.** No deliverable is "done" until `kernel/quality-gate.md` scores ≥90. |
| A7 | **Log it.** Append to `os/memory/log/YYYY-MM-DD.md` — one line per action, per client. |
| A8 | **Batch, don't poll.** Work happens inside a named ritual (`os/sessions/RITUALS.md`), not scattered chat. One ritual, one output set. |
| A8b | **Semi-auto mode is active.** No AI API keys, no external schedulers. The Arena session *is* the daemon; the three key-free Actions (A1/A2/A3) are the only automation. Client artefacts ship as files (HTML/PDF), not hosted portals. |
| A8c | **Checkpoint every sub-step.** Commit before moving on — a session that dies at minute 3 must not lose 25 minutes. |
| A9 | **Respect the free tier.** Check `os/stack/limits.yml` before using a metered service. If near a limit, say so — don't blow the month. |
| A10 | **Escalate early, escalate small.** Unknowns get flagged in one line, not buried in a 400-word summary. |

## 3. Task intake

Every unit of work starts from a **ticket**. Two homes, one format: internal build work is a public file in
`os/pipeline/tickets/`; **any ticket that names a client lives inside that client's sealed folder**
(`05-tasks/tickets/`), because a client slug in the public zone is a leak even with no other detail.
The guard refuses `client: <anything but internal>` in `os/pipeline/**` and `os/ops/**`.
Format: `NNNN-slug.md` with YAML frontmatter:

```yaml
---
id: 1042
client: internal            # a real client ⇒ vault, never this path
engine: delivery            # leadgen | sales | delivery | reporting | retention | ops
playbook: PB-07-content-factory
priority: P1                # P1 revenue-blocking, P2 this week, P3 housekeeping
status: todo                # todo | ai-doing | needs-review | human-doing | done | blocked
sla_due: 2026-09-05
score: null                 # filled by quality-gate, 0-100
---
Objective: ...
Inputs: [paths]
Output: [exact paths to write]
```

Movement through `needs-review` is **mandatory** for anything a client will see. `ai-doing → done`
without a review step is a policy violation for external-facing work.

## 4. Naming

- Clients: lowercase `kebab-slug` (e.g. `apex-realty`). Never change a slug after signing.
- Deliverables: `YYYY-MM-DD_type_topic_v01.ext` inside the client's numbered folder.
- Playbooks: `PB-NN-name.md`, numbered, never renumbered.
- Daemons: `DN-NN-name` (scheduled job).

## 5. If you are confused

Write the confusion into `os/memory/QUESTIONS.md` as a checkbox, choose the **safest
conservative** action for the deliverable, mark the ticket `needs-review`, and say the confusion
out loud in your reply. Silence on an unknown is the only unforgivable error.
