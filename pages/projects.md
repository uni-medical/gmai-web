---
layout:    page
title:     "Featured Research"
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
        <div style="display:flex;gap:.4rem;flex-wrap:wrap;margin-top:.6rem;">
          {% if p.slug %}<a href="{{ '/projects/' | append: p.slug | append: '/' | relative_url }}" class="pub-btn">Project Page →</a>{% endif %}
          {% if p.links.github %}<a href="{{ p.links.github }}" target="_blank" rel="noopener" class="pub-btn">GitHub</a>{% endif %}
          {% if p.links.paper %}<a href="{{ p.links.paper }}" target="_blank" rel="noopener" class="pub-btn">Paper</a>{% endif %}
          {% if p.links.huggingface %}<a href="{{ p.links.huggingface }}" target="_blank" rel="noopener" class="pub-btn">🤗 HuggingFace</a>{% endif %}
          {% if p.links.dataset %}<a href="{{ p.links.dataset }}" target="_blank" rel="noopener" class="pub-btn">🤗 Dataset</a>{% endif %}
          {% if p.links.homepage %}<a href="{{ p.links.homepage }}" target="_blank" rel="noopener" class="pub-btn">Homepage</a>{% endif %}
        </div>
      </div>
    </div>
    {% endfor %}
  </div>
</div>
</section>
