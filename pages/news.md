---
layout:    page
title:     "News"
permalink: /news/
lang:      "en"
---
{% assign t = site.data.strings.en %}
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
      <td class="news-cat"><span class="nc-{{ item.category }}">{{ item.label }}</span></td>
      <td>
        <div class="news-hed">{{ item.headline }}</div>
        <div class="news-body">{{ item.body }}</div>
      </td>
    </tr>
    {% endfor %}
  </table>
</div>
</section>
