# The ₹0 Stack — everything you need, priced at what it actually costs you

> ## 🔒 THE 3-ACTOR MINIMUM (this is what we run now)
> **You + Arena agent + GitHub.** Nothing else is required to operate. Everything below the line is *optional*.
>
> | Layer | Tool | Cost | Replaces |
> |---|---|---|---|
> | Brain, files, history, board, tickets, approvals | **GitHub** (private repo: Issues + PR + Actions + Projects) | ₹0 | CRM, PM tool, portal, scheduler, audit trail |
> | Public site + published work | **GitHub Pages** on a public repo (`site/` copied out by the agent) | ₹0 | Framer, Webflow, hosting, Vercel |
> | Manufacturing, research, drafting, gate-scoring, reports | **Arena agent** (the 6 rituals) | ₹0 in AI APIs | Gemini API, n8n, Oracle VM, Canva, all the AI tools |
> | Client deliverable | **one self-contained HTML/PDF file** I generate from the repo | ₹0 | the portal, Looker Studio, AgencyAnalytics |
> | Comms | Gmail + WhatsApp + Google Meet | ₹0 | Slack, Zendesk, Calendly |
> | Money | UPI + a repo-generated invoice (Razorpay/Zoho when volume demands) | ₹0 | billing SaaS |
> | Numbers | you paste a CSV or screenshot once a week per client (`ingest`) | your 8 min | GA4/Ads API pulls |
>
> **Deleted from the plan:** Gemini API key · n8n · Oracle Cloud box · Cloudflare email/relay · Tally ·
> HubSpot · Looker Studio · Zoho Books (until ₹25L) · every paid AI tier.
> **Kept because it costs nothing and buys trust:** the domain (₹700/yr) and one lawyer-reviewed MSA (₹8–15k once).
> **The one GitHub limit that bites:** Pages on a *private* repo needs Pro ($4/mo ≈ ₹350). Until then the
> client artefact is a file, not a login — and a designed report often out-impresses a dashboard.
> Full model: `design/05-SEMI-AUTO-3-ACTOR.md` · rituals: `os/sessions/RITUALS.md`.

---

> **The one number to remember: the whole agency runs on ₹0/month of subscriptions.**
> The only thing you must spend money on is a domain: ₹500–900/year.
> And you can *start* with a free subdomain and switch it the day your first invoice clears.

Design rule: **never adopt a tool a paying client hasn't justified.** Free tiers are not "cheap" — they're
*fragile*. So the stack is built to be: (a) free, (b) replaceable in an afternoon, (c) file-based so the
data is yours even when the service isn't.

## The map

| Function | Primary (free) | Free limit that matters | Fallback |
|---|---|---|---|
| **Brain / state** | This GitHub repo | Private unlimited, 2,000 Actions min/mo, 200MB storage (fine for text) | GitLab free |
| **The employees** | Arena Agent Mode + a chat LLM on free tier | Daily caps reset; write *files*, not essays | Google AI Studio (Gemini free) |
| **Bulk AI content** | Gemini API free tier (Flash) | ~1,500 req/day, no card. ⚠️ free tier may train on inputs → see Law IV privacy rule | Groq free, OpenRouter `:free` models |
| **Deep research / long docs** | NotebookLM (free), Gemini/ChatGPT free | Source-grounded answers from client PDFs — this is your audit assistant | Perplexity free |
| **Automation & scheduling** | GitHub Actions (cron) | 2,000 min/mo | n8n self-host (below) |
| **Invoicing & books** | **Zoho Books Free** (India) | Free under **₹25L turnover**, 1 user, ~1,000 transactions/yr. ⚠️ GST *return filing* needs paid | Refrens free (15 docs/yr) → upgrade to Zoho Standard ₹899/mo when you cross ₹25L |
| **Payments India** | Razorpay / UPI / bank transfer | 2% + GST on cards; UPI free | IMPS/NEFT for retainers (zero fees, professional) |
| **Payments international** | Wise Business (receive USD/GBP) or PayPal | ~0.4–2% ; needs a business setup | Stripe is not India-friendly for service exports — Wise is |
| **Docs/contracts** | Google Docs + a lawyer-reviewed MSA once (~₹8–15k, one time) | Worth every rupee: it's the ₹10L contract | LawDepot / free templates as a stopgap only |

### The rows we do NOT use in one-repo semi-auto mode (deleted on purpose)
n8n + Oracle VM (no webhooks, no self-hosting) · Cloudflare email routing + SMTP relay (Gmail, direct; buy the
domain, add sending later) · Tally (the enquiry is pasted to the agent) · HubSpot/Notion (the repo is CRM and
PM) · Looker Studio + API pulls (the `ingest` ritual, numbers pasted or screenshotted) · Canva Pro and paid
design (agent-built template system) · Gamma and deck tools (Marp/HTML from markdown) · Zoho Books
(a repo-generated invoice + UPI until volume forces it) · WhatsApp Business API (never promised) ·
every AI API key. **If a tool is not in the table above, the OS does not depend on it.**

## The honest total

| Phase | Real monthly outflow |
|---|---|
| Week 0 (nothing signed) | **₹0** + domain when you buy it (₹42–75/mo equivalent) |
| First 2 clients | **₹0–300** (nothing forced; ad spend is theirs) |
| 6 clients, ₹6–10L/mo revenue | **₹1,500–3,000** — Zoho Standard ₹899, Canva Pro (optional), a paid AI tier for no-training privacy |
| Rule | **Any paid tool must replace ≥10 hrs/mo of your time, or bill to a client.** |

## What "free" is quietly costing you (know it, then decide)
1. **Watermarks & "via gmail.com" notes** look non-premium on the exact surface where trust is judged. Fix:
   your own template system instead of Canva Pro; SMTP relay with DKIM instead of Gmail send-as.
2. **Free AI tiers may train on what you paste.** For a premium agency that's a client-confidentiality
   problem, not just a privacy nicety. Anonymise; or when a client pays, a paid tier becomes a *reimbursable*
   line item ("dedicated, no-training model environment").
3. **Free tiers change without notice.** That's why D13 exists (AI radar) and why the fallback column is mandatory.
4. **Oracle free VMs can be reclaimed** if idle or if you mis-size them; keep usage light, use ARM images,
   and have GitHub Actions as the primary scheduler so nothing critical depends on that box.
5. **You are the single point of failure in every flow.** The mitigation is the repo: files that a different
   model, a different tool, or a human can pick up tomorrow.

## The only 3 things worth spending money on, in order
1. **A custom domain + clean email** (₹700/yr) — non-negotiable for ₹10L positioning.
2. **A one-time lawyer-reviewed MSA + SOW** (₹8–15k, one time) — the document that makes a 6-month,
   ₹9L contract actually collectable. This is the highest ROI rupee in the whole plan.
3. **Once revenue exists: 5 hours/month of a video editor** (₹6–10k) — the one deliverable AI can't
   hand you while you're on a call, and the one clients complain about first.

Fund all three out of the *first* client's advance. Never out of savings.
