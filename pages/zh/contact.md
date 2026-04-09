---
layout:    page
title:     "联系"
permalink: /zh/contact/
lang:      "zh"
---
{% assign t = site.data.strings.zh %}
<section id="contact" class="alt">
<div class="section-inner fade">
  <div class="section-head">
    <div><div class="section-label">{{ t.sections.contact_label }}</div>
         <div class="section-title">{{ t.sections.contact }}</div></div>
  </div>
  <div class="contact-grid">
    <div>
      <div class="contact-block">
        <div class="contact-block-label">邮箱</div>
        <div class="contact-block-val"><a href="mailto:{{ site.lab.email }}">{{ site.lab.email }}</a></div>
      </div>
      <div class="contact-block">
        <div class="contact-block-label">关注我们</div>
        <div class="contact-block-val">
          <a href="https://github.com/uni-medical" target="_blank" rel="noopener">GitHub 组织</a>&nbsp;&middot;&nbsp;
          <a href="https://www.zhihu.com/people/gmai-team" target="_blank" rel="noopener">知乎专栏</a>&nbsp;&middot;&nbsp;
          {% if site.lab.scholar %}<a href="{{ site.lab.scholar }}" target="_blank" rel="noopener">Google Scholar</a>{% endif %}
        </div>
      </div>
      <div class="contact-block">
        <div class="contact-block-label">有意加入？</div>
        <div class="contact-block-val">
          我们欢迎来自学术界、医疗机构和产业界的合作。如果您对开放岗位或科研合作感兴趣，
          请将简历、研究兴趣简述及代表性工作发送至
          <a href="mailto:{{ site.lab.email }}">{{ site.lab.email }}</a>。
        </div>
      </div>
    </div>
  </div>
</div>
</section>
