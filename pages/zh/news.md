---
layout:    page
title:     "动态"
permalink: /zh/news/
lang:      "zh"
---
{% assign t = site.data.strings.zh %}
<section id="news">
<div class="section-inner fade">
  <div class="section-head">
    <div><div class="section-label">{{ t.sections.news_label }}</div>
         <div class="section-title">{{ t.sections.news }}</div></div>
  </div>
  <table class="news-table">
    {% for item in site.data.news %}
    <tr>
      <td class="news-date-col">{{ item.date }}</td>
      <td class="news-cat"><span class="nc-{{ item.category }}">{% if item.label_zh %}{{ item.label_zh }}{% else %}{{ item.label }}{% endif %}</span></td>
      <td>
        <div class="news-hed">{% if item.headline_zh %}{{ item.headline_zh }}{% else %}{{ item.headline }}{% endif %}</div>
        <div class="news-body">{% if item.body_zh %}{{ item.body_zh }}{% else %}{{ item.body }}{% endif %}</div>
      </td>
    </tr>
    {% endfor %}
  </table>
</div>
</section>
