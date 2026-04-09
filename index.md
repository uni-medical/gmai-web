---
layout: default
title:  "Home"
lang:   "en"
---

<!-- ══════════════════════════════════════════════════════════════
     HERO — full-viewport, cinematic dark
     ══════════════════════════════════════════════════════════════ -->
<div class="landing-hero">
  <div class="landing-hero-bg"></div>
  <div class="landing-hero-grid"></div>

  <div class="landing-hero-inner">
    <div class="lh-eyebrow">{{ site.lab.institution }} &middot; Est. {{ site.lab.founded }}</div>

    <h1 class="lh-title">
      AI at the<br>
      <strong>Frontier</strong> of <em>Medicine</em>
    </h1>

    <p class="lh-tagline">{{ site.description }}</p>

    <div class="lh-cta">
      <a class="lh-btn primary" href="{{ '/publications/' | relative_url }}">View Publications</a>
      <a class="lh-btn outline" href="{{ '/team/'         | relative_url }}">Meet the Team</a>
      <a class="lh-btn outline" href="{{ '/contact/'      | relative_url }}">Join the Lab</a>
    </div>

    <div class="lh-affil">
      {{ site.lab.address }}
    </div>
  </div>

  <div class="lh-scroll-hint">
    <div class="scroll-bar"></div>
    Scroll
  </div>

  <div class="lh-stats-strip">
    <div class="lh-stats-inner">
      <div class="lh-stat">
        <span class="lh-stat-n">{{ site.stats.publications }}</span>
        <div class="lh-stat-l">Publications</div>
      </div>
      <div class="lh-stat">
        <span class="lh-stat-n">{{ site.stats.members }}</span>
        <div class="lh-stat-l">Group Members</div>
      </div>
      <div class="lh-stat">
        <span class="lh-stat-n">{{ site.stats.grants }}</span>
        <div class="lh-stat-l">Funded Projects</div>
      </div>
      <div class="lh-stat">
        <span class="lh-stat-n">{{ site.stats.citations }}</span>
        <div class="lh-stat-l">Citations</div>
      </div>
    </div>
  </div>
</div>


<!-- ══════════════════════════════════════════════════════════════
     RESEARCH SECTION 1 — Medical Data Infrastructure
     Image LEFT · Text RIGHT
     ══════════════════════════════════════════════════════════════ -->
<div class="rs-section fade">
  <div class="rs-visual vis-neural">
    <img class="rs-panel-img" src="{{ '/assets/images/projects/imaging-x/overview.png' | relative_url }}" alt="Project Imaging-X overview" loading="lazy" />
    <div class="rs-watermark">01</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">Medical Imaging</span>
        <span class="rs-tag">Data Infrastructure</span>
        <span class="rs-tag">Open Science</span>
      </div>
      <div class="rs-vis-stats">
        <div>
          <span class="rs-vis-stat-n">1,800+</span>
          <span class="rs-vis-stat-l">datasets archived</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">100B+</span>
          <span class="rs-vis-stat-l">tokens</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">361M</span>
          <span class="rs-vis-stat-l">segmentation masks</span>
        </div>
      </div>
    </div>
  </div>

  <div class="rs-text">
    <div class="rs-area">Medical Data Infrastructure</div>
    <div class="rs-title">Building the Foundation: Large-Scale Medical Data Platforms</div>
    <div class="rs-body">
      We build the data infrastructure that powers world-leading medical AI. Project
      Imaging-X surveys and integrates 1,000+ open medical imaging datasets via a
      Metadata-Driven Fusion Paradigm. Our private corpus exceeds 100B tokens of
      biomedical text, 100M+ medical images, and 361M segmentation masks — enabling
      foundation models that are truly general across modalities, tasks, and diseases.
    </div>
    <div class="rs-topics">
      <span class="rs-topic">Project Imaging-X</span>
      <span class="rs-topic">IMed-361M</span>
      <span class="rs-topic">GMAI-VL-5.5M</span>
      <span class="rs-topic">Metadata-driven fusion</span>
      <span class="rs-topic">SlideInstruction</span>
    </div>
    <a href="{{ '/projects/imaging-x/' | relative_url }}" class="rs-link">Explore Project Imaging-X →</a>
  </div>
</div>


<!-- ══════════════════════════════════════════════════════════════
     RESEARCH SECTION 2 — Medical Multimodal Large Models
     Text LEFT · Image RIGHT  (flipped)
     ══════════════════════════════════════════════════════════════ -->
<div class="rs-section rs-flip fade">
  <div class="rs-visual vis-genomics">
    <div class="rs-watermark">02</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">Multimodal LLM</span>
        <span class="rs-tag">Medical VQA</span>
        <span class="rs-tag">Pathology AI</span>
      </div>
      <div class="rs-vis-stats">
        <div>
          <span class="rs-vis-stat-n">5.5M</span>
          <span class="rs-vis-stat-l">image-text pairs</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">18</span>
          <span class="rs-vis-stat-l">clinical specialties</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">38</span>
          <span class="rs-vis-stat-l">imaging modalities</span>
        </div>
      </div>
    </div>
  </div>

  <div class="rs-text">
    <div class="rs-area">Medical Multimodal Large Models</div>
    <div class="rs-title">General Medical Vision-Language Models: GMAI-VL and Beyond</div>
    <div class="rs-body">
      We build world-leading medical multimodal large models. GMAI-VL, trained on
      5.5M image-text pairs across 18 clinical specialties, achieves SOTA on medical
      VQA and diagnostic reasoning tasks. SlideChat is the first vision-language assistant
      to directly understand gigapixel whole-slide pathology images. GMAI-VL-R1 introduces
      reinforcement learning, improving average accuracy by ~30% across eight imaging
      modalities and surpassing models 36× larger.
    </div>
    <div class="rs-topics">
      <span class="rs-topic">GMAI-VL</span>
      <span class="rs-topic">SlideChat (CVPR 2025)</span>
      <span class="rs-topic">GMAI-VL-R1</span>
      <span class="rs-topic">GMAI-MMBench</span>
      <span class="rs-topic">OmniMedVQA (CVPR 2024)</span>
    </div>
    <a href="{{ '/projects/gmai-vl/' | relative_url }}" class="rs-link">Explore GMAI-VL →</a>
  </div>
</div>


<!-- ══════════════════════════════════════════════════════════════
     RESEARCH SECTION 3 — Medical Image Segmentation Foundation Models
     Image LEFT · Text RIGHT
     ══════════════════════════════════════════════════════════════ -->
<div class="rs-section fade">
  <div class="rs-visual vis-molecular">
    <div class="rs-watermark">03</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">Image Segmentation</span>
        <span class="rs-tag">Foundation Models</span>
        <span class="rs-tag">3D Medical Imaging</span>
      </div>
      <div class="rs-vis-stats">
        <div>
          <span class="rs-vis-stat-n">1.4B</span>
          <span class="rs-vis-stat-l">parameters (STU-Net)</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">247</span>
          <span class="rs-vis-stat-l">anatomy classes</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">SOTA</span>
          <span class="rs-vis-stat-l">3D segmentation</span>
        </div>
      </div>
    </div>
  </div>

  <div class="rs-text">
    <div class="rs-area">Medical Image Segmentation</div>
    <div class="rs-title">Segment Anything in Medicine: STU-Net and SAM-Med Series</div>
    <div class="rs-body">
      We develop the largest-scale medical image segmentation foundation models.
      STU-Net scales from 14M to 1.4B parameters — the largest medical segmentation
      model — achieving excellent results in both direct inference and fine-tuning.
      SAM-Med2D and SAM-Med3D adapt the Segment Anything Model to medical imaging,
      enabling universal promptable segmentation across 14 imaging modalities and
      204 anatomical and lesion categories.
    </div>
    <div class="rs-topics">
      <span class="rs-topic">STU-Net (1.4B params)</span>
      <span class="rs-topic">SAM-Med2D</span>
      <span class="rs-topic">SAM-Med3D</span>
      <span class="rs-topic">IMed-361M (361M masks)</span>
      <span class="rs-topic">Interactive segmentation</span>
    </div>
    <a href="{{ '/projects/sam-med3d/' | relative_url }}" class="rs-link">Explore SAM-Med3D →</a>
  </div>
</div>


<!-- ══════════════════════════════════════════════════════════════
     RESEARCH SECTION 4 — Clinical AI Systems & Surgical Robotics
     Text LEFT · Image RIGHT  (flipped)
     ══════════════════════════════════════════════════════════════ -->
<div class="rs-section rs-flip fade">
  <div class="rs-visual vis-clinical">
    <div class="rs-watermark">04</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">Multi-Agent Systems</span>
        <span class="rs-tag">Surgical AI</span>
        <span class="rs-tag">Clinical Deployment</span>
      </div>
      <div class="rs-vis-stats">
        <div>
          <span class="rs-vis-stat-n">1,000+</span>
          <span class="rs-vis-stat-l">integrated tools</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">DTR</span>
          <span class="rs-vis-stat-l">diagnosis-treatment-research</span>
        </div>
      </div>
    </div>
  </div>

  <div class="rs-text">
    <div class="rs-area">Clinical AI Systems</div>
    <div class="rs-title">From Models to Action: Multi-Agent Systems and Autonomous Surgery</div>
    <div class="rs-body">
      We build end-to-end intelligent systems that bring AI to the clinic. DTR-MAS is a
      Diagnosis-Treatment-Research multi-agent platform that converts complex clinical
      and research workflows into traceable, auditable multi-agent collaboration. We are
      also building the world's first autonomous robot for gynecological adnexectomy surgery,
      integrating pre-operative planning, intraoperative navigation, and post-operative
      follow-up in a single autonomous pipeline.
    </div>
    <div class="rs-topics">
      <span class="rs-topic">DTR-MAS</span>
      <span class="rs-topic">Autonomous surgical robot</span>
      <span class="rs-topic">OphCLIP (ICCV 2025)</span>
      <span class="rs-topic">Ophora (MICCAI 2025 Oral)</span>
      <span class="rs-topic">Hospital pilot deployments</span>
    </div>
    <a href="{{ '/projects/' | relative_url }}" class="rs-link">Explore this project →</a>
  </div>
</div>


<!-- ══════════════════════════════════════════════════════════════
     RECENT PUBLICATIONS — dark strip
     ══════════════════════════════════════════════════════════════ -->
<div class="home-pubs-section fade">
  <div class="home-pubs-inner">
    <div class="home-pubs-head">
      <div>
        <div class="home-pubs-label">Scholarly Output</div>
        <div class="home-pubs-title">Recent Publications</div>
      </div>
      <a href="{{ '/publications/' | relative_url }}" class="home-pubs-link">All publications →</a>
    </div>

    <div class="home-pub-grid">
      {% for pub in site.data.publications limit:3 %}
      <div class="home-pub-card">
        <div class="home-pub-venue">
          {{ pub.venue }} &middot; {{ pub.year }}
          {% if pub.note and pub.note != "" %}<span class="home-pub-note">{{ pub.note }}</span>{% endif %}
        </div>
        <div class="home-pub-title">{{ pub.title }}</div>
        <div class="home-pub-authors">
          {% assign parts = pub.authors | split: ", " %}
          {% for part in parts %}
            {% if part contains site.lab.pi_last %}<strong>{{ part }}</strong>{% else %}{{ part }}{% endif %}{% unless forloop.last %}, {% endunless %}
          {% endfor %}
        </div>
        <div class="home-pub-links">
          {% if pub.links.paper %}<a href="{{ pub.links.paper }}" target="_blank" rel="noopener" class="pub-btn">Paper</a>{% endif %}
          {% if pub.links.code  %}<a href="{{ pub.links.code  }}" target="_blank" rel="noopener" class="pub-btn">Code</a>{% endif %}
        </div>
      </div>
      {% endfor %}
    </div>
  </div>
</div>


<!-- ══════════════════════════════════════════════════════════════
     NEWS + JOIN US — two-column bottom
     ══════════════════════════════════════════════════════════════ -->
<div class="home-bottom fade">

  <!-- Latest News -->
  <div class="home-news-panel">
    <div class="home-news-head">
      <div class="home-news-label">Updates</div>
      <div class="home-news-title">Latest News</div>
    </div>
    {% for item in site.data.news limit:4 %}
    <div class="home-news-item">
      <div class="home-news-meta">
        <span class="home-news-date">{{ item.date }}</span>
        <span class="nc-{{ item.category }} home-news-cat">{{ item.label }}</span>
      </div>
      <div class="home-news-hed">{{ item.headline }}</div>
    </div>
    {% endfor %}
    <div style="margin-top:1.5rem;">
      <a href="{{ '/news/' | relative_url }}" class="section-action">All news →</a>
    </div>
  </div>

  <!-- Join Us -->
  <div class="join-panel">
    <div class="join-label">Opportunities</div>
    <div class="join-title">We Are Actively Recruiting</div>
    <div class="join-desc">
      We welcome motivated PhD students, postdoctoral fellows, and visiting researchers
      who value rigorous thinking, collaborative spirit, and science that matters.
    </div>
    <div class="join-btns">
      <a href="{{ '/contact/' | relative_url }}" class="join-btn solid">PhD Applications</a>
      <a href="{{ '/contact/' | relative_url }}" class="join-btn solid">Postdoctoral Positions</a>
      <a href="{{ '/contact/' | relative_url }}" class="join-btn ghost">General Enquiry →</a>
    </div>
  </div>

</div>
