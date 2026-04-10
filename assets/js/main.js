// Scroll fade-in
const obs = new IntersectionObserver(
  es => es.forEach(e => { if (e.isIntersecting) e.target.classList.add('in'); }),
  { threshold: 0.08 }
);
document.querySelectorAll('.fade').forEach(el => obs.observe(el));

// Smooth scroll
document.querySelectorAll('a[href^="#"]').forEach(a => {
  a.addEventListener('click', e => {
    const t = document.querySelector(a.getAttribute('href'));
    if (t) { e.preventDefault(); t.scrollIntoView({ behavior: 'smooth' }); }
  });
});

// Publication year/keyword filter
document.querySelectorAll('.pf').forEach(btn => {
  btn.addEventListener('click', () => {
    document.querySelectorAll('.pf').forEach(b => b.classList.remove('on'));
    btn.classList.add('on');
    const val = (btn.dataset.filter || '').toLowerCase();
    document.querySelectorAll('.pub-entry').forEach(entry => {
      if (!val || val === 'all') {
        entry.removeAttribute('hidden');
      } else {
        const yr  = (entry.dataset.year     || '');
        const kws = (entry.dataset.keywords || '').toLowerCase();
        entry.toggleAttribute('hidden', yr !== val && !kws.includes(val));
      }
    });
  });
});

// BibTeX modal
function openBib(raw) {
  document.getElementById('bibContent').textContent = raw;
  document.getElementById('bibModal').classList.add('open');
  document.getElementById('copyBtn').textContent = 'Copy to clipboard';
}
function closeBib() {
  document.getElementById('bibModal').classList.remove('open');
}
function copyBib() {
  navigator.clipboard.writeText(document.getElementById('bibContent').textContent)
    .then(() => {
      const btn = document.getElementById('copyBtn');
      btn.textContent = 'Copied!';
      setTimeout(() => { btn.textContent = 'Copy to clipboard'; }, 2000);
    });
}
document.getElementById('bibModal')?.addEventListener('click', e => {
  if (e.target === e.currentTarget) closeBib();
});
document.addEventListener('keydown', e => { if (e.key === 'Escape') closeBib(); });
