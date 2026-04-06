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
          {% if site.lab.scholar %}<a href="{{ site.lab.scholar }}" target="_blank">Google Scholar</a>&nbsp;&middot;&nbsp;{% endif %}
          {% if site.lab.twitter %}<a href="{{ site.lab.twitter }}" target="_blank">Twitter</a>{% endif %}
        </div>
      </div>
      <div class="contact-block">
        <div class="contact-block-label">{{ t.contact.prospective }}</div>
        <div class="contact-block-val">
          We welcome enquiries from motivated candidates. Please email a CV,
          a brief statement of research interests, and representative
          publications or writing samples.
        </div>
      </div>
    </div>
    <!-- Form via Formspree: replace YOUR_FORM_ID with your Formspree endpoint -->
    <form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
      <div class="form-field"><label>Full Name</label><input type="text" name="name" required /></div>
      <div class="form-field"><label>Email Address</label><input type="email" name="email" required /></div>
      <div class="form-field">
        <label>Nature of Enquiry</label>
        <select name="subject">
          <option>General Inquiry</option>
          <option>Research Collaboration</option>
          <option>PhD Application</option>
          <option>Postdoctoral Application</option>
          <option>Media / Press</option>
        </select>
      </div>
      <div class="form-field"><label>Message</label><textarea name="message" required></textarea></div>
      <button class="submit-btn" type="submit">{{ t.contact.send }}</button>
    </form>
  </div>
</div>
</section>
