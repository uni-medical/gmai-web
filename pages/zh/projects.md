---
layout:    page
title:     "重点研究"
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
    <div class="proj-entry" style="display:flex;gap:1.5rem;align-items:flex-start;">
      <div style="flex:1;">
        <div class="proj-label">{% if p.area_zh %}{{ p.area_zh }}{% else %}{{ p.area }}{% endif %}</div>
        <div class="proj-title">{% if p.title_zh %}{{ p.title_zh }}{% else %}{{ p.title }}{% endif %}</div>
        <div class="proj-desc">{% if p.desc_zh %}{{ p.desc_zh }}{% else %}{{ p.desc }}{% endif %}</div>
        <div style="display:flex;gap:.4rem;flex-wrap:wrap;margin-top:.6rem;">
          {% if p.slug %}<a href="{{ '/zh/projects/' | append: p.slug | append: '/' | relative_url }}" class="pub-btn">项目详情 →</a>{% endif %}
          {% if p.links.github %}<a href="{{ p.links.github }}" target="_blank" rel="noopener" class="pub-btn">GitHub</a>{% endif %}
          {% if p.links.paper %}<a href="{{ p.links.paper }}" target="_blank" rel="noopener" class="pub-btn">论文</a>{% endif %}
          {% if p.links.huggingface %}<a href="{{ p.links.huggingface }}" target="_blank" rel="noopener" class="pub-btn">🤗 HuggingFace</a>{% endif %}
          {% if p.links.dataset %}<a href="{{ p.links.dataset }}" target="_blank" rel="noopener" class="pub-btn">🤗 数据集</a>{% endif %}
          {% if p.links.homepage %}<a href="{{ p.links.homepage }}" target="_blank" rel="noopener" class="pub-btn">主页</a>{% endif %}
        </div>
      </div>
      {% if p.thumbnail %}{% include picture.html src=p.thumbnail alt=p.title loading="lazy" width="220" style="width:220px;border:1px solid #e2e8f0;border-radius:2px;object-fit:cover;flex-shrink:0;" %}{% endif %}
    </div>
    {% endfor %}
  </div>
</div>
</section>
