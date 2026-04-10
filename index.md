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

    <div class="lh-social">
      {% if site.lab.github %}<a href="{{ site.lab.github }}" target="_blank" rel="noopener" title="GitHub" class="lh-social-link">
        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385.6.105.825-.255.825-.57 0-.285-.015-1.23-.015-2.235-3.015.555-3.795-.735-4.035-1.41-.135-.345-.72-1.41-1.23-1.695-.42-.225-1.02-.78-.015-.795.945-.015 1.62.87 1.845 1.23 1.08 1.815 2.805 1.305 3.495.99.105-.78.42-1.305.765-1.605-2.67-.3-5.46-1.335-5.46-5.925 0-1.305.465-2.385 1.23-3.225-.12-.3-.54-1.53.12-3.18 0 0 1.005-.315 3.3 1.23.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23.66 1.65.24 2.88.12 3.18.765.84 1.23 1.905 1.23 3.225 0 4.605-2.805 5.625-5.475 5.925.435.375.81 1.095.81 2.22 0 1.605-.015 2.895-.015 3.3 0 .315.225.69.825.57A12.02 12.02 0 0024 12c0-6.63-5.37-12-12-12z"/></svg>
        <span>GitHub</span>
      </a>{% endif %}
      {% if site.lab.huggingface %}<a href="{{ site.lab.huggingface }}" target="_blank" rel="noopener" title="Hugging Face" class="lh-social-link">
        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 2C6.477 2 2 6.477 2 12s4.477 10 10 10 10-4.477 10-10S17.523 2 12 2zm-1.5 5.5a1.25 1.25 0 110 2.5 1.25 1.25 0 010-2.5zm3 0a1.25 1.25 0 110 2.5 1.25 1.25 0 010-2.5zM8.5 13c0-1 1.5-1.5 3.5-1.5s3.5.5 3.5 1.5c0 1.5-1.5 3-3.5 3S8.5 14.5 8.5 13z"/></svg>
        <span>Hugging Face</span>
      </a>{% endif %}
      {% if site.lab.linkedin %}<a href="{{ site.lab.linkedin }}" target="_blank" rel="noopener" title="LinkedIn" class="lh-social-link">
        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433a2.062 2.062 0 01-2.063-2.065 2.064 2.064 0 112.063 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/></svg>
        <span>LinkedIn</span>
      </a>{% endif %}
      {% if site.lab.xiaohongshu %}<a href="{{ site.lab.xiaohongshu }}" target="_blank" rel="noopener" title="小红书" class="lh-social-link">
        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1.8 14.5H10l-.3 1.5H8.2l.3-1.5H6.5l.3-1.3h2l.5-2.4H7.2l.3-1.3h2.1l.3-1.5h1.5l-.3 1.5h1.8l.3-1.5h1.5l-.3 1.5h2l-.3 1.3h-2l-.5 2.4h2.1l-.3 1.3zm-1.2-1.3l.5-2.4h-1.8l-.5 2.4h1.8z"/></svg>
        <span>小红书</span>
      </a>{% endif %}
      {% if site.lab.zhihu %}<a href="{{ site.lab.zhihu }}" target="_blank" rel="noopener" title="知乎" class="lh-social-link">
        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M5.721 0C2.251 0 0 2.25 0 5.719V18.28C0 21.751 2.252 24 5.721 24h12.56C21.751 24 24 21.75 24 18.281V5.72C24 2.249 21.75 0 18.281 0zm1.964 4.078h6.151c.048.108.09.223.127.344l.063.215h2.156l-.063.344c-.14.763-.477 1.97-.477 1.97h-1.57s.298-1.03.378-1.402H9.58l-.29 1.402H7.655l.3-1.402H5.906l.102-.344s.337-1.207.477-1.97l.064-.344h2.156l-.063-.215a3.18 3.18 0 00-.127-.344zm6.34 3.797h5.344l-.234.797s-.797 2.734-1.164 3.89c-.578 1.828-1.758 3.22-3.281 4.142-.672.406-2.578 1.29-2.578 1.29l-.484-.75s1.812-.89 2.437-1.313c1.375-.93 2.227-2.133 2.688-3.64.25-.82.86-3.218.86-3.218H13.89l-.078.281c-.234.86-.516 1.703-.813 2.484l-.125.328h1.86v.797H12.39l-.297.672c-.11.25-.219.484-.344.703h2.969v.797H11.25c-.563.703-1.282 1.266-2.016 1.734l-.547-.61c.626-.39 1.22-.874 1.64-1.437l.095-.14H7.593v-.797h3.297c.188-.32.36-.672.516-1.047l.094-.328H8.812v-.797h3.016c.297-.766.562-1.578.797-2.406l.078-.281h-2.89v-.797h6.21z"/></svg>
        <span>知乎</span>
      </a>{% endif %}
      {% if site.lab.scholar %}<a href="{{ site.lab.scholar }}" target="_blank" rel="noopener" title="Google Scholar" class="lh-social-link">
        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M5.242 13.769L0 9.5 12 0l12 9.5-5.242 4.269C17.548 11.249 14.978 9.5 12 9.5c-2.977 0-5.548 1.748-6.758 4.269zM12 10a7 7 0 107 7 7 7 0 00-7-7z"/></svg>
        <span>Scholar</span>
      </a>{% endif %}
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
    {% include picture.html src="/assets/images/projects/imaging-x/overview.png" alt="Project Imaging-X overview" class="rs-panel-img" loading="lazy" %}
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
    {% include picture.html src="/assets/images/projects/imaging-x/overview.png" alt="Imaging-X overview" class="rs-thumb" loading="lazy" %}
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
    {% include picture.html src="/assets/images/projects/gmai-vl/gmai_vl0.png" alt="GMAI-VL data pipeline and model architecture" class="rs-panel-img" loading="lazy" %}
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
    {% include picture.html src="/assets/images/projects/gmai-vl/gmai_vl1.png" alt="GMAI-VL architecture" class="rs-thumb" loading="lazy" %}
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
    {% include picture.html src="/assets/images/projects/sam-med3d/sam_med3d4.png" alt="SAM-Med3D fully 3D architecture" class="rs-panel-img" loading="lazy" %}
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
    {% include picture.html src="/assets/images/projects/sam-med3d/sam_med3d1.png" alt="SAM-Med3D visualization" class="rs-thumb" loading="lazy" %}
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
    {% include picture.html src="/assets/images/projects/slide-chat/SlideChat2.png" alt="SlideChat architecture — WSI understanding pipeline" class="rs-panel-img" loading="lazy" %}
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
    {% include picture.html src="/assets/images/projects/slide-chat/SlideChat3.png" alt="SlideChat interface" class="rs-thumb" loading="lazy" %}
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
    {% include picture.html src="/assets/images/projects/stu-net/stu_net7.png" alt="STU-Net qualitative CT segmentation results" class="rs-panel-img" loading="lazy" %}
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
    {% include picture.html src="/assets/images/projects/stu-net/stu_net7.png" alt="STU-Net segmentation results" class="rs-thumb" loading="lazy" %}
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
