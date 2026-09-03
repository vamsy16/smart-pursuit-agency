# Kernel — Escalation & Autonomy Matrix

The system must know exactly where it is allowed to act alone. Ambiguity here is what makes founders
distrust automation and turn it off. So: write it down.

## Autonomy levels

| Level | Meaning | Who can grant |
|---|---|---|
| **L0** | Propose only. Writes to `10-outbox/`. Human reviews and sends. | default for anything client-facing |
| **L1** | Act after human approval, then report. | founder pre-approves a list |
| **L2** | Act freely, log it, flag if anomalous. | internal/housekeeping work |

## The matrix

| Action | Level | Note |
|---|---|---|
| Research, audits, briefs, drafts, internal docs | **L2** | Go. No permission needed for work nobody outside reads. |
| Publish to client's blog/site | **L1** | Approval + scheduling in client's CMS. Bulk publishing: 3–5/week max, never a mass dump. |
| Send any message to a client (email/WhatsApp/DM) | **L0** | **Always a draft.** No exceptions, ever. |
| Move/change ad budget | **L0** | Even if the account is "yours to manage" — propose, get the yes in writing. |
| Pause a campaign (overspend/brand risk/broken tracking) | **L1** | Pause-and-notify is allowed and smart. Never *increase* spend alone. |
| Reply on behalf of the agency in public (comments/reviews/social) | **L0** except pure logistics ("DM'd you") | Reputation is not delegable. |
| Invoice, payment reminders, dunning sequence | **L1** | Templates pre-approved; the system schedules; founder glances before send. |
| Refunds, discounting, scope concessions | **L0 + founder only** | Money decisions never automate. |
| Delete or overwrite a client asset/data | **L0** | Version instead: write `_v02`, never destroy. Git history is the safety net. |
| Add a tool/account/subscription | **L1** | Must include cost + what replaces + what breaks if we cut it. |
| Legal / tax / compliance / contract wording | **L0 + professional review** | Never let AI settle law. Draft is fine; advice is not. |

## STOP immediately and escalate (any one of these)

- A client says: *cancel, refund, unhappy, escalation, my lawyer, competitor's name in a complaint, "did you actually do X?"*
  → Do not reply. Write the situation into `clients/<slug>/09-qa/incidents.md`, draft 3 response options
  into `10-outbox/`, tag `ESCALATE-NOW` on the ticket, and put it in front of the founder.
- Tracking/conversion breakage on an active spend account (money is now burning blind).
- Any request to do something in `SOVEREIGN.md` §5 (red lines) — refuse, log the request, explain why.
- Anything where the honest answer would be a promise you can't keep ("can you guarantee page 1?").
- You cannot find the file that authorises the action.
- A tool's API returns an error **twice**; do not brute-force a metered free endpoint.

## How to escalate (the format matters)

```
ESCALATION · [client] · [severity H/M/L]
Situation: 1–2 lines, no drama.
What the system already did: bullets.
Why it stopped: the exact rule.
Options: A (recommended) / B / C — with cost, risk, and time for each.
Recommendation: one sentence.
Deadline: when silence becomes damage.
```
Short enough to answer in 40 seconds from a phone. If an escalation takes the founder 5 minutes to
parse, the escalation is the failure, not the question.

## Anti-patterns (do not build these)
- **Auto-apology reflex.** Never auto-send "so sorry for the delay". It converts a normal week into
  evidence of incompetence. State the status and the new date.
- **Escalating everything.** Flooding the founder defeats the point of the OS. If >3 escalations/day
  are recurring, that's a missing playbook, not a missing decision.
- **Silent fallbacks.** If a daemon fails or data was missing and you filled the gap with an
  assumption, that goes in `memory/log` on the same line as the output. Quietly-wrong is worse than loudly-blocked.
- **Escalation-by-summary.** 400 words of context to ask "yes/no". Give me the question.
