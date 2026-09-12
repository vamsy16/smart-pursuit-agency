# SunVolt Solar — Demonstration Project

A complete, production-quality **solar customer-acquisition system** built as an agency
demonstration. It shows a prospective solar client how their website, landing pages,
lead capture, tracking and funnel could actually work.

> **SunVolt Solar is a fictional demonstration brand created as a Solar marketing concept.**
> It is not a real company. No results, testimonials, certifications, customer counts or
> performance claims appear anywhere on this site. All contact details are placeholders.

---

## Pages

| File | Route | Purpose | Indexing |
|---|---|---|---|
| `index.html` | `/` | Main website — full funnel, estimator, gallery, education, FAQ, lead form | index |
| `solar-assessment.html` | `/solar-assessment` | **Meta Ads landing page** — no nav links, single conversion path | noindex |
| `solar-installation.html` | `/solar-installation` | **Google Ads landing page** — high commercial intent, installation-focused | index |
| `solar-installation-hyderabad.html` | `/solar-installation-hyderabad` | **Location landing page** — local intent, Hyderabad-specific content | index |
| `thank-you.html` | `/thank-you` | Conversion confirmation + WhatsApp CTA | noindex |

Supporting files: `robots.txt`, `sitemap.xml`, `IMAGE-CREDITS.md`.

## Run locally

```bash
cd sunvolt-solar-demo
python3 -m http.server 8080
```

Open <http://localhost:8080>. It is a fully static site — no build step, no dependencies,
no framework. Deploy by uploading the folder to any static host.

For clean URLs (`/solar-assessment` rather than `/solar-assessment.html`), configure
rewrites at the host level; canonical tags already point at the clean URLs.

---

## The funnel it demonstrates

```
Google / Meta Ad → Landing Page → Understand Benefits → Build Trust
→ Check Eligibility (estimator) → Submit Enquiry → Thank You → WhatsApp / Phone
```

Every major section answers one buyer question — what is solar, why consider it, will it
work on my property, how much do I need, can I trust them, what happens next, how do I
get in touch — and every section routes to the single primary conversion:
**GET A FREE SOLAR ASSESSMENT**.

---

## Conversion tracking

**No analytics IDs are hard-coded anywhere.** Every event is pushed to `window.dataLayer`
and also dispatched as a DOM `CustomEvent` (prefixed `sv:`), so GTM, GA4 or Meta Pixel can
be attached later without touching application code.

Events implemented in `assets/js/site.js`:

| Event | Fires when |
|---|---|
| `solar_lead_form_view` | lead form scrolls into view (once, via IntersectionObserver) |
| `solar_lead_form_start` | first input into the lead form (once) |
| `solar_lead_form_submit` | validated submit, with city / property / bill band / interest |
| `whatsapp_click` | any WhatsApp CTA, with `link_location` |
| `phone_click` | any click-to-call CTA, with `link_location` |
| `savings_calculator_start` | first interaction with the estimator |
| `savings_calculator_complete` | estimate generated, with inputs and output range |
| `residential_solar_click` | residential CTA |
| `commercial_solar_click` | commercial CTA |

Each event is also logged to the browser console, so the tracking plan can be demonstrated
live in a client meeting. **To connect a tag manager**, add the container snippet at the
`TRACKING PLACEHOLDER` comment in each page's `<head>`.

### Replacing the placeholders

| Placeholder | Where | Replace with |
|---|---|---|
| `[DEMO PHONE NUMBER]` | header, hero, form, footer, mobile bar | real number (also update `href="tel:+910000000000"`) |
| `[DEMO WHATSAPP NUMBER]` | float button, form, footer, mobile bar | real number (also update `href="https://wa.me/910000000000"`) |
| `[DEMO EMAIL]` | footer | real address |
| `sunvoltsolar.example` | canonicals, OG tags, sitemap | real domain |

The lead form currently **submits nothing** — it validates, fires the event and redirects
to the thank-you page. A live build would POST to a CRM endpoint and redirect only on success.

---

## Savings estimator

Runs entirely client-side. Deliberately conservative and **range-based**, with assumptions
stated openly in the code:

- residential tariff band ₹7–9 per unit
- specific generation ~4.0–4.6 kWh/kWp/day (Telangana)
- useful offset factor 0.70–0.85 of generation

It outputs a system-size range, annual generation range and annual savings range — never a
single confident number — and every result carries the disclaimer that it is an illustrative
estimate, not a quotation. Apartment and low-bill inputs return a softer, honest verdict
rather than a forced "you qualify".

---

## Design & performance

- **Palette:** deep forest green `#143C28` / charcoal `#1F2426` / warm solar gold `#E0A419` on white
- **Type:** Inter, strong hierarchy, no decorative fonts
- **Photography:** real solar photography, processed to 480/960/1600 WebP + JPEG fallback,
  EXIF stripped, `srcset`/`sizes` on every image, `loading="lazy"` below the fold,
  `fetchpriority="high"` + preload on each hero
- **JS:** one vanilla file, ~12 KB, deferred. No framework, no third-party scripts.
- **Mobile-first:** sticky Call / WhatsApp / Assessment bar under 640px, single-column forms,
  no horizontal scroll, large tap targets
- **A11y:** skip links, ARIA on nav/tabs/forms, visible focus rings, `prefers-reduced-motion`,
  semantic headings, alt text on every image

---

## What is deliberately absent

No customer names, reviews, star ratings, installation counts, years of experience, MW
installed, awards, certifications, government partnerships, brand partnerships,
testimonials, case studies, revenue figures or savings guarantees.

Where a proof element would normally sit, the page uses either honest process detail or an
explicit label — the gallery is captioned **"Representative Solar installation examples"**
and states that the photographs are not SunVolt Solar projects.

Subsidy and incentive language everywhere follows one rule: *eligibility and availability
depend on applicable government policies, regulations, location and system requirements,
and must be confirmed before a purchase decision.*

---

## Before any real-world use

1. Replace all placeholder contact details and the example domain.
2. Wire the lead form to a real CRM endpoint and add server-side validation + spam protection.
3. Add the tag manager container and verify every event end to end.
4. **Re-verify image licensing** — see `IMAGE-CREDITS.md`. Replace with the client's own
   photography as soon as possible.
5. Add a privacy policy and terms page, and make the form's data-use statement link to it
   (required for a live Indian lead-gen site under applicable data-protection rules).
6. Remove the demonstration ribbon and disclaimers **only** when the site represents a real
   trading company.
