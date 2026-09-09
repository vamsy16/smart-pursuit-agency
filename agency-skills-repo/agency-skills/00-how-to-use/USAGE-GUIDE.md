# How to Use This Repository With Any AI Chat

## 1. The Variable System
Every skill file has bracketed placeholders like `[CLIENT_NAME]`, `[INDUSTRY]`, `[MONTHLY_BUDGET]`, `[COMPETITORS]`. Before pasting a skill's Execution Prompt into an AI chat, fill these in. Keep a running "Client Brief" doc per client (name, industry, ICP, budget, competitors, tone, past results) so you can fill variables in seconds — don't re-derive this every time.

## 2. Standard Session Structure
Every AI session for a client task should follow this order:
1. **Context load** — paste the Client Brief.
2. **Role assignment** — tell the AI which "seat" it's sitting in (Strategist / Copywriter / Media Buyer / Analyst / QA Reviewer). Never let it free-wheel across roles in one output — it degrades quality.
3. **Run the skill's Execution Prompt.**
4. **Run the QA gate** (`09-qa-testing/multi-perspective-qa-checklist.md`) as a *separate* follow-up prompt — a fresh critique pass is more honest than the model grading its own homework in the same breath.
5. **Human final pass** — you make the final call. AI drafts, you decide. This is what clients are actually paying for.

## 3. Prompting Discipline (applies to every skill)
- Always ask the AI to output in the **Deliverable Template** format given in the skill file — never accept a loose paragraph dump for client-facing work.
- Always ask for **specifics over adjectives**: numbers, timeframes, named channels — not "we will boost your engagement."
- Always request **2–3 strategic options with trade-offs**, not one "best" answer — clients (and you) need to see the reasoning, not just the conclusion.
- Never let AI-generated numbers (CPC, CPM, conversion rates, benchmarks) go to a client without you verifying against real ad account / analytics data. AI benchmarks are directional, not factual.

## 4. Creating New Skills
When you hit a repeatable task not covered here, create a new file using this shape:
```
# [Skill Name]
## Purpose
## When to Trigger
## Inputs Required
## Execution Prompt
## Deliverable Template
## Premium & QA Notes
```
Drop it in the right numbered folder and add it to the root README table.

## 5. Multi-AI Workflow (optional but recommended for premium output)
For high-stakes deliverables (final client pitch, big campaign concept), run the same Execution Prompt through two different AI chats and merge the best of both — this catches blind spots any single model has and is a legitimate premium-quality technique, not overkill.
