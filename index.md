---
layout: default
title:  "Home"
lang:   "en"
---

<!-- ══════════════════════════════════════════════════════════════
     HERO — full-viewport, cinematic dark
     ══════════════════════════════════════════════════════════════ -->
<div class="landing-hero">
  <div class="landing-hero-grid"></div>

  <div class="landing-hero-inner">
    <div class="lh-eyebrow">{{ site.lab.institution }} &middot; Est. {{ site.lab.founded }}</div>

    <h1 class="lh-title">
      Science at the<br>
      <strong>Frontier</strong> of <em>Computation</em>
    </h1>

    <p class="lh-tagline">{{ site.description }}</p>

    <div class="lh-cta">
      <a class="lh-btn primary" href="{{ '/publications/' | relative_url }}">View Publications</a>
      <a class="lh-btn outline" href="{{ '/team/'         | relative_url }}">Meet the Team</a>
      <a class="lh-btn outline" href="{{ '/contact/'      | relative_url }}">Join the Lab</a>
    </div>

    <div class="lh-affil">
      {{ site.lab.department }} &middot; {{ site.lab.address }}
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
     RESEARCH SECTION 1 — Neural Decoding × BCI
     Image LEFT · Text RIGHT
     ══════════════════════════════════════════════════════════════ -->
<div class="rs-section fade">
  <div class="rs-visual vis-neural">
    <div class="rs-watermark">01</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">Neuroscience</span>
        <span class="rs-tag">Machine Learning</span>
        <span class="rs-tag">BCI</span>
      </div>
      <div class="rs-vis-stats">
        <div>
          <span class="rs-vis-stat-n">5</span>
          <span class="rs-vis-stat-l">NHP subjects</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">&lt;20ms</span>
          <span class="rs-vis-stat-l">decode latency</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">SOTA</span>
          <span class="rs-vis-stat-l">accuracy</span>
        </div>
      </div>
    </div>
  </div>

  <div class="rs-text">
    <div class="rs-area">Neuroscience × Machine Learning</div>
    <div class="rs-title">Neural Decoding with Transformer Architectures</div>
    <div class="rs-body">
      We apply attention-based architectures to decode motor intent from high-density
      neural recordings in real time. Our systems achieve sub-20ms latency across five
      non-human primate subjects, establishing principled computational approaches
      under stringent clinical latency constraints.
    </div>
    <div class="rs-topics">
      <span class="rs-topic">Attention mechanisms</span>
      <span class="rs-topic">Motor cortex decoding</span>
      <span class="rs-topic">Real-time inference</span>
      <span class="rs-topic">Brain–machine interfaces</span>
      <span class="rs-topic">NIH R01 · 2022–2027</span>
    </div>
    <a href="{{ '/projects/' | relative_url }}" class="rs-link">Explore this project →</a>
  </div>
</div>


<!-- ══════════════════════════════════════════════════════════════
     RESEARCH SECTION 2 — Computational Genomics
     Text LEFT · Image RIGHT  (flipped)
     ══════════════════════════════════════════════════════════════ -->
<div class="rs-section rs-flip fade">
  <div class="rs-visual vis-genomics">
    <div class="rs-watermark">02</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">Genomics</span>
        <span class="rs-tag">Generative Models</span>
        <span class="rs-tag">Epigenetics</span>
      </div>
      <div class="rs-vis-stats">
        <div>
          <span class="rs-vis-stat-n">40+</span>
          <span class="rs-vis-stat-l">tissue types</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">VAE</span>
          <span class="rs-vis-stat-l">framework</span>
        </div>
      </div>
    </div>
  </div>

  <div class="rs-text">
    <div class="rs-area">Computational Genomics</div>
    <div class="rs-title">Generative Modeling of Epigenetic Landscapes</div>
    <div class="rs-body">
      Our deep generative models learn the regulatory grammar of chromatin accessibility,
      enabling <em>in silico</em> perturbation experiments across cell types and disease
      states. We disentangle epigenetic programs to discover cell-type-specific regulatory
      elements across 40 tissue types.
    </div>
    <div class="rs-topics">
      <span class="rs-topic">Variational autoencoders</span>
      <span class="rs-topic">Chromatin accessibility</span>
      <span class="rs-topic">Causal disentanglement</span>
      <span class="rs-topic">Single-cell ATAC-seq</span>
      <span class="rs-topic">NSF CAREER · 2023–2028</span>
    </div>
    <a href="{{ '/projects/' | relative_url }}" class="rs-link">Explore this project →</a>
  </div>
</div>


<!-- ══════════════════════════════════════════════════════════════
     RESEARCH SECTION 3 — Structural Biology / Drug Discovery
     Image LEFT · Text RIGHT
     ══════════════════════════════════════════════════════════════ -->
<div class="rs-section fade">
  <div class="rs-visual vis-molecular">
    <div class="rs-watermark">03</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">Structural Biology</span>
        <span class="rs-tag">Graph Learning</span>
        <span class="rs-tag">Drug Discovery</span>
      </div>
      <div class="rs-vis-stats">
        <div>
          <span class="rs-vis-stat-n">SE(3)</span>
          <span class="rs-vis-stat-l">equivariant</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">GNN</span>
          <span class="rs-vis-stat-l">architecture</span>
        </div>
      </div>
    </div>
  </div>

  <div class="rs-text">
    <div class="rs-area">Structural Biology</div>
    <div class="rs-title">Molecular Interaction Network Learning</div>
    <div class="rs-body">
      We develop geometric deep learning models on protein interaction networks to predict
      drug targets, off-target effects, and mechanisms of resistance. Our SE(3)-equivariant
      message-passing architecture leverages 3D molecular geometry for improved
      generalisation on out-of-distribution compound series.
    </div>
    <div class="rs-topics">
      <span class="rs-topic">Equivariant networks</span>
      <span class="rs-topic">Protein–ligand binding</span>
      <span class="rs-topic">3D molecular geometry</span>
      <span class="rs-topic">NeurIPS Spotlight 2024</span>
    </div>
    <a href="{{ '/publications/' | relative_url }}" class="rs-link">Read the paper →</a>
  </div>
</div>


<!-- ══════════════════════════════════════════════════════════════
     RESEARCH SECTION 4 — Clinical AI
     Text LEFT · Image RIGHT  (flipped)
     ══════════════════════════════════════════════════════════════ -->
<div class="rs-section rs-flip fade">
  <div class="rs-visual vis-clinical">
    <div class="rs-watermark">04</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">Clinical AI</span>
        <span class="rs-tag">Multimodal</span>
        <span class="rs-tag">Uncertainty</span>
      </div>
      <div class="rs-vis-stats">
        <div>
          <span class="rs-vis-stat-n">3×</span>
          <span class="rs-vis-stat-l">data modalities</span>
        </div>
        <div>
          <span class="rs-vis-stat-n">UQ</span>
          <span class="rs-vis-stat-l">coverage guarantees</span>
        </div>
      </div>
    </div>
  </div>

  <div class="rs-text">
    <div class="rs-area">Clinical AI</div>
    <div class="rs-title">Multimodal Diagnostic Decision Support</div>
    <div class="rs-body">
      We fuse imaging, electronic health records, and genomic data to build
      uncertainty-aware diagnostic systems. Statistically valid conformal coverage
      guarantees make these systems clinically deployable — not just accurate,
      but provably reliable.
    </div>
    <div class="rs-topics">
      <span class="rs-topic">Conformal prediction</span>
      <span class="rs-topic">EHR + imaging fusion</span>
      <span class="rs-topic">Uncertainty quantification</span>
      <span class="rs-topic">Clinical deployment</span>
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
