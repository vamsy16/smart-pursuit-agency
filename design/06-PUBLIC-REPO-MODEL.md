# 06 · PUBLIC REPO MODE — how it works when the whole thing is on GitHub, open

You kept the repo public. That is a legitimate architecture — but it changes one thing fundamentally:
**this repository can never contain a client.** Public buys you a free hosted site, free CI and the best
proof-of-work a one-person agency can publish. It costs you confidentiality the moment someone signs.
So the design splits along that line, and CI enforces it.

## 0 · Verified state of this repo (2026-09-03)
`isPrivate: false` · created today · **0 forks, 0 stars, 0 MB** · contains no client data, only structure.
Which means the fix costs nothing **today** and gets more expensive every week: a public repo is crawled,
cached, mirrored and used for training, and deleting it does not unpublish it.

## 1 · What public mode genuinely wins you
| Win | Detail |
|---|---|
| **Free hosted website** | GitHub Pages on the public repo → `vamsy16.github.io/smart-pursuit-agency`, ₹0, HTTPS, global CDN. Now wired: `.github/workflows/site.yml` publishes `site/` on every push. One setting to flip — **Settings → Pages → Source: GitHub Actions**. |
| **Unmetered CI** | Public repos aren't billed for Actions minutes (the 2,000/min cap applies to *private* repos). So `public-guard`, the site build and the mechanical jobs A1/A2 stop being rationed. |
| **Proof-of-work, 24/7** | A prospect reading your actual playbooks, quality gate and price laws converts far better than one reading "we do performance marketing". This *is* the Engine 01 signature-work rail, at zero marginal cost. |
| **The second product** | A public OS is the free demo for selling "build your own AI agency OS" to other founders at ₹2–5L — the highest-margin offer in the whole plan, and the one that doesn't consume your delivery capacity. |
| **Recruitment-free leverage** | People come pre-sold, pre-educated, pre-aligned on price. That is worth more than any automation in `daemons/RUNBOOK.md`. |

## 2 · The one cost that ends agencies
Anything in here is permanent, searchable and readable by your competitors and your prospects:
- `os/clients/**` — client folders, signed MSAs, account access notes → **contract breach + reputation death in a small market.** A ₹10L client's CFO asking "where does our data live?" and the answer being "a public GitHub repo" is an instant no.
- `os/pipeline/leads.yml` — your prospect list, scored, with names. **That file is your revenue.** Publishing it gifts every competitor your pipeline.
- `os/ops/finance/**`, bench rates, phone numbers, exports, PDFs, screenshots of client accounts.
- Also: no `LICENSE`. Default = all rights reserved. The moment you add MIT/Apache you have legally allowed every agency in India to ship your operating system as theirs. (CI now fails if an open-source licence appears.)

**Rule:** the public repo holds *method*. The private repo holds *people, money and proof-with-names*.
If a competitor or a client's CFO would care, it goes private.

## 3 · The architecture (still two free repos, still one person)
```
PUBLIC  vamsy16/smart-pursuit-agency        ← this repo, stays public
  site/**              design deck + published site (Pages, free)
  design/**            the blueprint, published on purpose — it is marketing
  os/SOVEREIGN.md      laws + the price floor, stated in public
  os/kernel/** engines/** playbooks/** templates/** sessions/** stack/**
  PUBLIC-SCOPE.yml     the contract below
  .github/workflows/   public-guard + site publish
        │
        │  the agent (me) moves client-shaped work across, deliberately, one way:
        │  public = anonymised output · private = the real record
        ▼
PRIVATE vamsy16/smart-pursuit-os            ← same account, same rituals, ₹0
  os/clients/<slug>/**  pipeline/leads.yml lost.md won.md  ops/finance/**
  memory/**  ops/bench/**  contracts, exports, screenshots, credentials index
```
Both free: GitHub Free allows unlimited private repos with unlimited collaborators. Your 2,000 Actions
minutes/month sit on the private side — and it needs almost none of them, because client work is *made in
our sessions* and only *filed* by CI. Nothing about `os/sessions/RITUALS.md` changes: same triggers, you
just point me at the repo the work belongs to.

## 4 · Do this once, today (12 minutes)
1. Settings → Pages → **Source: GitHub Actions** (one dropdown; without it the site workflow fails).
2. Settings → check "no LICENSE" and that the description/topics are set (they're SEO + discovery):
   `digital-marketing`, `automation`, `growth`, `india`, `ai-agency`.
3. When client #1's advance lands, create `smart-pursuit-os` (private) and I move the `private:` list
   **with history** via `git filter-repo` — clean, while forks = 0.
4. Optional, for tech-literate A-tier clients (founders, D2C, SaaS): **their private repo *is* the account** —
   add the client as a collaborator on `client-<slug>` (private) and use Issues for requests. Every
   deliverable is a dated commit; the whole engagement is auditable by them for free. No product on the
   market does this at ₹0, and it is a *magnificent* ₹10L pitch: "your growth team runs on version control."
   Keep the HTML/PDF report as the default for non-technical owners; offer the repo as the upgrade.

## 5 · If you refuse a second repo (also viable — for a while)
Single public repo works **while you have no clients**, which is exactly now. Then:
- client work lives in files you never commit: I generate them, you send them, and only the *anonymised
  outcome* lands in the repo ("a 40-site real-estate developer: CPL −38% in 9 weeks").
- leads are tracked by initials only (`L-048 · RE · Vizag · 3L/mo`), never names or numbers — `PUBLIC-SCOPE.yml` + CI hold you to that.
- invoices and contracts never touch GitHub at all (Gmail + Drive).
This costs you the "everything is one searchable brain" advantage, which is the main advantage. So treat it
as **weeks 1–6**, not a permanent choice, and let the guard refuse the first mistake rather than trusting yourself.

## 6 · What must change in the rest of the design (and did)
| File | Change |
|---|---|
| `.github/workflows/public-guard.yml` | **New.** Fails CI on any client folder, real lead row, invoice/PDF/CSV, secret pattern, Indian phone/GSTIN/PAN/card shape, >1 MB file, or an open-source licence. Plus dead internal-link checking. Tested: green today, red on a planted leak. |
| `os/ops/tools/public-guard.sh` | The same check, runnable before you push: `bash os/ops/tools/public-guard.sh` |
| `PUBLIC-SCOPE.yml` | **New.** The written public/private contract, machine-readable. |
| `.github/workflows/site.yml` | **New.** Publishes `site/` to Pages from the public repo. |
| `os/stack/limits.yml` | Rewritten to reflect reality: no API keys in semi-auto; Pages/Actions notes for public repos. |
| `os/engines/00-triage/scoring.yml`, `os/stack/verticals.yml` | Rewritten as valid YAML — they were markdown-with-fences and would not parse, so an agent or CI job reading them as data would have silently failed. Fixed and verified with a YAML parser. |
| `site/index.html`, `README.md`, `STATEBOARD.md`, `memory/decisions.md` | Mode noted: public repo + guard + two-repo split. |

## 7 · The sentence for the repo's README (it is doing sales now, so write it like a pitch)
> **Smart Pursuit Agency runs on a published operating system.** The laws, the playbooks, the quality gate and
> the price floor are all here, in public, because the system is the product. Client work — the data, the
> money, the campaigns — is in a private repo each client can open on day one. We are not a big team.
> We are a better process, and you can read every line of it.

## 8 · What this does *not* change
The floor (₹1L minimum), the gate (nothing ships below 90), Law IV (nothing sends without you), the 6
rituals, and the honest weakness: **in semi-auto you are the scheduler.** A public repo makes your marketing
cheaper and your CI free; it does not make a single client call, and it does not write the first autopsy.
