# The ₹0 Stack — everything you need, priced at what it actually costs you

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
| **Heavy flows, webhooks, chatbots** | n8n on **Oracle Cloud Always Free** | ~2 OCPU / 12GB ARM (cut in June 2026 from 4/24), 200GB disk, 10TB out. ⚠️ needs card at signup, ARM images, and can be reclaimed if idle | Docker on the same box: Chatwoot, Uptime Kuma |
| **Website + client portals** | Cloudflare Pages (or Vercel/Netlify) | Unlimited bandwidth on CF free; 500 builds/mo | GitHub Pages |
| **Custom-domain email — inbound** | Cloudflare Email Routing | Truly free, unlimited inbound, 200 aliases | — |
| **Email — outbound (from your domain)** | Gmail + SMTP2Go free (1,000/mo) or Brevo (300/day) | ⚠️ Google is removing Gmail "Send mail as" for non-Google addresses in **Jan 2027** → move sending to Brevo/SMTP2Go DKIM before then | Zoho Mail Lite (paid, cheap) if volume grows |
| **CRM / pipeline** | HubSpot free *or* just `pipeline/leads.yml` | Files-first is better: your CRM stays yours | Kaiten / Notion free |
| **Requests & forms** | Tally.so | Unlimited, free, Indian, no branding | Google Forms |
| **Project management** | Notion free (solo) + this repo | Notion free is unlimited pages solo | Obsidian + this repo (fully local, no SaaS) |
| **Design** | Canva Free + Figma Free + Recraft/Bing Image | Watermarks on some Canva Pro assets — design your own template system instead (Engine R5 exists for exactly this) | GIMP, Inkscape |
| **Video** | CapCut / DaVinci Resolve / Audacity | Resolve is genuinely free and pro-grade | Clipchamp |
| **Decks/proposals** | Gamma free / Google Slides / Marp from markdown | Gamma limits credits; Marp is unlimited and lives in the repo | Canva |
| **Proposals + e-sign** | Zoho Sign / DocuSign trial / PDF + UPI payment link | Zoho Sign free ≈5 docs/mo | "Reply 'approved' to this email" — legally fine in India for these values, and it closes deals faster than waiting on a signature |
| **Invoicing & books** | **Zoho Books Free** (India) | Free under **₹25L turnover**, 1 user, ~1,000 transactions/yr. ⚠️ GST *return filing* needs paid | Refrens free (15 docs/yr) → upgrade to Zoho Standard ₹899/mo when you cross ₹25L |
| **Payments India** | Razorpay / UPI / bank transfer | 2% + GST on cards; UPI free | IMPS/NEFT for retainers (zero fees, professional) |
| **Payments international** | Wise Business (receive USD/GBP) or PayPal | ~0.4–2% ; needs a business setup | Stripe is not India-friendly for service exports — Wise is |
| **Analytics** | GA4, Search Console, Looker Studio | All free forever | Plausible-free self-host on the Oracle box |
| **SEO data** | Ahrefs Webmaster Tools (free, verified site) + GSC + Keywords Everywhere trial | Replaces most of a ₹10k/mo subscription for *your own* properties | Ubersuggest free limits |
| **Phone/WhatsApp** | Your existing number + WhatsApp Business app | WhatsApp Business API is *not* free — don't promise it to clients early | Google Voice is US-only (needs a US identity) — skip it |
| **Docs/contracts** | Google Docs + a lawyer-reviewed MSA once (~₹8–15k, one time) | Worth every rupee: it's the ₹10L contract | LawDepot / free templates as a stopgap only |

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
