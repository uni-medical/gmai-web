---
layout:    page
title:     "Contact"
permalink: /contact/
lang:      "en"
---
{% assign t = site.data.strings.en %}
<section id="contact" class="alt">
<div class="section-inner fade">
  <div class="section-head">
    <div><div class="section-label">{{ t.sections.contact_label }}</div>
         <div class="section-title">{{ t.sections.contact }}</div></div>
  </div>
  <div class="contact-grid">
    <div>
      <div class="contact-block">
        <div class="contact-block-label">Email</div>
        <div class="contact-block-val"><a href="mailto:{{ site.lab.email }}">{{ site.lab.email }}</a></div>
      </div>
      <div class="contact-block">
        <div class="contact-block-label">Connect with Us</div>
        <div class="contact-block-val">
          <a href="https://github.com/uni-medical" target="_blank" rel="noopener">GitHub Organization</a>&nbsp;&middot;&nbsp;
          <a href="https://www.zhihu.com/people/gmai-team" target="_blank" rel="noopener">Zhihu Blog</a>&nbsp;&middot;&nbsp;
          {% if site.lab.scholar %}<a href="{{ site.lab.scholar }}" target="_blank" rel="noopener">Google Scholar</a>{% endif %}
        </div>
      </div>
      <div class="contact-block">
        <div class="contact-block-label">Interested in Joining?</div>
        <div class="contact-block-val">
          We welcome collaboration across academia, healthcare, and industry. If you are
          interested in open positions or research collaboration, please send your CV,
          a brief description of your research interests, and representative work to
          <a href="mailto:{{ site.lab.email }}">{{ site.lab.email }}</a>.
        </div>
      </div>
    </div>
  </div>
</div>
</section>
