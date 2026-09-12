/* =============================================================================
   SunVolt Solar — Demonstration Project
   Site behaviour + conversion event layer

   TRACKING NOTE
   -------------
   No analytics IDs are hard-coded anywhere in this demo. Every conversion event
   is pushed to window.dataLayer and also emitted as a DOM CustomEvent, so GTM,
   GA4 or Meta Pixel can be attached later without touching this file.

   To connect a real tag manager, add the container snippet to <head> in each
   HTML file where the placeholder comment sits. Nothing else needs to change.
   ============================================================================= */
(function () {
  'use strict';

  /* ---------------------------------------------------------------------------
     1. EVENT LAYER
     --------------------------------------------------------------------------- */
  window.dataLayer = window.dataLayer || [];

  var FIRED_ONCE = {};

  /**
   * track(name, params, once)
   * Pushes a conversion event into the dataLayer and dispatches a DOM event.
   * @param {string}  name   event name, e.g. 'solar_lead_form_submit'
   * @param {object}  params optional payload
   * @param {boolean} once   if true, the event only ever fires a single time
   */
  function track(name, params, once) {
    if (once) {
      if (FIRED_ONCE[name]) return;
      FIRED_ONCE[name] = true;
    }
    var payload = Object.assign({ event: name, page_path: location.pathname }, params || {});
    window.dataLayer.push(payload);
    document.dispatchEvent(new CustomEvent('sv:' + name, { detail: payload }));

    // Visible in DevTools so the agency can demonstrate the tracking plan live.
    if (window.console && console.debug) {
      console.debug('%c[SunVolt event]', 'color:#2E8159;font-weight:700', name, payload);
    }
  }
  window.svTrack = track;

  /* ---------------------------------------------------------------------------
     2. HEADER / MOBILE NAV
     --------------------------------------------------------------------------- */
  var burger = document.querySelector('[data-burger]');
  var mnav = document.querySelector('[data-mnav]');
  if (burger && mnav) {
    burger.addEventListener('click', function () {
      var open = mnav.classList.toggle('open');
      burger.setAttribute('aria-expanded', open ? 'true' : 'false');
    });
    mnav.addEventListener('click', function (e) {
      if (e.target.tagName === 'A') {
        mnav.classList.remove('open');
        burger.setAttribute('aria-expanded', 'false');
      }
    });
  }

  /* ---------------------------------------------------------------------------
     3. CLICK EVENTS — whatsapp / phone / service interest
     --------------------------------------------------------------------------- */
  document.addEventListener('click', function (e) {
    var el = e.target.closest('[data-ev]');
    if (!el) return;
    track(el.getAttribute('data-ev'), {
      link_location: el.getAttribute('data-ev-loc') || 'unspecified',
      link_text: (el.textContent || '').trim().slice(0, 60)
    });
  });

  /* ---------------------------------------------------------------------------
     4. LEAD FORM — view / start / submit
     --------------------------------------------------------------------------- */
  var form = document.querySelector('[data-lead-form]');

  if (form) {
    // form view (fires once, when the form scrolls into the viewport)
    if ('IntersectionObserver' in window) {
      var io = new IntersectionObserver(function (entries) {
        entries.forEach(function (en) {
          if (en.isIntersecting) {
            track('solar_lead_form_view', { form_id: form.id || 'lead_form' }, true);
            io.disconnect();
          }
        });
      }, { threshold: 0.35 });
      io.observe(form);
    } else {
      track('solar_lead_form_view', { form_id: form.id || 'lead_form' }, true);
    }

    // form start (first meaningful interaction)
    form.addEventListener('input', function () {
      track('solar_lead_form_start', { form_id: form.id || 'lead_form' }, true);
    });

    // validation + submit
    form.addEventListener('submit', function (e) {
      e.preventDefault();
      var ok = true;

      form.querySelectorAll('[required]').forEach(function (input) {
        var wrap = input.closest('.field');
        var valid = input.checkValidity() && String(input.value).trim() !== '';
        if (!valid) {
          ok = false;
          if (wrap) wrap.classList.add('invalid');
        } else if (wrap) {
          wrap.classList.remove('invalid');
        }
      });

      if (!ok) {
        var firstBad = form.querySelector('.field.invalid .input');
        if (firstBad) {
          firstBad.focus();
          firstBad.scrollIntoView({ block: 'center', behavior: 'smooth' });
        }
        return;
      }

      var data = new FormData(form);
      track('solar_lead_form_submit', {
        form_id: form.id || 'lead_form',
        city: data.get('city') || '',
        property_type: data.get('property_type') || '',
        bill_band: data.get('monthly_bill') || '',
        interest: data.get('interest') || '',
        contact_pref: data.get('contact_method') || ''
      });

      // DEMO ONLY — no data is transmitted anywhere. A real build would POST to a
      // CRM endpoint here and redirect only on a successful response.
      var btn = form.querySelector('[type="submit"]');
      if (btn) {
        btn.disabled = true;
        btn.textContent = 'Sending…';
      }
      setTimeout(function () {
        window.location.href = 'thank-you.html';
      }, 450);
    });

    // clear error state as the user corrects a field
    form.addEventListener('change', function (e) {
      var wrap = e.target.closest('.field');
      if (wrap && e.target.checkValidity() && String(e.target.value).trim() !== '') {
        wrap.classList.remove('invalid');
      }
    });
  }

  /* ---------------------------------------------------------------------------
     5. SAVINGS ESTIMATOR
     ---------------------------------------------------------------------------
     Deliberately conservative, range-based and clearly illustrative.
     Assumptions used (stated on-page):
       - average residential tariff band  : Rs 7-9 per unit
       - specific generation, Telangana   : ~4.0-4.6 kWh per kWp per day
       - self-consumption / offset factor : 0.70-0.85 of generation is useful
     Nothing here is presented as a quotation.
     --------------------------------------------------------------------------- */
  var calc = document.getElementById('calc-form');

  if (calc) {
    calc.addEventListener('input', function () {
      track('savings_calculator_start', { calculator: 'solar_estimator' }, true);
    }, { once: false });

    calc.addEventListener('submit', function (e) {
      e.preventDefault();

      var bill = parseFloat(document.getElementById('calc-bill').value);
      var ptype = document.getElementById('calc-property').value;
      var loc = document.getElementById('calc-location').value;
      var unitsRaw = document.getElementById('calc-units').value;
      var units = unitsRaw ? parseFloat(unitsRaw) : null;

      if (!bill || bill <= 0) {
        document.getElementById('calc-bill').focus();
        return;
      }

      // Derive monthly units from the bill when not supplied.
      var TARIFF_LOW = 7.0, TARIFF_HIGH = 9.0;
      var unitsLow, unitsHigh;
      if (units && units > 0) {
        unitsLow = unitsHigh = units;
      } else {
        unitsLow = bill / TARIFF_HIGH;
        unitsHigh = bill / TARIFF_LOW;
      }

      // Generation assumptions (kWh per kWp per day) for the Telangana region.
      var GEN_LOW = 4.0, GEN_HIGH = 4.6;
      var DAYS = 30;

      // Required system size range, rounded to sensible commercial steps.
      var kwLow = unitsLow / (GEN_HIGH * DAYS);
      var kwHigh = unitsHigh / (GEN_LOW * DAYS);

      // Commercial systems are usually sized in whole/half kW steps.
      var roundHalf = function (n) { return Math.max(1, Math.round(n * 2) / 2); };
      kwLow = roundHalf(kwLow);
      kwHigh = roundHalf(kwHigh);
      if (kwHigh <= kwLow) kwHigh = kwLow + 1;

      // Annual generation range.
      var genLow = Math.round(kwLow * GEN_LOW * 365);
      var genHigh = Math.round(kwHigh * GEN_HIGH * 365);

      // Annual savings range — offset factor applied, deliberately conservative.
      var OFFSET_LOW = 0.70, OFFSET_HIGH = 0.85;
      var saveLow = Math.round((genLow * OFFSET_LOW * TARIFF_LOW) / 1000) * 1000;
      var saveHigh = Math.round((genHigh * OFFSET_HIGH * TARIFF_HIGH) / 1000) * 1000;

      var fmt = function (n) { return n.toLocaleString('en-IN'); };

      // Suitability wording — never a guarantee, only a routing signal.
      var verdict;
      if (bill < 1500) {
        verdict = 'Based on the bill entered, a smaller system may be worth discussing. A specialist can confirm whether Solar suits your usage pattern.';
      } else if (ptype === 'Apartment') {
        verdict = 'Apartment rooftops usually involve shared roof rights. An assessment can confirm what is feasible for your building.';
      } else {
        verdict = 'Your property may be suitable for a Solar assessment.';
      }

      document.getElementById('calc-verdict').textContent = verdict;
      document.getElementById('res-size').textContent = kwLow + ' – ' + kwHigh + ' kW';
      document.getElementById('res-gen').textContent = fmt(genLow) + ' – ' + fmt(genHigh) + ' units';
      document.getElementById('res-save').textContent = '₹' + fmt(saveLow) + ' – ₹' + fmt(saveHigh);

      var out = document.getElementById('calc-result');
      var empty = document.getElementById('calc-placeholder');
      if (empty) empty.hidden = true;
      out.hidden = false;

      track('savings_calculator_complete', {
        calculator: 'solar_estimator',
        bill_entered: bill,
        property_type: ptype,
        location: loc,
        est_size_low_kw: kwLow,
        est_size_high_kw: kwHigh
      });

      if (window.matchMedia('(max-width:900px)').matches) {
        out.scrollIntoView({ behavior: 'smooth', block: 'start' });
      }
    });
  }

  /* ---------------------------------------------------------------------------
     6. PROJECT GALLERY FILTER
     --------------------------------------------------------------------------- */
  var tabs = document.querySelectorAll('[data-gal-tab]');
  if (tabs.length) {
    tabs.forEach(function (tab) {
      tab.addEventListener('click', function () {
        var cat = tab.getAttribute('data-gal-tab');
        tabs.forEach(function (t) { t.setAttribute('aria-selected', t === tab ? 'true' : 'false'); });
        document.querySelectorAll('[data-gal-item]').forEach(function (fig) {
          var cats = fig.getAttribute('data-gal-item');
          fig.hidden = !(cat === 'all' || cats.indexOf(cat) > -1);
        });
      });
    });
  }

  /* ---------------------------------------------------------------------------
     7. PREFILL — carry calculator/interest context into the lead form
     --------------------------------------------------------------------------- */
  document.querySelectorAll('[data-prefill-interest]').forEach(function (el) {
    el.addEventListener('click', function () {
      var val = el.getAttribute('data-prefill-interest');
      var sel = document.getElementById('f-interest');
      if (sel) sel.value = val;
    });
  });

  /* ---------------------------------------------------------------------------
     8. FOOTER YEAR
     --------------------------------------------------------------------------- */
  document.querySelectorAll('[data-year]').forEach(function (el) {
    el.textContent = new Date().getFullYear();
  });
})();
