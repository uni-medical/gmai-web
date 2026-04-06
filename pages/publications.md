---
layout:    page
title:     "Publications"
permalink: /publications/
lang:      "en"
---
{% assign t = site.data.strings.en %}
<section id="publications">
<div class="section-inner fade">
  <div class="section-head">
    <div><div class="section-label">{{ t.sections.pubs_label }}</div>
         <div class="section-title">{{ t.sections.pubs }}</div></div>
    {% if site.lab.scholar %}
      <a href="{{ site.lab.scholar }}" class="section-action" target="_blank" rel="noopener">
        {{ t.pubs.scholar_link }}
      </a>
    {% endif %}
  </div>

  <div class="pub-filters">
    <button class="pf on" data-filter="all">{{ t.pubs.filter_all }}</button>
    {% assign years = site.data.publications | map: 'year' | uniq | sort | reverse %}
    {% for yr in years %}
      <button class="pf" data-filter="{{ yr }}">{{ yr }}</button>
    {% endfor %}
    <!-- Add keyword filter buttons manually below, matching keywords in publications.yml -->
    <!-- <button class="pf" data-filter="neural decoding">Neural Decoding</button> -->
  </div>

  <div class="pub-list">
    {% for pub in site.data.publications %}
      {% include pub_card.html pub=pub %}
    {% endfor %}
  </div>
</div>
</section>
