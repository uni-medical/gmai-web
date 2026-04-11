---
layout:    page
title:     "Team"
permalink: /team/
lang:      "en"
---
{% assign t = site.data.strings.en %}
<section id="team" class="alt">
<div class="section-inner fade">
  <div class="section-head">
    <div><div class="section-label">{{ t.sections.team_label }}</div>
         <div class="section-title">{{ t.sections.team }}</div></div>
    <a href="#alumni" class="section-action">{{ t.team.alumni_link }}</a>
  </div>

  <div class="team-pis">
    <div class="team-pi">
      {% if site.data.team.pi.photo != "" %}
        {% include picture.html src=site.data.team.pi.photo alt=site.data.team.pi.name class="team-photo" width="180" height="180" %}
      {% else %}
        <div class="team-photo-ph">{{ site.data.team.pi.initials }}</div>
      {% endif %}
      <div>
        <div class="pi-role">{{ t.team.pi_badge }}</div>
        <div class="pi-name">{{ site.data.team.pi.name }}</div>
        <div class="pi-title">{{ site.data.team.pi.title }}</div>
        <div class="pi-bio">{{ site.data.team.pi.bio }}</div>
        <div class="pi-links">
          {% if site.data.team.pi.links.website != "" %}<a href="{{ site.data.team.pi.links.website }}" target="_blank">Website</a>{% endif %}
          {% if site.data.team.pi.links.scholar != ""  %}<a href="{{ site.data.team.pi.links.scholar }}" target="_blank">Google Scholar</a>{% endif %}
          {% if site.data.team.pi.links.email != ""    %}<a href="mailto:{{ site.data.team.pi.links.email }}">Email</a>{% endif %}
          {% if site.data.team.pi.links.cv != ""       %}<a href="{{ site.data.team.pi.links.cv | relative_url }}">CV</a>{% endif %}
          {% if site.data.team.pi.links.github != ""   %}<a href="{{ site.data.team.pi.links.github }}" target="_blank">GitHub</a>{% endif %}
          {% if site.data.team.pi.links.twitter != ""  %}<a href="{{ site.data.team.pi.links.twitter }}" target="_blank">Twitter</a>{% endif %}
          <a href="{{ '/team/junjun-he/' | relative_url }}" class="profile-link">Profile →</a>
        </div>
      </div>
    </div>

    {% for copi in site.data.team.co_pis %}
    <div class="team-pi">
      {% if copi.photo != "" and copi.photo %}
        {% include picture.html src=copi.photo alt=copi.name class="team-photo" width="180" height="180" %}
      {% else %}
        <div class="team-photo-ph">{{ copi.initials }}</div>
      {% endif %}
      <div>
        {% if copi.role != "" %}<div class="pi-role">{{ copi.role }}</div>{% endif %}
        <div class="pi-name">{{ copi.name }}</div>
        {% if copi.title != "" and copi.title %}<div class="pi-title">{{ copi.title }}</div>{% endif %}
        {% if copi.bio != "" and copi.bio %}<div class="pi-bio">{{ copi.bio }}</div>{% endif %}
        <div class="pi-links">
          {% if copi.links.website != "" and copi.links.website %}<a href="{{ copi.links.website }}" target="_blank">Website</a>{% endif %}
          {% if copi.links.scholar != "" and copi.links.scholar %}<a href="{{ copi.links.scholar }}" target="_blank">Google Scholar</a>{% endif %}
          {% if copi.links.email != "" and copi.links.email %}<a href="mailto:{{ copi.links.email }}">Email</a>{% endif %}
          {% if copi.links.github != "" and copi.links.github %}<a href="{{ copi.links.github }}" target="_blank">GitHub</a>{% endif %}
          {% if copi.slug != "" %}<a href="{{ '/team/' | append: copi.slug | append: '/' | relative_url }}" class="profile-link">Profile →</a>{% endif %}
        </div>
      </div>
    </div>
    {% endfor %}
  </div>

  <div class="team-section-label">Staff</div>
  <div class="team-grid">
    {% for m in site.data.team.members %}
    {% if m.role contains "Research Intern" %}{% continue %}{% endif %}
    <div class="member-card">
      {% if m.photo != "" %}
        {% include picture.html src=m.photo alt=m.name class="member-photo" loading="lazy" width="96" height="96" %}
      {% else %}
        <div class="member-photo">{{ m.initials }}</div>
      {% endif %}
      <div class="member-name">{{ m.name }}</div>
      <div class="member-role">{{ m.role }}</div>
      <div class="member-focus">{{ m.focus }}</div>
      <div class="member-links">
        {% if m.links.scholar != "" %}<a href="{{ m.links.scholar }}" target="_blank">Scholar</a>{% endif %}
        {% if m.links.github  != "" %}<a href="{{ m.links.github  }}" target="_blank">GitHub</a>{% endif %}
        {% if m.links.website != "" %}<a href="{{ m.links.website }}" target="_blank">Website</a>{% endif %}
        {% if m.slug != "" %}<a href="{{ '/team/' | append: m.slug | append: '/' | relative_url }}" class="profile-link">Profile →</a>{% endif %}
      </div>
    </div>
    {% endfor %}
  </div>

  <div class="team-section-label">Research Interns</div>
  <div class="team-grid">
    {% for m in site.data.team.members %}
    {% unless m.role contains "Research Intern" %}{% continue %}{% endunless %}
    <div class="member-card">
      {% if m.photo != "" %}
        {% include picture.html src=m.photo alt=m.name class="member-photo" loading="lazy" width="96" height="96" %}
      {% else %}
        <div class="member-photo">{{ m.initials }}</div>
      {% endif %}
      <div class="member-name">{{ m.name }}</div>
      <div class="member-role">{{ m.role }}</div>
      <div class="member-focus">{{ m.focus }}</div>
      <div class="member-links">
        {% if m.links.scholar != "" %}<a href="{{ m.links.scholar }}" target="_blank">Scholar</a>{% endif %}
        {% if m.links.github  != "" %}<a href="{{ m.links.github  }}" target="_blank">GitHub</a>{% endif %}
        {% if m.links.website != "" %}<a href="{{ m.links.website }}" target="_blank">Website</a>{% endif %}
        {% if m.slug != "" %}<a href="{{ '/team/' | append: m.slug | append: '/' | relative_url }}" class="profile-link">Profile →</a>{% endif %}
      </div>
    </div>
    {% endfor %}
  </div>

  {% if site.data.team.alumni %}
  <h3 id="alumni" style="font-family:'IBM Plex Serif',serif;font-weight:400;margin:3rem 0 1rem;font-size:1.3rem;color:#0f172a;">Past Members</h3>
  <table style="width:100%;border-collapse:collapse;font-size:.85rem;">
    <tr style="border-bottom:1px solid #e2e8f0;">
      <th style="text-align:left;padding:.5rem;font-weight:600;color:#475569;">Name</th>
      <th style="text-align:left;padding:.5rem;font-weight:600;color:#475569;">Period</th>
      <th style="text-align:left;padding:.5rem;font-weight:600;color:#475569;">Current Position</th>
      <th style="text-align:left;padding:.5rem;font-weight:600;color:#475569;">Research Focus</th>
      <th style="text-align:left;padding:.5rem;font-weight:600;color:#475569;"></th>
    </tr>
    {% for a in site.data.team.alumni %}
    <tr style="border-top:1px solid #e2e8f0;">
      <td style="padding:.6rem .5rem;font-weight:600;color:#1e293b;white-space:nowrap;">{{ a.name | replace: " (", "<br>(" }}</td>
      <td style="padding:.6rem .5rem;color:#475569;">{{ a.period }}</td>
      <td style="padding:.6rem .5rem;color:#475569;">{{ a.position }}</td>
      <td style="padding:.6rem .5rem;color:#475569;">{{ a.focus }}</td>
      <td style="padding:.6rem .5rem;">{% if a.slug %}<a href="{{ '/team/' | append: a.slug | append: '/' | relative_url }}" style="font-size:.75rem;color:#1e3a5f;font-weight:500;text-decoration:none;border-bottom:1px solid transparent;" onmouseover="this.style.borderColor='#1e3a5f'" onmouseout="this.style.borderColor='transparent'">Profile →</a>{% endif %}</td>
    </tr>
    {% endfor %}
  </table>
  {% endif %}
</div>
</section>
