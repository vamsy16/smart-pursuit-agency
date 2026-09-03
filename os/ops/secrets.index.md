# Secrets — one line of truth
The OS holds **no API keys, no tokens, no service credentials**. That is a design choice, not a gap:
semi-auto means the agent reads files you provide, so there is nothing to leak and no quota to blow.

| Secret | Where it actually lives | In this repo? |
|---|---|---|
| **Vault passphrase** | password manager + one printed copy. Never a file, never a commit message, never pasted into a summary. `vault key` rotates. | ⛔ never |
| Client platform logins (GSC, GA4, Ads, CMS) | the **client's** account and their manager; we get delegated access. We never store their password and never hold their card. | ⛔ never |
| Signed contracts, account screenshots, exports, invoices | inside `vault/<client>.age`, or off GitHub entirely | ⛔ plaintext never |
| GitHub account | 2FA (passkey) on, old tokens revoked | ⛔ |

Rules for agents: never write a credential value anywhere in the repo, including into an outbox draft or a
log line. If a client sends one by chat, tell them to rotate it and reference it only as "received, rotated".
On offboarding: revoke our access, and record the revocation in the client's sealed comms log.
