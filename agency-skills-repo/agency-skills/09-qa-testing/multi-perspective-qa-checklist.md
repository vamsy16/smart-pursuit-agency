# Multi-Perspective QA Checklist (Mandatory Gate for Every Deliverable)

## Purpose
No deliverable (proposal, ad, landing page, content, report) leaves this agency without passing three independent critique lenses. This is the single mechanism that keeps quality "premium" and consistent, regardless of which AI or freelancer produced the first draft.

## When to Trigger
Every single client-facing deliverable, before it is sent — no exceptions, no matter the deadline pressure.

## Inputs Required
The draft deliverable itself, and its stated goal/audience.

## Execution Prompt
```
Act as three separate reviewers, one at a time, reviewing this deliverable:

[PASTE DRAFT]

Goal of this deliverable: [STATE GOAL]
Audience: [STATE AUDIENCE]

REVIEWER 1 - THE VIEWER/CUSTOMER:
You are the actual end audience described above, seeing this for the first
time with no context. Answer honestly:
- What do you understand in the first 5 seconds?
- Where do you lose interest or get confused?
- What question is left unanswered that would stop you from acting?
- Rate: would you act on this (click/reply/buy), on a 1-5 scale, and why?

REVIEWER 2 - THE COMPETITOR:
You are a rival agency's strategist, shown this deliverable, motivated to find
a reason to say "we could do better than this" to steal the client. Be
adversarial:
- What is the weakest, most generic, most "every agency does this" element?
- What claim is unsupported or would you challenge in front of the client?
- What would you do differently that would make this look outdated?

REVIEWER 3 - THE BEHAVIORAL/PSYCHOLOGICAL ANALYST:
Evaluate against decision-science principles, not opinion:
- Specificity: are claims specific/numeric or vague?
- Cognitive ease: is the structure easy to scan and process, or effortful?
- Social proof / credibility signals: present and specific, or absent/generic?
- Friction: how many steps/decisions stand between the reader and the desired
  action? Can any be removed?
- Loss vs. gain framing: is the messaging using the more persuasive frame for
  this context?

FINAL STEP: Based on all three reviews, output a revised version of the
deliverable that fixes every flagged issue.
```

## Deliverable Template
Reviewer 1 Notes (Viewer) → Reviewer 2 Notes (Competitor) → Reviewer 3 Notes (Behavioral) → Final Revised Deliverable

## Premium & QA Notes
- Run this as a **separate prompt/session** from the one that created the draft — self-critique in the same context window is weaker than a fresh, adversarial pass.
- This checklist is not optional under deadline pressure — it is precisely the discipline that separates a ₹10L/month agency's output from a freelancer's. Build the time for it into every project timeline (`05-operations-pm`), don't treat it as slack to cut first.
- Keep a running log of recurring flaws this process catches (e.g., "we consistently write vague CTAs") — feed that pattern back into the relevant skill file so the first draft improves over time.
