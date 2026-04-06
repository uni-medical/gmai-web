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
        <div class="contact-block-label">{{ t.contact.location }}</div>
        <div class="contact-block-val">{{ site.lab.address }}</div>
      </div>
      <div class="contact-block">
        <div class="contact-block-label">{{ t.contact.email }}</div>
        <div class="contact-block-val"><a href="mailto:{{ site.lab.email }}">{{ site.lab.email }}</a></div>
      </div>
      <div class="contact-block">
        <div class="contact-block-label">{{ t.contact.online }}</div>
        <div class="contact-block-val">
          {% if site.lab.github  %}<a href="{{ site.lab.github  }}" target="_blank">GitHub</a>&nbsp;&middot;&nbsp;{% endif %}
          {% if site.lab.scholar %}<a href="{{ site.lab.scholar }}" target="_blank">Google Scholar</a>{% endif %}
        </div>
      </div>
      <div class="contact-block">
        <div class="contact-block-label">{{ t.contact.prospective }}</div>
        <div class="contact-block-val">
          我们欢迎有意向的博士生和博士后申请者。请发送简历、研究兴趣陈述及代表性成果至以上邮箱。
        </div>
      </div>
    </div>
    <form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
      <div class="form-field"><label>姓名</label><input type="text" name="name" required /></div>
      <div class="form-field"><label>电子邮箱</label><input type="email" name="email" required /></div>
      <div class="form-field">
        <label>咨询类型</label>
        <select name="subject">
          <option>一般咨询</option>
          <option>科研合作</option>
          <option>博士申请</option>
          <option>博士后申请</option>
          <option>媒体 / 新闻</option>
        </select>
      </div>
      <div class="form-field"><label>留言</label><textarea name="message" required></textarea></div>
      <button class="submit-btn" type="submit">{{ t.contact.send }}</button>
    </form>
  </div>
</div>
</section>
