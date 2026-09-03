# 07 · ONE PUBLIC REPO — the complete AI OS on you + Arena + GitHub

No second repo. No SaaS. No database. **One public GitHub repository is the entire company**, and it works:
the method is readable by the world on purpose, and the ledger is in the same repo as **ciphertext**.

```
vamsy16/smart-pursuit-agency            (public · free · the whole business)
├── PUBLIC ZONE — readable by everyone, deliberately
│   ├── site/**            the premium design + published operating manual  → GitHub Pages, ₹0
│   ├── design/**          the blueprint, published as proof-of-work
│   ├── os/SOVEREIGN.md    the laws + the ₹1L floor, stated publicly
│   ├── os/kernel/**       roles · voice · quality gate · escalation
│   ├── os/engines/** playbooks/** templates/** sessions/** stack/** daemons/**
│   └── proof/**           anonymised case studies + published autopsies ("a 40-site developer, CPL −38%")
│
└── VAULT ZONE — committed, but unreadable without your passphrase
    ├── vault/apex-realty.age      the whole client folder, encrypted (strategy, deliverables, comms, invoices)
    ├── vault/nova-edtech.age      one file per client
    └── vault/pipeline.age         leads, scores, won/lost, cash — the part competitors would love
```

**Three actors, no fourth.** You decide, talk and press send. I read the repo, do the work, write the files.
GitHub stores, versions, hosts, and runs the checks. Everything else in the earlier design — n8n, Oracle,
Cloudflare, Tally, Zoho, API keys — is optional or deleted. The OS does not need them; it needs the playbooks.

## Why this shape and not just "no client data"
"A public repo, so keep client stuff out of it" is the naive answer, and it quietly kills the design: the
reason this works is that *everything* is in one searchable, versioned place that survives a lost laptop, a
dead tool and a fresh chat. If the client record lives in Gmail threads and your head, you have a freelancer
with a nice README. So the data stays — as ciphertext. Public hosting + private content is a normal, old,
sound arrangement (it's how people back up to cloud storage); the mistake is treating "public repo" as
"nothing sensitive allowed".

## The session loop (this is the whole operating manual, in three lines)
```
1  open   bash os/ops/tools/vault.sh open apex-realty     → .vault-work/apex-realty/   (plaintext, gitignored)
2  work   I run the ritual against those files + the public playbooks; you approve; gate ≥90
3  seal   bash os/ops/tools/vault.sh seal apex-realty     → vault/apex-realty.age, staged; commit = "apex wk37"
```
Same six rituals as `os/sessions/RITUALS.md`; steps 1 and 3 are the only difference, and I run them — you
never type a command. The public zone is what changes at the boundary: the *method* and an *anonymised*
outcome get published, the record stays sealed.

**Continuity works because the ciphertext is git history.** A new chat, a broken laptop, or me being
replaced by a future model: `git clone` + one passphrase = the entire agency, every client, every decision,
every invoice, restored. No export, no migration, no vendor. That is the property the whole design exists to buy.

## The key (read this twice — it is load-bearing)
Security here is **only** the passphrase. The ciphertext is public and can be downloaded by anyone, forever,
and attacked offline. So:
- **≥ 6 random words**, generated, not remembered. `corRECT-horse!Battery-staple77-River-Nine` not a birthday.
- Stored in a password manager **and** one printed copy in a drawer. Both, or you will eventually lose one.
- **Never** in the repo, never in a commit message, never pasted into a deliverable or a log line. I ask for it
  once per session via the environment (`SMARTPURSUIT_KEY`); I do not write it anywhere.
- Rotate quarterly: `vault key` re-seals everything with a new passphrase. Do it after any laptop repair,
  any shared screen, any suspicion.
- **Loss = permanent.** No reset, no support, no recovery. That is the honest price of "one public repo, ₹0".
  Mitigation, and it's not paranoid: keep the *delivered* artefacts (the PDF/HTML report, the ad account,
  the CMS) — the vault is the memory, not the only copy of the work.
- Install `age` (`brew install age` / `apt install age`) and the tool uses it automatically: authenticated
  encryption, better than the openssl fallback (which is unauthenticated AES-256-CBC + PBKDF2, 200k iters —
  unreadable without the key, but tamper-evident only by luck).

## What this design does *not* protect (know it, don't pretend)
1. **The last mile.** The report you WhatsApp or email, the screen you share on a call, the numbers you
   read out — plaintext, as they must be. Encryption secures *storage*, not delivery.
2. **A compromised GitHub account.** Enable **2FA (passkey/TOTP) today** — one click, and it's the single
   largest risk in a repo-as-company model. Also: no `workflows` permission surprises, and revoke old tokens.
3. **An accident already in history.** If plaintext ever lands in a commit, deleting the file is not enough —
   history is public. The guard exists to stop it before the push; if it happens, history rewrite immediately
   (`git filter-repo`) and rotate every credential the file touched.
4. **Client-side comfort.** Some owners will ask "where is my data?" The answer here is unusually good — see below —
   but a bank-grade procurement team will want a signed DPA and a named cloud. At $5k/mo that's a conversation; at
   $50k/mo, a requirement. That's the ceiling of the model, and it's a *good* ceiling: it caps you where your
   capacity governor already caps you.

## Size and history (the number that makes this practical)
Markdown compresses ~5× and we gzip before encrypting, so a 250 KB client month seals to roughly 45–60 KB.
One seal per session (not per file — this is why the loop ends with a single commit), 4 sessions a week,
8 clients ≈ **10–20 MB/month**, ~150 MB/year. GitHub's comfort zone is 1 GB, the hard wall 5 GB.
Policy: quarterly, `vault snapshot` the sealed files, then re-init the repo on an orphan branch keeping the
current state and pushing the old history to a `history-2026` tag — or simply let it run for two years, it
will still be under a gigabyte. Never commit exports, PDFs, CSVs or screenshots: those go to the vault too,
or stay off GitHub (they are the files that eat repos).

## The sentence a client hears (this is a feature, not an excuse)
> "Your account is an encrypted file in a version-controlled repository. Every deliverable, every decision
> and every invoice is a dated commit, sealed with a key only we hold. You get a report in your inbox weekly
> and, if you like, read access to your own private repo where the whole history is auditable — you can see
> exactly what we did on any Tuesday, three years from now. That's not how agencies usually work. It's why
> you don't have to trust me, and why we can charge department prices with one senior person in the loop."

Tech-literate A-tier clients (founders, SaaS, D2C) find this *more* trustworthy than Notion. Non-technical
owners just want the PDF — send the PDF, keep the sentence for the proposal.

## Tier 0 — the option while you have no clients (weeks 1–6)
Skip the vault entirely. Nothing to encrypt. The repo is 100% public method + site; leads stay in your inbox
and in the chat with me, and `vault/pipeline.age` starts the day the first advance lands. Don't build
cryptography for an empty drawer — but do wire the guard now, because the mistake it prevents happens later,
in a hurry, at 11pm, when there is a client.

## What changed from `design/06` (superseded, deliberately)
| 06 said | 07 says |
|---|---|
| Split into a public + a private repo | **One public repo, two zones.** Same protection, one place, no second billing surface |
| Put A1/A2 jobs in the private repo | They run here; public Actions are unmetered, and they never touch vault contents (ciphertext needs no CI secrets) |
| Client portal = a per-client private repo | Optional upgrade only if a client asks; the default artefact is the sealed history + a designed report file |
| CI must block client data | Still true — and now the guard *also* blocks plaintext inside `vault/` and a tracked `.vault-work/` |

## Day 1 setup, in order (about 25 minutes, all of it free)
1. **Settings → Pages → Source: GitHub Actions**, then create `.github/workflows/site.yml` from
   `os/daemons/A3-site-publish.yml` — the premium site goes live at `vamsy16.github.io/smart-pursuit-agency`.
2. **Settings → Enable 2FA** (passkey) on the GitHub account. Do not skip; this is the front door to the company.
3. Create `.github/workflows/public-guard.yml` from `os/daemons/A0-public-guard.yml` — CI now refuses leaks.
4. Generate the passphrase, put it in a password manager + print it. `export SMARTPURSUIT_KEY=...` in the session.
5. *(optional)* `sudo apt install age` for authenticated encryption.
6. `vault init pipeline` the day your first real lead arrives; `vault init <client-slug>` the day an advance lands.
7. Delete the `private:` list in `PUBLIC-SCOPE.yml` from "second repo" to "the vault" — the contract below already says so.

## The one-line version
**Publish the machine. Seal the memory.** The public zone sells you; the vault zone lets you remember;
GitHub is the whole stack; and the only thing you must never lose is the passphrase.
