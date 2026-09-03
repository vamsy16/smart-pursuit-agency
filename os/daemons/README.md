# Workflows — copy to `.github/workflows/` to switch on (60 seconds)

GitHub blocks an agent token from creating or editing anything inside `.github/workflows/` unless the
GitHub App is granted **Workflows: read & write**. So they live here as spec + ready-to-paste files, and
you enable them yourself. Nothing else in the OS needs that permission.

**To enable:** on GitHub, in this repo → *Add file → Create new file* → paste the name
`.github/workflows/public-guard.yml` → paste the contents of `A0-public-guard.yml` → Commit.
Repeat for `A3-site-publish.yml`. Then **Settings → Pages → Source: GitHub Actions** (one dropdown, or the
site job fails with "Pages not enabled"). From then on every push runs the guard and republishes the site.

| File | Name | Fires | Does |
|---|---|---|---|
| `A0-public-guard.yml` | `public-guard` | every push + PR | **Refuses client data in this public repo**: any real client folder, a lead row, an invoice/PDF/CSV, secret-shaped strings, an Indian mobile/GSTIN/PAN/card pattern, a file >1 MB, or an open-source LICENSE. Also checks internal links and paths. |
| `A3-site-publish.yml` | `site` | push touching `site/**` | Builds and publishes `site/` to GitHub Pages — free, because this repo is public. |
| `RUNBOOK.md` → A1/A2 | `week-start`, `friday-pack` | cron | Mechanical file jobs. **Put these in the private repo** — they read client calendars and commits. Budget ~60 of your 2,000 private minutes. |

Local pre-flight, no CI required:
```bash
bash os/ops/tools/public-guard.sh      # run this before you push anything client-adjacent
```
The guard is intentionally boring: it cannot break a build you care about, it can only shout before you
publish something you can't unpublish. If it ever blocks a legitimate file, add an `example`/`placeholder`
marker in that line (it skips those) or fix `PUBLIC-SCOPE.yml` — don't disable it.
