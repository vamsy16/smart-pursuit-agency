/* Shared reveal + safety fallback for every page in this design system.
   Rule: content must never stay invisible because JS or an observer failed. */
(function () {
  var sel = 'section > *, main > section > .hero-side, .head, .truth, .gate, .lane, .qa, .fn, .promise, .split, .who3, .tiers, .tw, .kv';
  var nodes = function () {
    var out = [];
    document.querySelectorAll('section').forEach(function (s) {
      Array.prototype.forEach.call(s.children, function (c) { out.push(c); });
    });
    return out;
  };
  document.documentElement.classList.add('js');
  var open = function (list) { list.forEach(function (e) { e.classList.add('in'); }); };
  var all = nodes();
  if (!all.length) all = [];
  all.concat([].slice.call(document.querySelectorAll(sel))).forEach(function (e) { e.classList.add('rv'); });
  var targets = [].slice.call(document.querySelectorAll('.rv'));
  if ('IntersectionObserver' in window) {
    var io = new IntersectionObserver(function (es) {
      es.forEach(function (e) { if (e.isIntersecting) { e.target.classList.add('in'); io.unobserve(e.target); } });
    }, { rootMargin: '-40px 0px -6% 0px', threshold: .04 });
    targets.forEach(function (e) { io.observe(e); });
    setTimeout(function () { open(targets); }, 1600);        // never leave anything hidden
    addEventListener('beforeprint', function () { open(targets); });
  } else {
    open(targets);
  }
})();
