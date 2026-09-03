# The Daemon Set — 14 scheduled jobs (GitHub Actions, ₹0)

> ## ⚙ ACTIVE MODE: SEMI-AUTOMATIC (Me + Arena agent + GitHub)
> **Decision 2026-09-03:** no paid AI tier, no API keys, no self-hosted box. The 14 jobs below are the
> **full-auto mode we switch on when revenue funds a paid tier.** What runs today is:
>
> | Original job | Now runs as | Who runs it |
> |---|---|---|
> | D01 morning-brief | `morning` ritual | Arena session, Mon/Wed/Fri 08:00 |
> | D02 lead-sweep | `intake` ritual | Arena session, on arrival |
> | D03 competitor-watch | folded into `produce`/`prep` | Arena session, when relevant |
> | D04 client-sentiment | folded into `report` + `retro` | Arena session |
> | D05 pipeline-health | `morning` + Actions **A2** | You + free CI |
> | D06 metric-pull | `ingest` (paste CSV / screenshot) | You, 8 min/client/wk |
> | D07 content-factory | `produce` ritual | Arena session, 3×/week |
> | D08 weekly-digest | `report` ritual + Actions **A2** | You + free CI |
> | D09 portal-build | Actions **A3** → public repo Pages; client artefact = one HTML/PDF file | free CI |
> | D10 finance-check | `money` ritual | Arena session, Mon/Fri |
> | D11 renewal-radar | folded into `money` + `retro` | Arena session |
> | D12 retrospective | `retro` ritual | Arena session, Sun |
> | D13 ai-radar | folded into `retro` (monthly emphasis) | Arena session |
> | D14 backup-audit | `git push` + Actions **A3** + a monthly zip | free CI |
>
> Ritual scripts: **`os/sessions/RITUALS.md`**. Full rationale and upgrade ladder:
> **`design/05-SEMI-AUTO-3-ACTOR.md`**. Everything below stays valid as the spec for later.

The OS is "automatic" in the only way a solo agency can afford: **scheduled batch jobs on free
infrastructure, writing results back into the repo**, not a swarm of bots pretending to be employees.
Every daemon: one YAML file in `os/daemons/`, reads state → does work → commits output → appends to
`memory/log/` → pushes a 1-line alert to a phone.

## Cadence — the fourteen, in one line each (full spec: git history of design/01 + the site)
**Full-auto mode only.** Each row's *output contract* is unchanged; what changes is who runs it — the ritual
in `os/sessions/RITUALS.md`, or the free CI below. D01 brief · D02 lead sweep+score · D03 competitor watch ·
D04 sentiment/amber-red · D05 pipeline orphans · D06 metric pull · D07 content factory (Sun) · D08 weekly
digest (Fri) · D09 portal/build → **replaced by the report file** · D10 finance+dunning · D11 renewal radar ·
D12 retro · D13 AI/stack radar · D14 backup+audit.

## Non-negotiable engineering rules
1. **Idempotent.** Re-running a job must not duplicate work or double-send.
2. **Never destructive.** Daemons write new files/versions; they don't delete or overwrite client data.
3. **Rate-limit aware.** Read `os/stack/limits.yml`; if a quota is at 80%, park the job and report. Do not
   brute-force a free tier — that's how you lose the tool for a month.
4. **No external sends.** Everything client-facing lands in `10-outbox/`. (Law IV.)
5. **Fail loud, in one line.** A silent failure is worse than a red alert. Every daemon posts a
   `✅/⚠️/❌ D0X · client · action` line to the phone channel and to the log.
6. **Small, reviewable diffs.** One commit per job per run, message `D0X: <what changed>`.

## Where things run (full-auto mode, if we ever buy it)
- **Scheduling + compute:** GitHub Actions (2,000 free min/month on the free plan — ~50 hrs of compute; the daemons above use roughly 150–300 min/month).
- **State:** this repo. Files are the database; git is the audit trail; the diff is the changelog.
- **Heavy/long flows, webhooks, chatbots:** n8n on Oracle Cloud Always Free (note: 2026 limits are
  ~2 OCPU/12GB ARM — sized fine for this, but see `stack/FREE-STACK.md` for the risk and the fallback).
- **Static delivery:** Cloudflare Pages / Vercel free for portals and public site.
- **Fallback ladder:** if a daemon breaks, the *manual* version of the same ritual is already written in
  the relevant playbook. The system degrades to a documented routine, never to silence.

## What "automatic" honestly means at this scale
| Layer | Automation level |
|---|---|
| Research, drafting, tracking, reporting, scheduling, filing, QA scoring, alerts | **100% automatic** |
| Anything involving money, promises, scope, or relationship repair | **AI drafts → human sends** |
| Strategy, taste, the client's trust | **Human, always** |

That middle row is not a limitation to apologise for. It's the design. Agencies that automate the second
row are the ones that end up in refunds and screenshots.

---

# The three jobs that ARE automated today (no keys, no AI, ~60 min/month of 2,000)
These are the only workflows in `os/daemons/*.yml` while in semi-auto mode. All three are pure file
operations — they cannot leak a secret, blow a quota, or make a client-facing decision.

| ID | Trigger | File | Does | Manual twin |
|---|---|---|---|---|
| **A1** `week-start` | cron Mon 06:00 IST | `A1-week-start.yml` | Reads each `clients/*/07-calendar/`, creates this week's ticket stubs, appends the week header to `STATEBOARD.md`, opens `memory/log/<monday>.md` | `produce` regenerates anything missing |
| **A2** `friday-pack` | cron Fri 12:00 IST | `A2-friday-pack.yml` | Collects the week's commits per client into `12-reviews/<week>_raw.md`; fails if any merged deliverable has no gate score; checks every lead/ticket has a dated next action | `report` + `morning` cover it |
| **A3** `validate-publish` | on push / PR | `A3-validate.yml` | Lints markdown + links + paths; blocks the red lines (unsourced number pattern, a client-facing file outside `10-outbox/`, secrets-looking strings); builds `site/` → deploys the **public** marketing repo to GitHub Pages | local `npm test` / just ignore, nothing internal is blocked |

Rules that keep these free: **Linux runners only** (Windows = 2× minutes, macOS = 10×), no large-runner
labels, every job exits in under 2 minutes, `concurrency` group set, and no job may `workflow_dispatch`
itself into a loop. Public repo Actions are unmetered — so **the site build lives on the public repo**, the
private repo runs the 60 minutes.
