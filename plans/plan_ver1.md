# Research Group Website — Refined Deployment Package
## Stack: Jekyll 4 · GitHub Pages · No custom plugins

---

## Architecture Decisions (Summary)

| Decision | Choice | Reason |
|---|---|---|
| Publication data | `_data/publications.yml` | No plugin needed; editable via GitHub web UI |
| BibTeX | Stored as a raw string field in YAML | Copy button still works; no parser required |
| Build pipeline | Standard GitHub Pages (auto-build on push) | Zero maintenance; no Actions required |
| Multilingual | `_data/strings.yml` + optional language pages | Works on standard GH Pages; no polyglot plugin |
| Styling | SCSS via Jekyll's built-in Sass | Supported natively; no Node/npm |
| Forms | Formspree (free tier) | No server needed; just an `action=` attribute |

---

## Directory Structure

```
research-group/
├── _config.yml                   ← lab identity, site settings
├── Gemfile                       ← gem dependencies
├── CNAME                         ← optional: custom domain
├── .github/
│   └── workflows/
│       └── deploy.yml            ← optional but recommended: GH Actions build
├── _layouts/
│   ├── default.html              ← wraps all pages (nav + footer)
│   └── page.html                 ← thin wrapper used by all section pages
├── _includes/
│   ├── nav.html                  ← top navigation bar
│   ├── footer.html               ← site footer
│   └── pub_card.html             ← reusable publication card component
├── _sass/
│   ├── _variables.scss           ← design tokens (colours, fonts, spacing)
│   ├── _base.scss                ← reset, typography, nav, footer, modal
│   └── _components.scss          ← hero, team, publications, projects, news, contact
├── assets/
│   ├── css/
│   │   └── main.scss             ← entry point (imports all partials)
│   ├── js/
│   │   └── main.js               ← filter, BibTeX modal, scroll animations
│   └── images/
│       ├── team/                 ← member photos (square JPG/PNG, min 400×400px)
│       └── teasers/              ← paper overview figures (PNG, 800×400px)
├── _data/
│   ├── publications.yml          ← ★ ALL papers live here
│   ├── team.yml                  ← ★ ALL members live here
│   ├── projects.yml              ← active research projects
│   ├── news.yml                  ← news and announcements
│   └── strings.yml               ← UI text (supports multiple languages)
├── index.md                      ← home / hero page
└── pages/
    ├── team.md
    ├── publications.md
    ├── projects.md
    ├── news.md
    └── contact.md
```

---

## File: `_config.yml`

```yaml
# ── Site identity ─────────────────────────────────────────────────
title:       "Computational Research Group"
tagline:     "Advancing rigorous science at the frontier of computation"
description: "We develop principled computational methods at the intersection
              of machine learning and computational biology."
url:         "https://yourusername.github.io"
baseurl:     "/your-repo-name"   # ← set to "" if repo is username.github.io

# ── Build ─────────────────────────────────────────────────────────
markdown:    kramdown
highlighter: rouge
permalink:   pretty

# ── Plugins (all supported natively by GitHub Pages) ──────────────
plugins:
  - jekyll-seo-tag
  - jekyll-sitemap
  - jekyll-feed

# ── Lab metadata (used throughout layouts — edit here only) ───────
lab:
  name:        "Computational Research Group"
  shortname:   "CRG"
  pi:          "Prof. Jane Smith"
  pi_last:     "Smith"             # used to bold PI name in author lists
  institution: "University of Science"
  department:  "Department of Computer Science"
  address:     "Building A, Room 302, City 10001"
  email:       "lab@university.edu"
  github:      "https://github.com/labname"
  scholar:     "https://scholar.google.com/citations?user=XXXXX"
  twitter:     "https://twitter.com/labname"
  founded:     2016

# ── Hero stats (update when milestones change) ────────────────────
stats:
  publications: 48
  members:      12
  grants:       6
  citations:    "1,200+"

# ── Sass ──────────────────────────────────────────────────────────
sass:
  sass_dir: _sass
  style:    compressed

# ── Exclude from build output ─────────────────────────────────────
exclude:
  - Gemfile
  - Gemfile.lock
  - README.md
  - vendor
  - .github
```

---

## File: `Gemfile`

```ruby
source "https://rubygems.org"

# Use the github-pages gem to match exactly what GitHub Pages builds with.
# This means no GitHub Actions workflow is required.
gem "github-pages", group: :jekyll_plugins

# Needed for Ruby 3+ local preview
gem "webrick", "~> 1.8"
```

> **Local preview:** Run `bundle install` once, then `bundle exec jekyll serve`.
> **Deploying:** Push to `main`. GitHub auto-builds. No workflow file needed.
> **Optional:** If you want to use a newer Jekyll version than `github-pages` pins,
> use the Actions workflow below and switch to `gem "jekyll", "~> 4.3"` instead.

---

## File: `.github/workflows/deploy.yml` *(optional — only needed if you drop `github-pages` gem)*

```yaml
name: Build and Deploy

on:
  push:
    branches: ["main"]
  workflow_dispatch:

permissions:
  contents: read
  pages:    write
  id-token: write

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: ruby/setup-ruby@v1
        with:
          ruby-version: "3.2"
          bundler-cache: true
      - uses: actions/configure-pages@v4
        id: pages
      - run: bundle exec jekyll build --baseurl "${{ steps.pages.outputs.base_path }}"
        env:
          JEKYLL_ENV: production
      - uses: actions/upload-pages-artifact@v3

  deploy:
    needs: build
    runs-on: ubuntu-latest
    environment:
      name: github-pages
      url:  ${{ steps.deployment.outputs.page_url }}
    steps:
      - uses: actions/deploy-pages@v4
```

---

## File: `_data/strings.yml`

All visible UI text lives here. To add a language, duplicate the `en:` block under a new key (e.g. `zh:`) and translate. Templates reference `site.data.strings.en.nav.team` etc.

```yaml
en:
  nav:
    team:         "Team"
    publications: "Publications"
    projects:     "Projects"
    news:         "News"
    contact:      "Contact"
  sections:
    team:         "Our Team"
    team_label:   "Group Members"
    pubs:         "Publications"
    pubs_label:   "Scholarly Output"
    projects:     "Active Projects"
    projects_label: "Research"
    news:         "News"
    news_label:   "Updates"
    contact:      "Get in Touch"
    contact_label: "Contact"
  pubs:
    filter_all:   "All"
    scholar_link: "Google Scholar →"
  team:
    pi_badge:     "Principal Investigator"
    alumni_link:  "View alumni →"
  contact:
    location:     "Location"
    email:        "Email"
    online:       "Online"
    prospective:  "Prospective Students & Postdocs"
    send:         "Send Message →"
  footer:
    updated:      "Last updated"

zh:
  nav:
    team:         "团队"
    publications: "论文"
    projects:     "项目"
    news:         "动态"
    contact:      "联系"
  sections:
    team:         "我们的团队"
    team_label:   "成员"
    pubs:         "论文成果"
    pubs_label:   "学术产出"
    projects:     "在研项目"
    projects_label: "研究方向"
    news:         "最新动态"
    news_label:   "动态"
    contact:      "联系我们"
    contact_label: "联系方式"
  pubs:
    filter_all:   "全部"
    scholar_link: "Google Scholar →"
  team:
    pi_badge:     "负责人（PI）"
    alumni_link:  "查看往届成员 →"
  contact:
    location:     "地址"
    email:        "邮件"
    online:       "主页"
    prospective:  "申请读博 / 博士后"
    send:         "发送消息 →"
  footer:
    updated:      "最后更新于"
```

---

## File: `_data/publications.yml`

★ **This is the only file you edit to manage publications.**

**To add a paper:** append a new block (copy any existing entry as a template).
**To update a paper:** find it by title or year, edit the relevant field.
**All `links:` sub-fields are optional** — omit any that do not apply and no button will appear.

```yaml
# ── How to add a new publication ──────────────────────────────────
# 1. Copy an existing entry block
# 2. Fill in title, authors, venue, year
# 3. Add optional links (omit lines that don't apply — no empty buttons appear)
# 4. Paste BibTeX from Google Scholar into the bibtex: | field
# 5. Add teaser image to assets/images/teasers/ and reference it here
# ──────────────────────────────────────────────────────────────────

- title:    "Scalable Transformer Models for Real-Time Neural Decoding in Non-Human Primates"
  authors:  "Smith J., Kim A., Lopez M., Chen R., Wang T."
  venue:    "Nature Neuroscience"
  year:     2025
  note:     ""                          # e.g. "Oral", "Spotlight", "Best Paper" — leave blank if none
  abstract: >
    We present a scalable transformer architecture that decodes motor intent
    from high-density neural recordings with sub-20ms latency, achieving
    state-of-the-art accuracy across five non-human primate subjects.
  teaser:   "assets/images/teasers/smith2025.png"    # omit line if no image
  keywords: "neural decoding, transformer, BCI"      # used by the filter buttons
  links:
    paper:       "https://doi.org/10.xxxx/xxxx"
    code:        "https://github.com/labname/neural-decoder"
    project:     "https://labname.github.io/neural-decoder"
    demo:        "https://huggingface.co/spaces/labname/demo"
    # dataset:   ""      ← omit or comment out lines that don't apply
    # huggingface: ""
  bibtex: |
    @article{smith2025neural,
      title   = {Scalable Transformer Models for Real-Time Neural Decoding in Non-Human Primates},
      author  = {Smith, Jane and Kim, Alex and Lopez, Maria and Chen, Ryan and Wang, Tom},
      journal = {Nature Neuroscience},
      year    = {2025},
      doi     = {10.xxxx/xxxx},
      url     = {https://doi.org/10.xxxx/xxxx}
    }

- title:    "Causal Disentanglement of Epigenetic Programs via Variational Autoencoders"
  authors:  "Lopez M., Smith J., Chen R."
  venue:    "Cell Systems"
  year:     2024
  note:     ""
  abstract: >
    A variational framework that learns disentangled representations of chromatin
    accessibility programs, enabling discovery of cell-type-specific regulatory
    elements across 40 tissue types.
  teaser:   "assets/images/teasers/lopez2024.png"
  keywords: "genomics, VAE, epigenetics"
  links:
    paper:   "https://doi.org/10.xxxx/xxxx"
    code:    "https://github.com/labname/epi-vae"
    dataset: "https://zenodo.org/record/xxxxxx"
  bibtex: |
    @article{lopez2024causal,
      title   = {Causal Disentanglement of Epigenetic Programs via Variational Autoencoders},
      author  = {Lopez, Maria and Smith, Jane and Chen, Ryan},
      journal = {Cell Systems},
      year    = {2024},
      doi     = {10.xxxx/xxxx}
    }

- title:    "Equivariant Graph Networks for Protein–Ligand Binding Affinity Prediction"
  authors:  "Chen R., Patel S., Kim A., Smith J."
  venue:    "NeurIPS"
  year:     2024
  note:     "Spotlight"
  abstract: >
    An SE(3)-equivariant message-passing architecture that leverages 3D molecular
    geometry to predict binding affinities with improved generalisation on
    out-of-distribution compound series.
  teaser:   ""                          # leave blank (or omit) if no teaser image yet
  keywords: "graph learning, proteins, drug discovery"
  links:
    paper:       "https://doi.org/10.xxxx/xxxx"
    code:        "https://github.com/labname/equivnet"
    huggingface: "https://huggingface.co/labname/equivnet"
  bibtex: |
    @inproceedings{chen2024equivariant,
      title     = {Equivariant Graph Networks for Protein--Ligand Binding Affinity Prediction},
      author    = {Chen, Ryan and Patel, Sara and Kim, Alex and Smith, Jane},
      booktitle = {Advances in Neural Information Processing Systems},
      year      = {2024},
      note      = {Spotlight}
    }
```

---

## File: `_data/team.yml`

```yaml
pi:
  name:     "Prof. Jane Smith"
  role:     "Principal Investigator"
  title:    "Associate Professor, Department of Computer Science"
  bio:      >
    Jane leads the group's research in computational neuroscience and machine
    learning. Her work focuses on developing principled statistical models for
    large-scale neural data and brain–machine interfaces. She received her PhD
    from MIT and was a postdoctoral fellow at Stanford.
  photo:    "assets/images/team/jane_smith.jpg"   # leave blank ("") if no photo
  initials: "JS"                                  # shown as fallback if no photo
  links:
    website: "https://janesmith.university.edu"
    scholar: "https://scholar.google.com/citations?user=XXX"
    cv:      "assets/cv/smith_cv.pdf"
    github:  "https://github.com/jsmith"
    twitter: ""                                   # leave blank to hide

members:
  - name:     "Alex Kim"
    role:     "Postdoctoral Fellow"
    focus:    "Deep learning for genomics, single-cell RNA-seq analysis, epigenetics"
    photo:    "assets/images/team/alex_kim.jpg"
    initials: "AK"
    links:
      scholar: "https://scholar.google.com/citations?user=XXX"
      github:  "https://github.com/akim"
      website: ""

  - name:     "Maria Lopez"
    role:     "PhD Candidate"
    focus:    "Probabilistic graphical models, Bayesian inference, causal discovery"
    photo:    ""
    initials: "ML"
    links:
      scholar:  "https://scholar.google.com/citations?user=XXX"
      website:  "https://marialopez.io"
      github:   ""

  - name:     "Ryan Chen"
    role:     "PhD Student"
    focus:    "Graph neural networks, molecular property prediction"
    photo:    ""
    initials: "RC"
    links:
      scholar: "https://scholar.google.com/citations?user=XXX"
      github:  "https://github.com/rchen"
      website: ""

  - name:     "Sara Patel"
    role:     "PhD Student"
    focus:    "Multimodal learning, uncertainty quantification, clinical AI"
    photo:    ""
    initials: "SP"
    links:
      scholar: "https://scholar.google.com/citations?user=XXX"
      github:  ""
      website: ""

  - name:     "Tom Wang"
    role:     "Research Engineer"
    focus:    "HPC infrastructure, MLOps, research software engineering"
    photo:    ""
    initials: "TW"
    links:
      scholar: ""
      github:  "https://github.com/twang"
      website: ""

alumni:
  - name:   "Dr. Lisa Park"
    period: "2019–2023"
    now:    "Assistant Professor, University of Toronto"

  - name:   "Dr. James Wu"
    period: "2018–2022"
    now:    "Research Scientist, Google DeepMind"
```

---

## File: `_data/projects.yml`

```yaml
- title:   "Neural Decoding with Transformer Architectures"
  area:    "Neuroscience × Machine Learning"
  status:  "active"          # active | ongoing | new | completed
  funding: "NIH R01 · 2022–2027"
  desc:    >
    Applying attention-based architectures to decode motor intent from
    high-density neural recordings in real time, establishing principled
    approaches under stringent latency constraints.

- title:   "Generative Modeling of Epigenetic Landscapes"
  area:    "Computational Genomics"
  status:  "active"
  funding: "NSF CAREER · 2023–2028"
  desc:    >
    Deep generative models that learn the regulatory grammar of chromatin
    accessibility, enabling in silico perturbation experiments across cell
    types and disease states.

- title:   "Molecular Interaction Network Learning"
  area:    "Structural Biology"
  status:  "ongoing"
  funding: "Industry partnership"
  desc:    >
    Geometric deep learning on protein interaction networks to predict drug
    targets, off-target effects, and mechanisms of resistance.

- title:   "Multimodal Diagnostic Decision Support"
  area:    "Clinical AI"
  status:  "new"
  funding: "Proposal submitted · 2025"
  desc:    >
    Fusing imaging, electronic health records, and genomic data to build
    uncertainty-aware diagnostic systems with statistically valid coverage
    guarantees for clinical deployment.
```

---

## File: `_data/news.yml`

```yaml
# category values: award | paper | grant | join | event
- date:     "March 2025"
  category: "award"
  label:    "Award"
  headline: "Prof. Smith receives the Young Investigator Award, Society for Neuroscience"
  body:     "Recognising outstanding contributions to computational methods in neural circuit analysis."

- date:     "February 2025"
  category: "paper"
  label:    "Paper"
  headline: "New paper accepted at Nature Neuroscience on real-time neural decoding"
  body:     "Our transformer-based decoder achieves state-of-the-art accuracy in closed-loop BCI systems."

- date:     "January 2025"
  category: "grant"
  label:    "Grant"
  headline: "NIH supplement awarded for clinical AI multimodal project"
  body:     "Funding supports two additional years of research in uncertainty quantification."

- date:     "January 2025"
  category: "join"
  label:    "Join"
  headline: "Welcoming two new PhD students to the group"
  body:     "Sara Patel and Tom Wang join, bringing expertise in medical imaging and systems engineering."

- date:     "December 2024"
  category: "event"
  label:    "Event"
  headline: "Group presents three papers at NeurIPS 2024, Vancouver"
  body:     "Ryan Chen's protein binding paper received a spotlight presentation."
```

---

## File: `_layouts/default.html`

```html
<!DOCTYPE html>
<html lang="{{ page.lang | default: 'en' }}">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>{% if page.title %}{{ page.title }} — {{ site.lab.name }}{% else %}{{ site.lab.name }}{% endif %}</title>
  <meta name="description" content="{{ page.description | default: site.description }}" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:ital,wght@0,300;0,400;0,500;0,600;1,400&family=IBM+Plex+Serif:ital,wght@0,300;0,400;1,300;1,400&family=IBM+Plex+Mono:wght@400&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="{{ '/assets/css/main.css' | relative_url }}" />
  {% seo %}
</head>
<body>
  {% assign lang = page.lang | default: 'en' %}
  {% assign t = site.data.strings[lang] %}

  {% include nav.html t=t lang=lang %}

  <main id="main-content">{{ content }}</main>

  {% include footer.html t=t %}

  <!-- BibTeX modal — shared across all pages -->
  <div class="modal-overlay" id="bibModal" role="dialog" aria-modal="true">
    <div class="modal">
      <button class="modal-close" onclick="closeBib()" aria-label="Close">✕</button>
      <h3>BibTeX Citation</h3>
      <pre id="bibContent"></pre>
      <div class="modal-actions">
        <button class="pub-btn" id="copyBtn" onclick="copyBib()">Copy to clipboard</button>
        <button class="pub-btn" onclick="closeBib()">Close</button>
      </div>
    </div>
  </div>

  <script src="{{ '/assets/js/main.js' | relative_url }}"></script>
</body>
</html>
```

---

## File: `_layouts/page.html`

```html
---
layout: default
---
{{ content }}
```

---

## File: `_includes/nav.html`

```html
{% assign t    = include.t %}
{% assign lang = include.lang | default: 'en' %}
<nav role="navigation">
  <div class="nav-inner">
    <a class="logo" href="{{ '/' | relative_url }}">
      <span class="logo-main">{{ site.lab.shortname }}</span>
      <span class="logo-sub">{{ site.lab.institution }}</span>
    </a>
    <div class="nav-right">
      <ul class="nav-links">
        <li><a href="{{ '/team/'         | relative_url }}" {% if page.url contains 'team'         %}class="active"{% endif %}>{{ t.nav.team }}</a></li>
        <li><a href="{{ '/publications/' | relative_url }}" {% if page.url contains 'publications' %}class="active"{% endif %}>{{ t.nav.publications }}</a></li>
        <li><a href="{{ '/projects/'     | relative_url }}" {% if page.url contains 'projects'     %}class="active"{% endif %}>{{ t.nav.projects }}</a></li>
        <li><a href="{{ '/news/'         | relative_url }}" {% if page.url contains 'news'         %}class="active"{% endif %}>{{ t.nav.news }}</a></li>
        <li><a href="{{ '/contact/'      | relative_url }}" {% if page.url contains 'contact'      %}class="active"{% endif %}>{{ t.nav.contact }}</a></li>
      </ul>
      <!-- Language switcher: add zh/team.md etc. to enable other languages -->
      <div class="lang-switcher">
        <a href="{{ page.url | relative_url }}"     class="lang-btn {% if lang == 'en' %}active{% endif %}">EN</a>
        <a href="{{ '/zh' | append: page.url }}"    class="lang-btn {% if lang == 'zh' %}active{% endif %}">中文</a>
      </div>
    </div>
  </div>
</nav>
```

---

## File: `_includes/footer.html`

```html
{% assign t = include.t %}
<footer>
  <div class="footer-inner">
    <div class="footer-brand">
      <div class="footer-name">{{ site.lab.name }}</div>
      <div class="footer-inst">{{ site.lab.department }} &middot; {{ site.lab.institution }}</div>
    </div>
    <div class="footer-links">
      <a href="{{ '/team/'         | relative_url }}">{{ t.nav.team }}</a>
      <a href="{{ '/publications/' | relative_url }}">{{ t.nav.publications }}</a>
      <a href="{{ '/projects/'     | relative_url }}">{{ t.nav.projects }}</a>
      <a href="{{ '/news/'         | relative_url }}">{{ t.nav.news }}</a>
      <a href="{{ '/contact/'      | relative_url }}">{{ t.nav.contact }}</a>
    </div>
    <div class="footer-links">
      {% if site.lab.github  %}<a href="{{ site.lab.github  }}" target="_blank" rel="noopener">GitHub</a>{% endif %}
      {% if site.lab.scholar %}<a href="{{ site.lab.scholar }}" target="_blank" rel="noopener">Google Scholar</a>{% endif %}
      {% if site.lab.twitter %}<a href="{{ site.lab.twitter }}" target="_blank" rel="noopener">Twitter</a>{% endif %}
    </div>
  </div>
  <div class="footer-bottom">
    <span>&copy; {{ 'now' | date: '%Y' }} {{ site.lab.name }}. Built with Jekyll &amp; GitHub Pages.</span>
    <span>{{ t.footer.updated }} {{ 'now' | date: '%B %Y' }}</span>
  </div>
</footer>
```

---

## File: `_includes/pub_card.html`

Usage: `{% include pub_card.html pub=entry %}`

```html
{% assign pub = include.pub %}
<div class="pub-entry"
     data-year="{{ pub.year }}"
     data-keywords="{{ pub.keywords | downcase | default: '' }}">

  {% if pub.teaser and pub.teaser != "" %}
  <div class="pub-visual">
    <img class="pub-teaser"
         src="{{ pub.teaser | relative_url }}"
         alt="{{ pub.title }} — overview figure"
         loading="lazy" />
  </div>
  {% else %}
  <div class="pub-visual pub-no-teaser"></div>
  {% endif %}

  <div class="pub-body">
    <div class="pub-venue">
      {{ pub.venue }}{% if pub.year %} &middot; {{ pub.year }}{% endif %}
      {% if pub.note and pub.note != "" %}&nbsp;&middot;&nbsp;<strong>{{ pub.note }}</strong>{% endif %}
    </div>

    <div class="pub-title">{{ pub.title }}</div>

    <div class="pub-authors">
      {% assign parts = pub.authors | split: ", " %}
      {% for part in parts %}
        {% if part contains site.lab.pi_last %}<strong>{{ part }}</strong>{% else %}{{ part }}{% endif %}{% unless forloop.last %}, {% endunless %}
      {% endfor %}
    </div>

    {% if pub.abstract and pub.abstract != "" %}
    <div class="pub-abstract">{{ pub.abstract }}</div>
    {% endif %}

    <div class="pub-links">
      {% if pub.links.paper       %}<a class="pub-btn" href="{{ pub.links.paper       }}" target="_blank" rel="noopener">Paper</a>{% endif %}
      {% if pub.links.code        %}<a class="pub-btn" href="{{ pub.links.code        }}" target="_blank" rel="noopener">Code</a>{% endif %}
      {% if pub.links.project     %}<a class="pub-btn" href="{{ pub.links.project     }}" target="_blank" rel="noopener">Project</a>{% endif %}
      {% if pub.links.demo        %}<a class="pub-btn" href="{{ pub.links.demo        }}" target="_blank" rel="noopener">Demo</a>{% endif %}
      {% if pub.links.dataset     %}<a class="pub-btn" href="{{ pub.links.dataset     }}" target="_blank" rel="noopener">Dataset</a>{% endif %}
      {% if pub.links.huggingface %}<a class="pub-btn" href="{{ pub.links.huggingface }}" target="_blank" rel="noopener">HuggingFace</a>{% endif %}
      {% if pub.bibtex and pub.bibtex != "" %}
        <button class="pub-btn pub-btn-bib" onclick="openBib({{ pub.bibtex | jsonify }})">BibTeX</button>
      {% endif %}
    </div>
  </div>

</div>
```

---

## File: `_sass/_variables.scss`

```scss
$serif:   'IBM Plex Serif', Georgia, serif;
$sans:    'IBM Plex Sans', system-ui, sans-serif;
$mono:    'IBM Plex Mono', monospace;

$ink:     #0f172a;
$ink2:    #1e293b;
$ink3:    #475569;
$accent:  #1e3a5f;
$accent2: #2d5282;
$bg:      #ffffff;
$bg2:     #f8fafc;
$bg3:     #f1f5f9;
$border:  #e2e8f0;
$border2: #cbd5e1;

$max-w:   1120px;
$nav-h:   60px;
$radius:  2px;
```

---

## File: `_sass/_base.scss`

```scss
@import 'variables';

*, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }
html  { scroll-behavior: smooth; font-size: 16px; }
body  { font-family: $sans; color: $ink2; background: $bg; line-height: 1.6; -webkit-font-smoothing: antialiased; }
img   { max-width: 100%; display: block; }
a     { color: inherit; }

// NAV
nav { position: fixed; top: 0; width: 100%; z-index: 200; background: $bg; border-bottom: 1px solid $border; }
.nav-inner { max-width: $max-w; margin: auto; padding: 0 2rem; display: flex; align-items: center; justify-content: space-between; height: $nav-h; }
.logo { text-decoration: none; display: flex; align-items: baseline; gap: .5rem; }
.logo-main { font-weight: 600; font-size: 1rem; color: $ink; }
.logo-sub  { font-size: .78rem; color: $ink3; }
.nav-right { display: flex; align-items: center; }
.nav-links { display: flex; list-style: none;
  a { display: block; padding: .3rem .9rem; font-size: .82rem; font-weight: 500; color: $ink3;
      text-decoration: none; transition: color .15s;
      &:hover, &.active { color: $accent; } } }
.lang-switcher { display: flex; gap: .25rem; margin-left: 1.5rem; }
.lang-btn { padding: .2rem .55rem; font-size: .72rem; font-weight: 500; border: 1px solid $border2;
  border-radius: $radius; background: none; cursor: pointer; color: $ink3; text-decoration: none;
  transition: all .15s; font-family: $sans;
  &:hover, &.active { background: $accent; color: #fff; border-color: $accent; } }

// FOOTER
footer { background: $ink; color: rgba(255,255,255,.45); padding: 3rem 2rem; }
.footer-inner { max-width: $max-w; margin: auto; display: flex; justify-content: space-between; flex-wrap: wrap; gap: 2rem; }
.footer-name  { font-size: .95rem; font-weight: 600; color: rgba(255,255,255,.85); margin-bottom: .25rem; }
.footer-inst  { font-size: .78rem; }
.footer-links { display: flex; flex-direction: column; gap: .4rem;
  a { font-size: .78rem; color: rgba(255,255,255,.45); text-decoration: none;
      &:hover { color: rgba(255,255,255,.8); } } }
.footer-bottom { max-width: $max-w; margin: 2rem auto 0; padding-top: 1.5rem;
  border-top: 1px solid rgba(255,255,255,.1); font-size: .72rem;
  display: flex; justify-content: space-between; flex-wrap: wrap; gap: .5rem; }

// MODAL
.modal-overlay { display: none; position: fixed; inset: 0; background: rgba(15,23,42,.55);
  z-index: 500; align-items: center; justify-content: center;
  &.open { display: flex; } }
.modal { background: $bg; border: 1px solid $border; padding: 2rem; max-width: 620px; width: 90%; position: relative;
  h3  { font-size: .9rem; font-weight: 600; margin-bottom: 1rem; }
  pre { font-family: $mono; font-size: .75rem; background: $bg2; border: 1px solid $border;
        padding: 1rem; white-space: pre-wrap; max-height: 300px; overflow-y: auto; line-height: 1.6; } }
.modal-close { position: absolute; top: 1rem; right: 1rem; background: none; border: none; font-size: 1.1rem; cursor: pointer; color: $ink3; }
.modal-actions { margin-top: 1rem; display: flex; gap: .5rem; }

// UTILITIES
.fade { opacity: 0; transform: translateY(16px); transition: opacity .5s, transform .5s; &.in { opacity: 1; transform: none; } }
section { padding: 5rem 2rem; &.alt { background: $bg2; } }
.section-inner { max-width: $max-w; margin: auto; }
.section-head { margin-bottom: 2.5rem; padding-bottom: 1.25rem; border-bottom: 1px solid $border;
  display: flex; justify-content: space-between; align-items: flex-end; }
.section-label { font-size: .7rem; font-weight: 600; letter-spacing: .12em; text-transform: uppercase; color: $accent; margin-bottom: .5rem; }
.section-title { font-family: $serif; font-size: 1.85rem; font-weight: 400; color: $ink; }
.section-action { font-size: .82rem; color: $accent; text-decoration: none; font-weight: 500; &:hover { text-decoration: underline; } }

@media (max-width: 820px) {
  .nav-links { display: none; }
  .lang-switcher { margin-left: 0; }
}
```

---

## File: `_sass/_components.scss`

```scss
@import 'variables';

// HERO
.hero { padding: 8rem 2rem 5rem; border-bottom: 1px solid $border; }
.hero-inner { max-width: $max-w; margin: auto; display: grid; grid-template-columns: 1fr 360px; gap: 4rem; align-items: center; }
.hero-eyebrow { font-size: .72rem; font-weight: 600; letter-spacing: .12em; text-transform: uppercase; color: $accent; margin-bottom: 1.25rem; }
.hero h1 { font-family: $serif; font-size: 2.5rem; font-weight: 300; color: $ink; line-height: 1.25; margin-bottom: 1.25rem; strong { font-weight: 600; } }
.hero-desc { font-family: $serif; font-size: 1rem; color: $ink3; line-height: 1.85; margin-bottom: 2rem; font-style: italic; }
.hero-affil { font-size: .82rem; color: $ink3; border-top: 1px solid $border; padding-top: 1.25rem; }
.hero-metrics { background: $bg2; border: 1px solid $border; padding: 1.75rem; }
.metric-row { display: flex; align-items: baseline; gap: .75rem; padding: .55rem 0; border-bottom: 1px solid $border; &:last-child { border-bottom: none; } }
.metric-n { font-size: 1.55rem; font-weight: 600; color: $accent; min-width: 3.5rem; font-variant-numeric: tabular-nums; }
.metric-l { font-size: .82rem; color: $ink3; }

// TEAM
.team-pi { display: grid; grid-template-columns: 180px 1fr; gap: 2.5rem; padding: 2rem; background: $bg2; border: 1px solid $border; margin-bottom: 2.5rem; }
.team-photo, .team-photo-ph { width: 180px; aspect-ratio: 1; border: 1px solid $border; display: block; }
.team-photo { object-fit: cover; }
.team-photo-ph { background: $bg3; display: flex; align-items: center; justify-content: center; font-family: $serif; font-size: 2rem; color: $border2; }
.pi-role  { font-size: .7rem; font-weight: 600; letter-spacing: .1em; text-transform: uppercase; color: $accent; margin-bottom: .4rem; }
.pi-name  { font-family: $serif; font-size: 1.5rem; font-weight: 400; color: $ink; margin-bottom: .25rem; }
.pi-title { font-size: .85rem; color: $ink3; margin-bottom: .75rem; }
.pi-bio   { font-size: .88rem; color: $ink2; line-height: 1.75; font-family: $serif; margin-bottom: 1rem; }
.pi-links { display: flex; gap: .5rem; flex-wrap: wrap;
  a { font-size: .75rem; font-weight: 500; color: $accent; text-decoration: none; border-bottom: 1px solid $border2; &:hover { border-color: $accent; } } }
.team-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(210px, 1fr)); gap: 1px; background: $border; border: 1px solid $border; }
.member-card { background: $bg; padding: 1.5rem; transition: background .15s; &:hover { background: $bg2; } }
.member-photo { width: 64px; height: 64px; border-radius: 50%; object-fit: cover; border: 1px solid $border;
  background: $bg3; margin-bottom: 1rem; display: flex; align-items: center; justify-content: center;
  font-family: $serif; font-size: 1.1rem; color: $ink3; }
.member-name  { font-weight: 600; font-size: .9rem; color: $ink; margin-bottom: .15rem; }
.member-role  { font-size: .73rem; text-transform: uppercase; letter-spacing: .06em; color: $accent; font-weight: 500; margin-bottom: .4rem; }
.member-focus { font-size: .8rem; color: $ink3; line-height: 1.55; }
.member-links { margin-top: .75rem; display: flex; gap: .75rem;
  a { font-size: .75rem; color: $ink3; text-decoration: none; border-bottom: 1px solid $border2;
      &:hover { color: $accent; border-color: $accent; } } }

// PUBLICATIONS
.pub-filters { display: flex; gap: .4rem; margin-bottom: 2rem; flex-wrap: wrap; }
.pf { padding: .3rem .8rem; font-size: .78rem; font-weight: 500; border: 1px solid $border2;
  background: none; cursor: pointer; color: $ink3; font-family: $sans; border-radius: $radius;
  transition: all .15s; &:hover, &.on { background: $accent; color: #fff; border-color: $accent; } }
.pub-list { display: flex; flex-direction: column; }
.pub-entry { border-top: 1px solid $border; padding: 2rem 0; display: grid; grid-template-columns: 200px 1fr; gap: 2rem; align-items: start;
  &:last-child { border-bottom: 1px solid $border; }
  &[hidden] { display: none; } }
.pub-teaser { width: 200px; aspect-ratio: 2/1; object-fit: cover; border: 1px solid $border; }
.pub-no-teaser { width: 200px; aspect-ratio: 2/1; }
.pub-venue  { font-size: .75rem; font-weight: 600; letter-spacing: .06em; text-transform: uppercase; color: $accent; margin-bottom: .4rem; strong { color: #92400e; } }
.pub-title  { font-family: $serif; font-size: 1.05rem; font-weight: 400; color: $ink; line-height: 1.45; margin-bottom: .35rem; }
.pub-authors{ font-size: .82rem; color: $ink3; margin-bottom: .35rem; line-height: 1.5; strong { color: $ink2; } }
.pub-abstract { font-size: .82rem; color: $ink3; line-height: 1.65; margin: .6rem 0; font-family: $serif; font-style: italic; }
.pub-links  { display: flex; gap: .4rem; flex-wrap: wrap; margin-top: .75rem; }
.pub-btn { display: inline-flex; align-items: center; gap: .3rem; padding: .22rem .65rem; font-size: .72rem; font-weight: 500;
  border: 1px solid $border2; color: $ink2; text-decoration: none; font-family: $sans; border-radius: $radius;
  cursor: pointer; background: none; transition: all .15s; &:hover { background: $accent; color: #fff; border-color: $accent; } }
.pub-btn-bib { background: $bg3; }

// PROJECTS
.proj-entry { border-top: 1px solid $border; padding: 1.75rem 0; display: grid; grid-template-columns: 3fr 1fr; gap: 3rem;
  &:last-child { border-bottom: 1px solid $border; } }
.proj-label { font-size: .7rem; font-weight: 600; letter-spacing: .1em; text-transform: uppercase; color: $accent; margin-bottom: .4rem; }
.proj-title { font-family: $serif; font-size: 1.1rem; font-weight: 400; color: $ink; margin-bottom: .4rem; }
.proj-desc  { font-size: .85rem; color: $ink3; line-height: 1.65; }
.proj-meta  { text-align: right; }
.proj-status { display: inline-block; font-size: .72rem; font-weight: 600; text-transform: uppercase; letter-spacing: .05em; padding: .2rem .6rem; border-radius: $radius;
  &.active    { background: #dcfce7; color: #166534; }
  &.ongoing   { background: #fef9c3; color: #854d0e; }
  &.new       { background: #dbeafe; color: #1e40af; }
  &.completed { background: $bg3;    color: $ink3;   } }
.proj-fund { font-size: .75rem; color: $ink3; margin-top: .5rem; }

// NEWS
.news-table { width: 100%; border-collapse: collapse; }
.news-table tr { border-top: 1px solid $border; &:last-child { border-bottom: 1px solid $border; } }
.news-table td { padding: .9rem .5rem; vertical-align: top; }
.news-date-col { width: 110px; font-size: .78rem; color: $ink3; padding-top: 1rem; white-space: nowrap; }
.news-cat { width: 90px;
  span { font-size: .68rem; font-weight: 600; text-transform: uppercase; letter-spacing: .05em; padding: .15rem .45rem; border-radius: $radius; }
  .nc-award { background: #fef3c7; color: #92400e; }
  .nc-paper { background: #dbeafe; color: #1e40af; }
  .nc-event { background: #d1fae5; color: #065f46; }
  .nc-join  { background: #ede9fe; color: #5b21b6; }
  .nc-grant { background: #fce7f3; color: #9d174d; } }
.news-hed  { font-weight: 600; font-size: .9rem; color: $ink; margin-bottom: .2rem; }
.news-body { font-size: .82rem; color: $ink3; line-height: 1.55; }

// CONTACT
.contact-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 4rem; }
.contact-block { margin-bottom: 1.75rem; }
.contact-block-label { font-size: .7rem; font-weight: 600; letter-spacing: .1em; text-transform: uppercase; color: $accent; margin-bottom: .5rem; }
.contact-block-val { font-size: .88rem; color: $ink2; line-height: 1.65; a { color: $accent; text-decoration: none; border-bottom: 1px solid $border2; &:hover { border-color: $accent; } } }
.form-field { margin-bottom: 1.1rem;
  label { display: block; font-size: .78rem; font-weight: 500; color: $ink; margin-bottom: .35rem; }
  input, textarea, select { width: 100%; padding: .55rem .8rem; border: 1px solid $border2;
    font-family: $sans; font-size: .88rem; color: $ink2; outline: none; background: $bg;
    border-radius: $radius; -webkit-appearance: none; transition: border .15s;
    &:focus { border-color: $accent; } }
  textarea { resize: vertical; min-height: 100px; line-height: 1.6; } }
.submit-btn { display: inline-flex; align-items: center; gap: .5rem; padding: .55rem 1.5rem;
  background: $accent; color: #fff; border: none; font-family: $sans; font-size: .85rem;
  font-weight: 500; cursor: pointer; border-radius: $radius; transition: background .15s;
  &:hover { background: $accent2; } }

@media (max-width: 820px) {
  .hero-inner, .contact-grid { grid-template-columns: 1fr; }
  .pub-entry { grid-template-columns: 1fr; }
  .pub-teaser, .pub-no-teaser { width: 100%; max-width: 320px; }
  .proj-entry { grid-template-columns: 1fr; }
  .proj-meta  { text-align: left; }
  .team-pi    { grid-template-columns: 1fr; }
}
```

---

## File: `assets/css/main.scss`

```scss
---
---
@import 'variables';
@import 'base';
@import 'components';
```

---

## File: `assets/js/main.js`

```javascript
// Scroll fade-in
const obs = new IntersectionObserver(
  es => es.forEach(e => { if (e.isIntersecting) e.target.classList.add('in'); }),
  { threshold: 0.08 }
);
document.querySelectorAll('.fade').forEach(el => obs.observe(el));

// Smooth scroll
document.querySelectorAll('a[href^="#"]').forEach(a => {
  a.addEventListener('click', e => {
    const t = document.querySelector(a.getAttribute('href'));
    if (t) { e.preventDefault(); t.scrollIntoView({ behavior: 'smooth' }); }
  });
});

// Publication year/keyword filter
document.querySelectorAll('.pf').forEach(btn => {
  btn.addEventListener('click', () => {
    document.querySelectorAll('.pf').forEach(b => b.classList.remove('on'));
    btn.classList.add('on');
    const val = (btn.dataset.filter || '').toLowerCase();
    document.querySelectorAll('.pub-entry').forEach(entry => {
      if (!val || val === 'all') {
        entry.removeAttribute('hidden');
      } else {
        const yr  = (entry.dataset.year     || '');
        const kws = (entry.dataset.keywords || '').toLowerCase();
        entry.toggleAttribute('hidden', yr !== val && !kws.includes(val));
      }
    });
  });
});

// BibTeX modal
function openBib(raw) {
  document.getElementById('bibContent').textContent = raw;
  document.getElementById('bibModal').classList.add('open');
  document.getElementById('copyBtn').textContent = 'Copy to clipboard';
}
function closeBib() {
  document.getElementById('bibModal').classList.remove('open');
}
function copyBib() {
  navigator.clipboard.writeText(document.getElementById('bibContent').textContent)
    .then(() => {
      const btn = document.getElementById('copyBtn');
      btn.textContent = 'Copied!';
      setTimeout(() => { btn.textContent = 'Copy to clipboard'; }, 2000);
    });
}
document.getElementById('bibModal')?.addEventListener('click', e => {
  if (e.target === e.currentTarget) closeBib();
});
document.addEventListener('keydown', e => { if (e.key === 'Escape') closeBib(); });
```

---

## File: `index.md`

```markdown
---
layout: default
title:  "Home"
lang:   "en"
---

<div class="hero">
  <div class="hero-inner">
    <div>
      <div class="hero-eyebrow">{{ site.data.strings.en.nav.team | replace: "Team", site.lab.name }}</div>
      <h1>Advancing <strong>Rigorous Science</strong><br>at the Frontier of Computation</h1>
      <p class="hero-desc">{{ site.description }}</p>
      <div class="hero-affil">
        {{ site.lab.department }} &middot; {{ site.lab.institution }} &middot; {{ site.lab.address }}
      </div>
    </div>
    <div class="hero-metrics">
      <div class="metric-row"><span class="metric-n">{{ site.stats.publications }}</span><span class="metric-l">Peer-reviewed publications</span></div>
      <div class="metric-row"><span class="metric-n">{{ site.stats.members }}</span><span class="metric-l">Active group members</span></div>
      <div class="metric-row"><span class="metric-n">{{ site.stats.grants }}</span><span class="metric-l">Current funded projects</span></div>
      <div class="metric-row"><span class="metric-n">{{ site.stats.citations }}</span><span class="metric-l">Citations (Google Scholar)</span></div>
    </div>
  </div>
</div>
```

---

## File: `pages/team.md`

```markdown
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

  <div class="team-pi">
    {% if site.data.team.pi.photo != "" %}
      <img class="team-photo" src="{{ site.data.team.pi.photo | relative_url }}" alt="{{ site.data.team.pi.name }}" />
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
        {% if site.data.team.pi.links.cv != ""       %}<a href="{{ site.data.team.pi.links.cv | relative_url }}">CV</a>{% endif %}
        {% if site.data.team.pi.links.github != ""   %}<a href="{{ site.data.team.pi.links.github }}" target="_blank">GitHub</a>{% endif %}
        {% if site.data.team.pi.links.twitter != ""  %}<a href="{{ site.data.team.pi.links.twitter }}" target="_blank">Twitter</a>{% endif %}
      </div>
    </div>
  </div>

  <div class="team-grid">
    {% for m in site.data.team.members %}
    <div class="member-card">
      {% if m.photo != "" %}
        <img class="member-photo" src="{{ m.photo | relative_url }}" alt="{{ m.name }}" />
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
      </div>
    </div>
    {% endfor %}
  </div>

  {% if site.data.team.alumni %}
  <h3 id="alumni" style="font-family:'IBM Plex Serif',serif;font-weight:400;margin:3rem 0 1rem;font-size:1.3rem;color:#0f172a;">Alumni</h3>
  <table style="width:100%;border-collapse:collapse;font-size:.85rem;">
    <tr style="border-bottom:1px solid #e2e8f0;">
      <th style="text-align:left;padding:.5rem;font-weight:600;color:#475569;">Name</th>
      <th style="text-align:left;padding:.5rem;font-weight:600;color:#475569;">Period</th>
      <th style="text-align:left;padding:.5rem;font-weight:600;color:#475569;">Current position</th>
    </tr>
    {% for a in site.data.team.alumni %}
    <tr style="border-top:1px solid #e2e8f0;">
      <td style="padding:.6rem .5rem;font-weight:600;color:#1e293b;">{{ a.name }}</td>
      <td style="padding:.6rem .5rem;color:#475569;">{{ a.period }}</td>
      <td style="padding:.6rem .5rem;color:#475569;">{{ a.now }}</td>
    </tr>
    {% endfor %}
  </table>
  {% endif %}
</div>
</section>
```

---

## File: `pages/publications.md`

```markdown
---
layout:    page
title:     "Publications"
permalink: /publications/
lang:      "en"
---
{% assign t = site.data.strings.en %}
<section id="publications">
<div class="section-inner fade">
  <div class="section-head">
    <div><div class="section-label">{{ t.sections.pubs_label }}</div>
         <div class="section-title">{{ t.sections.pubs }}</div></div>
    {% if site.lab.scholar %}
      <a href="{{ site.lab.scholar }}" class="section-action" target="_blank" rel="noopener">
        {{ t.pubs.scholar_link }}
      </a>
    {% endif %}
  </div>

  <div class="pub-filters">
    <button class="pf on" data-filter="all">{{ t.pubs.filter_all }}</button>
    {% assign years = site.data.publications | map: 'year' | uniq | sort | reverse %}
    {% for yr in years %}
      <button class="pf" data-filter="{{ yr }}">{{ yr }}</button>
    {% endfor %}
    <!-- Add keyword filter buttons manually below, matching keywords in publications.yml -->
    <!-- <button class="pf" data-filter="neural decoding">Neural Decoding</button> -->
  </div>

  <div class="pub-list">
    {% for pub in site.data.publications %}
      {% include pub_card.html pub=pub %}
    {% endfor %}
  </div>
</div>
</section>
```

---

## File: `pages/projects.md`

```markdown
---
layout:    page
title:     "Projects"
permalink: /projects/
lang:      "en"
---
{% assign t = site.data.strings.en %}
<section id="projects" class="alt">
<div class="section-inner fade">
  <div class="section-head">
    <div><div class="section-label">{{ t.sections.projects_label }}</div>
         <div class="section-title">{{ t.sections.projects }}</div></div>
  </div>
  <div class="proj-list">
    {% for p in site.data.projects %}
    <div class="proj-entry">
      <div>
        <div class="proj-label">{{ p.area }}</div>
        <div class="proj-title">{{ p.title }}</div>
        <div class="proj-desc">{{ p.desc }}</div>
      </div>
      <div class="proj-meta">
        <span class="proj-status {{ p.status }}">{{ p.status | capitalize }}</span>
        {% if p.funding %}<div class="proj-fund">{{ p.funding }}</div>{% endif %}
      </div>
    </div>
    {% endfor %}
  </div>
</div>
</section>
```

---

## File: `pages/news.md`

```markdown
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
```

---

## File: `pages/contact.md`

```markdown
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
    <!-- Form via Formspree: replace ACTION_URL with your Formspree endpoint -->
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
```

---

## File: `CNAME`

```
yourlab.university.edu
```

Delete this file if not using a custom domain (i.e. using `username.github.io`).

---

## Day-to-Day Maintenance Guide

### Adding a new publication

1. Open `_data/publications.yml` on GitHub (click the file → pencil icon)
2. Copy the first entry block as a template
3. Fill in `title`, `authors`, `venue`, `year`
4. Paste the BibTeX from Google Scholar into the `bibtex: |` field
5. Add any available `links:` sub-fields; delete lines that don't apply
6. Upload the teaser image to `assets/images/teasers/` and reference the path
7. Commit — the site rebuilds in ~60 seconds

### Adding a new member

1. Open `_data/team.yml`
2. Add a block under `members:` (copy an existing one)
3. Upload their photo to `assets/images/team/`
4. Commit

### Posting news

1. Open `_data/news.yml`
2. Prepend a new block at the top (newest first)
3. Set `category` to one of: `award`, `paper`, `grant`, `join`, `event`
4. Commit

### Updating the hero stats

Edit the `stats:` block in `_config.yml`.

### Enabling the contact form

1. Create a free account at [formspree.io](https://formspree.io)
2. Create a new form → copy the endpoint URL
3. Replace `YOUR_FORM_ID` in `pages/contact.md`

### Adding Chinese pages (optional, later)

1. Create `pages/zh/team.md` with `lang: "zh"` in the front matter
2. The template automatically pulls `site.data.strings.zh.*` for all UI text
3. Publication and team data is shared (no duplication needed)

---

## Deployment Checklist

- [ ] Edit `_config.yml` — all `lab:` fields, `url`, `baseurl`
- [ ] Replace all placeholder content in `_data/*.yml`
- [ ] Export BibTeX from Google Scholar → populate `_data/publications.yml`
- [ ] Add team photos to `assets/images/team/`
- [ ] Add paper teasers to `assets/images/teasers/`
- [ ] Push repo to GitHub
- [ ] **Settings → Pages → Source → Deploy from branch → `main` / `root`**
- [ ] Wait ~60 seconds → site is live
- [ ] (Optional) Add `CNAME` + configure DNS for custom domain
- [ ] (Optional) Set up Formspree for the contact form