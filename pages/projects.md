---
layout:    page
title:     "Projects"
permalink: /projects/
lang:      "en"
---
{% assign t = site.data.strings.en %}
<section id="projects" class="alt">
<div class="section-inner fade">
  <div class="section-head">
    <div><div class="section-label">{{ t.sections.projects_label }}</div>
         <div class="section-title">{{ t.sections.projects }}</div></div>
  </div>
  <div class="proj-list">
    {% for p in site.data.projects %}
    <div class="proj-entry">
      <div>
        <div class="proj-label">{{ p.area }}</div>
        <div class="proj-title">{{ p.title }}</div>
        <div class="proj-desc">{{ p.desc }}</div>
      </div>
      <div class="proj-meta">
        <span class="proj-status {{ p.status }}">{{ p.status | capitalize }}</span>
        {% if p.funding %}<div class="proj-fund">{{ p.funding }}</div>{% endif %}
      </div>
    </div>
    {% endfor %}
  </div>
</div>
</section>
