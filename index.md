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
      {{ site.lab.institution }}
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
    <img class="rs-thumb" src="{{ '/assets/images/projects/imaging-x/overview.png' | relative_url }}" alt="Imaging-X overview" loading="lazy" />
    <div class="rs-body">
      We build the data infrastructure that powers world-leading medical AI. Project
      Imaging-X surveys and integrates 1,000+ open medical imaging datasets via a
      Metadata-Driven Fusion Paradigm. Our private corpus exceeds 100B tokens of
      biomedical text, 100M+ medical images, and 361M segmentation masks — enabling
      foundation models that are truly general across modalities, tasks, and diseases.
    </div>
    <div class="rs-topics">
      <span class="rs-topic">Project Imaging-X</span>
      <span class="rs-topic">Metadata-driven fusion</span>
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
    <img class="rs-panel-img" src="{{ '/assets/images/projects/gmai-vl/gmai_vl0.png' | relative_url }}" alt="GMAI-VL data pipeline and model architecture" loading="lazy" />
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
    <img class="rs-thumb" src="{{ '/assets/images/projects/gmai-vl/gmai_vl1.png' | relative_url }}" alt="GMAI-VL architecture" loading="lazy" />
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
      <span class="rs-topic">GMAI-VL-5.5M</span>
      <span class="rs-topic">GMAI-VL-R1</span>
      <span class="rs-topic">GMAI-MMBench</span>
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
    <img class="rs-panel-img" src="{{ '/assets/images/projects/sam-med3d/sam_med3d4.png' | relative_url }}" alt="SAM-Med3D fully 3D architecture" loading="lazy" />
    <div class="rs-watermark">03</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">Image Segmentation</span>
        <span class="rs-tag">Foundation Models</span>
        <span class="rs-tag">3D Medical Imaging</span>
      </div>
      <div class="rs-vis-stats">
        <div>
          <span class="rs-vis-stat-n">143K</span>
          <span class="rs-vis-stat-l">3D masks (SA-Med3D)</span>
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
    <div class="rs-title">Segment Anything in Medicine: SAM-Med2D and SAM-Med3D</div>
    <img class="rs-thumb" src="{{ '/assets/images/projects/sam-med3d/sam_med3d1.png' | relative_url }}" alt="SAM-Med3D visualization" loading="lazy" />
    <div class="rs-body">
      We adapt the Segment Anything Model to the medical domain, delivering universal
      promptable segmentation across 14 imaging modalities and 247 anatomical and lesion
      categories. SAM-Med2D leverages SA-Med2D-20M for 2D slice segmentation, while
      SAM-Med3D introduces a fully native 3D architecture trained on SA-Med3D-140K
      (22K volumes, 143K masks) — achieving 60% Dice improvement over SAM with just
      a single 3D point prompt.
    </div>
    <div class="rs-topics">
      <span class="rs-topic">SAM-Med3D</span>
      <span class="rs-topic">SAM-Med2D</span>
      <span class="rs-topic">SA-Med3D-140K</span>
      <span class="rs-topic">Interactive Segmentation</span>
    </div>
    <a href="{{ '/projects/sam-med3d/' | relative_url }}" class="rs-link">Explore SAM-Med3D →</a>
  </div>
</div>


<!-- ══════════════════════════════════════════════════════════════
     RESEARCH SECTION 4 — Clinical AI Systems / Computational Pathology
     Text LEFT · Image RIGHT  (flipped)
     ══════════════════════════════════════════════════════════════ -->
<div class="rs-section rs-flip fade">
  <div class="rs-visual vis-clinical">
    <img class="rs-panel-img" src="{{ '/assets/images/projects/slide-chat/SlideChat2.png' | relative_url }}" alt="SlideChat architecture — WSI understanding pipeline" loading="lazy" />
    <div class="rs-watermark">04</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">Computational Pathology</span>
        <span class="rs-tag">Vision-Language Model</span>
        <span class="rs-tag">CVPR 2025</span>
      </div>
      <div class="rs-vis-stats">
        <div>
          <span class="rs-vis-stat-n">81.17%</span>
          <span class="rs-vis-stat-l">VQA accuracy (TCGA)</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">18/22</span>
          <span class="rs-vis-stat-l">SOTA tasks</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">176K</span>
          <span class="rs-vis-stat-l">VQA training pairs</span>
        </div>
      </div>
    </div>
  </div>

  <div class="rs-text">
    <div class="rs-area">Clinical AI Systems</div>
    <div class="rs-title">Whole-Slide Pathology Intelligence: SlideChat and the Future of Clinical AI</div>
    <img class="rs-thumb" src="{{ '/assets/images/projects/slide-chat/SlideChat3.png' | relative_url }}" alt="SlideChat interface" loading="lazy" />
    <div class="rs-body">
      SlideChat is the first vision-language assistant capable of understanding gigapixel
      whole-slide pathology images in their entirety. Trained on SlideInstruction (4.2K WSI
      captions + 176K VQA pairs from TCGA), SlideChat achieves SOTA on 18 of 22 tasks on
      SlideBench, reaching 81.17% accuracy on SlideBench-VQA (TCGA) — a 13.47% improvement
      over the next best model. Accepted at CVPR 2025.
    </div>
    <div class="rs-topics">
      <span class="rs-topic">SlideChat (CVPR 2025)</span>
      <span class="rs-topic">SlideInstruction</span>
      <span class="rs-topic">SlideBench</span>
      <span class="rs-topic">WSI understanding</span>
    </div>
    <a href="{{ '/projects/slide-chat/' | relative_url }}" class="rs-link">Explore SlideChat →</a>
  </div>
</div>


<!-- ══════════════════════════════════════════════════════════════
     RESEARCH SECTION 5 — Scalable Medical Image Segmentation
     Image LEFT · Text RIGHT
     ══════════════════════════════════════════════════════════════ -->
<div class="rs-section fade">
  <div class="rs-visual vis-stunet">
    <img class="rs-panel-img" src="{{ '/assets/images/projects/stu-net/stu_net7.png' | relative_url }}" alt="STU-Net qualitative CT segmentation results" loading="lazy" />
    <div class="rs-watermark">05</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">Medical Image Segmentation</span>
        <span class="rs-tag">Scalable Models</span>
        <span class="rs-tag">MICCAI 2023</span>
      </div>
      <div class="rs-vis-stats">
        <div>
          <span class="rs-vis-stat-n">1.4B</span>
          <span class="rs-vis-stat-l">parameters (STU-Net-H)</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">90.06%</span>
          <span class="rs-vis-stat-l">mean DSC</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">104</span>
          <span class="rs-vis-stat-l">anatomy classes</span>
        </div>
      </div>
    </div>
  </div>

  <div class="rs-text">
    <div class="rs-area">Medical Image Segmentation</div>
    <div class="rs-title">Scaling Laws in Medicine: STU-Net from 14M to 1.4B Parameters</div>
    <img class="rs-thumb" src="{{ '/assets/images/projects/stu-net/stu_net7.png' | relative_url }}" alt="STU-Net segmentation results" loading="lazy" />
    <div class="rs-body">
      STU-Net establishes scaling laws for 3D medical image segmentation. A family of
      four models — S (14M), B (58M), L (440M), and H (1.4B) — are pre-trained on
      TotalSegmentator (1,204 CT volumes, 104 anatomy classes). STU-Net-H achieves
      90.06% mean DSC, surpassing nnU-Net by 3.3 points and all Transformer competitors.
      At 1.4B parameters, a single universal model outperforms five category-specific
      specialist models — a decisive step toward a medical segmentation foundation model.
    </div>
    <div class="rs-topics">
      <span class="rs-topic">STU-Net-H (1.4B)</span>
      <span class="rs-topic">TotalSegmentator</span>
      <span class="rs-topic">MICCAI 2023 Champion</span>
      <span class="rs-topic">Transfer Learning</span>
    </div>
    <a href="{{ '/projects/stu-net/' | relative_url }}" class="rs-link">Explore STU-Net →</a>
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
    <div class="join-label">Join Us</div>
    <div class="join-title">Building General Medical Intelligence</div>
    <div class="join-desc">
      We are a research team at Shanghai AI Laboratory working toward General Medical
      Intelligence — AI that understands, reasons, and acts across the full spectrum of
      clinical and biomedical tasks. We collaborate with leading universities and hospitals
      worldwide. If you share this vision, we have open positions and welcome your inquiry.
    </div>
    <div class="join-btns">
      <a href="{{ '/contact/' | relative_url }}" class="join-btn solid">Open Positions</a>
    </div>
  </div>

</div>
