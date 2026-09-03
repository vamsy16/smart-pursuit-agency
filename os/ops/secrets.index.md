# Secrets Index — names and locations only. Values NEVER live in this repo.
Real credentials live in GitHub Actions secrets / a password manager. This file records *what exists and where*.
Rule: an agent may read this file to know what to request; it may never write a value here, and may never paste one into a deliverable.

| Name | Scope | Location | Client | Rotation |
|---|---|---|---|---|
| `SMTP_LOGIN` | outbound email relay | GitHub secrets | own | yearly |
| `GEMINI_KEY` | content generation (free tier) | GitHub secrets | own | monthly review |
| `CF_API_TOKEN` | DNS + Pages deploy | GitHub secrets | own | quarterly |
| `GA4_*` / `GSC_*` per client | read-only analytics | GitHub secrets, keyed by slug | each | on offboarding |
| `AD_ACCOUNT_*` per client | **client-owned**, we never store card data | their BM + our agency access | each | on offboarding |

Offboarding: revoke all client tokens the same day, and record the revocation in `clients/<slug>/06-comms/log.md`.
