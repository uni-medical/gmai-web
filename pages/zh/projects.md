---
layout:    page
title:     "项目"
permalink: /zh/projects/
lang:      "zh"
---
{% assign t = site.data.strings.zh %}
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
        <div class="proj-label">{% if p.area_zh %}{{ p.area_zh }}{% else %}{{ p.area }}{% endif %}</div>
        <div class="proj-title">{% if p.title_zh %}{{ p.title_zh }}{% else %}{{ p.title }}{% endif %}</div>
        <div class="proj-desc">{% if p.desc_zh %}{{ p.desc_zh }}{% else %}{{ p.desc }}{% endif %}</div>
      </div>
      <div class="proj-meta">
        <span class="proj-status {{ p.status }}">{% case p.status %}{% when "active" %}进行中{% when "ongoing" %}进行中{% when "new" %}新项目{% when "completed" %}已完成{% else %}{{ p.status | capitalize }}{% endcase %}</span>
        {% if p.funding %}<div class="proj-fund">{% if p.funding_zh %}{{ p.funding_zh }}{% else %}{{ p.funding }}{% endif %}</div>{% endif %}
      </div>
    </div>
    {% endfor %}
  </div>
</div>
</section>
