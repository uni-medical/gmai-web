# GMAI Lab Website — Internal Maintenance Guide

> This document is for **internal use only** — it describes how to update content on the GMAI Lab website. It is not rendered on the public site.

---

## Quick Reference

| I want to... | Edit this file | Also touch |
|---------------|---------------|------------|
| Add a team member | `_data/team.yml` | `pages/team/{slug}.md` + `pages/zh/team/{slug}.md` + photo in `assets/images/team/` |
| Move member to Past Members | `_data/team.yml` | Move from `members:` to `alumni:` |
| Add a publication | `_data/publications.yml` | Teaser image in `assets/images/teasers/` |
| Add a news item | `_data/news.yml` | — |
| Add a project to listing | `_data/projects.yml` | Thumbnail in `assets/images/projects/{slug}/` |
| Create project subpage | `pages/projects/{slug}.md` + ZH | Images in `assets/images/projects/{slug}/` |
| Add Featured Research section | `index.md` + `zh/index.md` | CSS class in `_sass/_home.scss` |
| Update hero stats | `_config.yml` (`stats:` block) | — |
| Change UI text (nav, buttons) | `_data/strings.yml` | — |
| Change brand color | `_sass/_variables.scss` (`$accent`) | — |

---

## Data Structure Overview

```yaml
# _data/team.yml hierarchy:
pi:           # Single PI (Junjun He) — large card on left
co_pis:       # Array — displayed side-by-side with PI in flex container
members:      # Array — 4-per-row grid (Researchers first, then Interns)
alumni:       # Array — Past Members table, sorted by end date (newest first)
```

**Content hierarchy (superset → subset):**
```
publications.yml  (ALL papers — the complete record)
  ⊃  projects.yml  (curated project listing with subpages)
    ⊃  Landing page sections  (top 5 highlights, hardcoded in index.md)
```

Every project with a `links.paper` MUST have a matching entry in `publications.yml`.

---

## 1. Adding a Team Member

### ⚠️ Identity Verification (CRITICAL)

Before adding anyone:
- **Same-name collision:** Verify Google Scholar / GitHub links belong to the correct person. Multiple researchers often share the same name (e.g. "Yirong Chen" at SCUT vs Stanford).
- **Chinese character accuracy:** Double-check Chinese characters — similar-sounding characters are easily confused (翊 vs 毅, 隆 vs 龙). Confirm exact characters with the team.
- **For leadership roles:** Adding someone at the PI/Co-PI level is high-stakes. Triple-check identity and get explicit confirmation.

### Step 1 — Prepare photo
- Place photo in `assets/images/team/{firstname}_{lastname}.jpg`
- Recommended: square crop, ≤500KB
- If no photo: member shows initials placeholder

### Step 2 — Add to `_data/team.yml`

Add entry under `members:` at the appropriate position:
- **Researchers** go before the `# ── Research Interns` comment
- **Interns** go after it
- Grid displays 4 per row, so ordering matters

```yaml
  - name:     "FirstName LastName (中文名)"
    slug:     "firstname-lastname"
    role:     "Research Intern, University Name"
    role_zh:  "科研实习生，大学名称"
    focus:    "Research focus in English"
    focus_zh: "研究方向中文"
    photo:    "assets/images/team/firstname_lastname.jpg"
    initials: "FL"
    links:
      scholar: ""
      github:  ""
      website: ""
      openreview: ""
```

**Link fields:**
- Team listing page shows only: `scholar`, `github`, `website`
- Profile page shows ALL: `scholar`, `github`, `website`, `openreview`, `semantic_scholar`, `dblp`, `huggingface`, `linkedin`, `researchgate`, `email`, `cv`, `twitter`
- Leave unused links as `""` or omit them entirely
- Do NOT include empty links for fields that will show as buttons

### Adding a Co-PI (leadership level)

Add to `co_pis:` array in `_data/team.yml` (between `pi:` and `members:`):
```yaml
co_pis:
  - name:     "Name (中文名)"
    slug:     "firstname-lastname"
    role:     "Co-Principal Investigator"
    role_zh:  "联合负责人（Co-PI）"
    title:    "Affiliation"
    title_zh: "单位"
    bio:      ""
    bio_zh:   ""
    photo:    ""
    initials: "XX"
    links:
      scholar: ""
      github:  ""
      website: ""
      email:   ""
```
Co-PIs display side-by-side with the PI in `.team-pis` flex container. Profile lookup in `_layouts/profile.html` checks `co_pis` after `pi`.

### Step 3 — Create profile pages

**English** — `pages/team/{slug}.md`:
```markdown
---
layout:      profile
title:       "FirstName LastName"
permalink:   /team/{slug}/
lang:        "en"
member_slug: "{slug}"
---
```

**Chinese** — `pages/zh/team/{slug}.md`:
```markdown
---
layout:      profile
title:       "中文名 — GMAI Lab"
permalink:   /zh/team/{slug}/
lang:        "zh"
member_slug: "{slug}"
---

中文名来自XX大学，是 GMAI 实验室科研实习生。研究方向包括...
```

### Step 4 — Verify
```bash
bundle exec jekyll build --baseurl ""
# Check: http://localhost:4000/team/
# Check: http://localhost:4000/team/{slug}/
```

---

## 1b. Filling Profile Subpage Content

Profile pages (`pages/team/{slug}.md` and `pages/zh/team/{slug}.md`) support rich Markdown content rendered via `{{ content }}` in `_layouts/profile.html`. After creating the front-matter-only pages (Step 3 above), fill in the body content following the templates below.

### Content Structure

**Regular Members** — 4 sections:

| Section (EN) | Section (ZH) | Content |
|---|---|---|
| `## About` | `## 关于` | 1-2 paragraphs: current position, institution, supervisor, previous roles, GMAI contribution |
| `## Research Interests` | `## 研究方向` | Bullet list of 3-5 areas with key project names in **bold** |
| `## Selected Publications` | `## 代表性论文` | Bullet list: **Paper** (Venue Year) — *Role*. One-line description |
| `## Career Trajectory` | `## 职业轨迹` | Single line with arrows: **Place A** (Role) → **Place B** (Role) → ... |

**PI / Co-PI** — 6 sections:

| Section (EN) | Section (ZH) | Content |
|---|---|---|
| `## About Me` | `## 关于我` | Background, education, leadership position |
| `## Research Interests` | `## 研究方向` | Bullet list of research areas |
| `## Highlights` | `## 代表性成果` | Detailed paragraphs on group achievements |
| `## Academic Overview` | `## 学术成果概览` | High-level achievements summary |
| `## Selected Early Works` | `## 早期代表性工作` | Earlier career publications |
| `## Professional Service` | `## 学术服务` | Reviewer roles, committee memberships |

### Content Guidelines

- Regular member content **MUST be shorter** than PI's — no Highlights/Academic Overview/Early Works sections
- **About**: 1-2 paragraphs. Bold institution names. Mention GMAI role.
- **Research Interests**: 3-5 bullets. Bold area label, key projects in parentheses.
- **Selected Publications**: 4-8 items. Format: `**Paper** (Venue Year) — *Role*. One-line.` Include GitHub stars if notable.
- **Career Trajectory**: Single line, bold institutions, arrow `→` separators.
- Always fill **both EN and ZH** pages.
- Use `**bold**` for institutions and projects, `*italic*` for author roles.

### Reference Implementations

| Role | EN file | ZH file |
|---|---|---|
| PI | `pages/team/junjun-he.md` | `pages/zh/team/junjun-he.md` |
| Regular member | `pages/team/jin-ye.md` | `pages/zh/team/jin-ye.md` |

### EN Template (Regular Member)

```markdown
---
layout:      profile
title:       "FirstName LastName"
permalink:   /team/{slug}/
lang:        "en"
member_slug: "{slug}"
---

## About

FirstName LastName is a [position] at **[Institution]**...
Before that, they worked at **[Previous Institution]**...

## Research Interests

- **Area One**: Project-A, Project-B
- **Area Two**: Project-C
- ...

## Selected Publications

- **Paper Title** (Venue Year) — *First Author*. Brief description.
- **Paper Title** (Venue Year) — Brief description.
- ...

## Career Trajectory

**Institution A** (Role) → **Institution B** (Role) → **Institution C** (Current Role)
```

---

## 2. Moving a Member to Past Members

1. **Remove** the member entry from `members:` in `_data/team.yml`
2. **Add** to `alumni:` section with full schema:
```yaml
alumni:
  - name:     "Name (中文名)"
    slug:     "firstname-lastname"
    period:   "2024.06 – 2025.12"
    position: "PhD Student, University Name"
    focus:    "Research focus keywords"
```

**Important rules:**
- **Sort by end date, newest first** — insert at the correct position
- **Period format:** Use `YYYY.MM` (e.g. "2024.06"), verify with the team
- **Slug field:** Required for "Profile →" link in the Past Members table
- Name display uses `{{ a.name | replace: " (", "<br>(" }}` for EN/CN line break
- Profile pages are kept (still accessible via direct URL)

---

## 3. Adding a Publication

### ⚠️ Venue Verification

Before adding, verify the publication venue:
- If paper is on arXiv, check if it has been **accepted** at a venue (arXiv comments field, GitHub README, Google Scholar)
- Common venues: CVPR, ICCV, ECCV, NeurIPS, MICCAI, AAAI, IEEE TNNLS, IEEE JBHI, IEEE TMI
- **Periodically audit** existing arXiv entries — papers may get accepted months later
- Example: SAM-Med3D was listed as "arXiv 2023" but was actually accepted at IEEE TNNLS 2025

### ⚠️ Completeness Check

Every project in `projects.yml` with a `links.paper` field MUST have a corresponding entry in `publications.yml`. Run:
```bash
# Find projects with papers
grep -A5 "links:" _data/projects.yml | grep "paper:"
# Cross-reference with publications
grep "title:" _data/publications.yml
```

### Step 1 — Prepare teaser image
- Place in `assets/images/teasers/{paper_slug}.png` (PNG + WebP)
- Recommended: max 520px wide, 16:9 or 4:3 aspect ratio, ≤300KB
- If no image available, download from arXiv: `curl -sL "https://arxiv.org/html/{ID}" | grep 'src=".*\.png"'`
- Generate WebP: `python3 -c "from PIL import Image; img=Image.open('file.png'); img.save('file.webp','WEBP',quality=85)"`
- This appears as thumbnail in the publications list

### Step 2 — Prepend to `_data/publications.yml`

Add new entry **at the top** of the file (newest first):

```yaml
- title:    "Paper Title Here"
  authors:  "Author One, Author Two, ..., Junjun He"
  venue:    "CVPR"
  year:     2025
  note:     "Oral"
  abstract: >
    English abstract, 3-5 sentences.
  abstract_zh: >
    中文摘要，3-5句话。
  teaser:   "/assets/images/teasers/paper_slug.png"
  keywords: "keyword1, keyword2, keyword3"
  links:
    paper:       "https://arxiv.org/abs/XXXX.XXXXX"
    code:        "https://github.com/uni-medical/repo"
    huggingface: "https://huggingface.co/papers/XXXX.XXXXX"
    dataset:     "https://huggingface.co/datasets/..."
  bibtex: |
    @inproceedings{author2025title,
      title={Paper Title},
      author={Author One and Author Two},
      booktitle={CVPR},
      year={2025}
    }
```

**Important rules:**
- PI "Junjun He" is auto-bolded in rendering (via `site.lab.pi_last`)
- Remove any link fields with empty values — do NOT leave `code: ""`
- BibTeX uses YAML literal block `|` — paste exactly from Google Scholar
- `keywords` are used for client-side filtering on publications page

### Step 3 — Optionally add news item
If the paper is accepted at a top venue, add to `_data/news.yml`:
```yaml
- date:       "April 2025"
  category:   paper
  label:      "New Paper"
  label_zh:   "新论文"
  headline:   "Paper accepted at CVPR 2025"
  headline_zh: "论文被 CVPR 2025 录用"
  body:       "Our paper on... has been accepted."
  body_zh:    "我们关于...的论文已被录用。"
```

---

## 4. Adding/Updating a Project

### Adding to project listing

Add entry to `_data/projects.yml`:
```yaml
- title:      "Project Name"
  title_zh:   "项目中文名"
  area:       "Research Area"
  area_zh:    "研究领域"
  slug:       "project-slug"
  thumbnail:  "/assets/images/projects/project-slug/thumbnail.png"
  desc:       >
    English description.
  desc_zh:    >
    中文描述。
  links:
    github:    "https://github.com/uni-medical/repo"
    paper:     "https://arxiv.org/abs/..."
```

### Creating a project subpage (Starship page)

Use the `gmai-starship-page` Claude skill, or manually create:
- `pages/projects/{slug}.md` (EN)
- `pages/zh/projects/{slug}.md` (ZH)
- Images in `assets/images/projects/{slug}/`

### Adding to Landing Page (Featured Research)

This requires editing 3 files:

1. **`_sass/_home.scss`** — Add CSS color class:
```scss
&.vis-newproject { background: linear-gradient(150deg, #color1 0%, #color2 40%, #color3 100%); }
```

2. **`index.md`** — Add section block (copy existing section as template):
```html
<div class="rs-section fade">  <!-- or rs-section rs-flip fade -->
  <div class="rs-visual vis-newproject">
    <img class="rs-panel-img" src="..." loading="lazy" />
    <div class="rs-watermark">06</div>
    <div class="rs-visual-content">...</div>
  </div>
  <div class="rs-text">
    <div class="rs-area">Area Label</div>
    <div class="rs-title">Section Title</div>
    <img class="rs-thumb" src="..." loading="lazy" />
    <div class="rs-body">Body text...</div>
    <div class="rs-topics">...</div>
    <a href="..." class="rs-link">Explore Project →</a>
  </div>
</div>
```

3. **`zh/index.md`** — Same structure with Chinese text

**Section layout pattern:**
- Odd sections (01, 03, 05): image LEFT, text RIGHT (no `.rs-flip`)
- Even sections (02, 04): text LEFT, image RIGHT (add `.rs-flip`)

---

## 5. Adding a News Item

Prepend to `_data/news.yml`:
```yaml
- date:       "Month Year"
  category:   paper|award|grant|join|event
  label:      "Category Label"
  label_zh:   "分类标签"
  headline:   "English headline"
  headline_zh: "中文标题"
  body:       "English body text."
  body_zh:    "中文正文。"
```

---

## 6. Image Guidelines

| Type | Location | Recommended Size | Format |
|------|----------|-----------------|--------|
| Team photo | `assets/images/team/` | Square, ≤500KB | JPG/PNG |
| Publication teaser | `assets/images/teasers/` | 16:9 or 4:3, ≤300KB | PNG |
| Project thumbnail | `assets/images/projects/{slug}/` | Any, ≤500KB | PNG |
| Project figures | `assets/images/projects/{slug}/` | Full width, ≤1MB | PNG |

**Naming convention:**
- Team: `firstname_lastname.jpg` (underscore, lowercase)
- Teasers: `paper_slug.png` (match keywords)
- Projects: descriptive names like `overview.png`, `architecture.png`

---

## 7. Bilingual Content Checklist

When adding any content, ensure both languages are covered:

- [ ] `title` / `title_zh`
- [ ] `desc` / `desc_zh` or `abstract` / `abstract_zh`
- [ ] `role` / `role_zh`
- [ ] `focus` / `focus_zh`
- [ ] `headline` / `headline_zh`, `body` / `body_zh`
- [ ] `label` / `label_zh`
- [ ] EN page file + ZH page file (for team profiles, project subpages)
- [ ] Landing page sections in both `index.md` and `zh/index.md`

---

## 8. Local Development

```bash
# Install dependencies (first time)
bundle install

# Start local server
bundle exec jekyll serve --baseurl "" --port 4000

# Production build
bundle exec jekyll build --baseurl ""

# Note: On WSL2 NTFS drives, --watch does NOT work.
# You must restart the server after each change.
```

---

## 9. Deployment

```bash
git add <files>
git commit -m "feat: description of changes"
git push origin main
```

GitHub Actions (`.github/workflows/deploy.yml`) auto-builds and deploys.
Live at: `https://uni-medical.github.io/gmai-web/`

---

## 10. File Dependency Map

```
_config.yml ──────────────────── Site identity, hero stats
│
├── _data/team.yml ──────────── Team listing + profile pages
│   ├── pi: ─────────────────── Main PI card (left)
│   ├── co_pis: ─────────────── Co-PI cards (right, flex container)
│   ├── members: ────────────── Member grid (4 per row)
│   ├── alumni: ─────────────── Past Members table (sorted newest-first)
│   ├── pages/team.md ←──────── EN team grid (Scholar/GitHub/Website only)
│   ├── pages/zh/team.md ←───── ZH team grid
│   ├── pages/team/{slug}.md ── EN profiles (ALL links)
│   └── pages/zh/team/{slug}.md ZH profiles
│
├── _data/publications.yml ──── Publication cards
│   ├── pages/publications.md ← EN pub list + filtering
│   ├── pages/zh/publications.md ZH pub list
│   ├── _includes/pub_card.html Shared card component
│   └── index.md (pub strip) ── Homepage featured pubs
│
├── _data/projects.yml ──────── Project listing
│   ├── pages/projects.md ←──── EN project grid (with thumbnails)
│   ├── pages/zh/projects.md ── ZH project grid
│   ├── pages/projects/{slug}.md  Starship subpages (NOT auto-generated)
│   └── pages/zh/projects/{slug}.md
│
├── _data/news.yml ──────────── News items
│   ├── pages/news.md ←──────── EN news page
│   └── pages/zh/news.md ────── ZH news page
│
├── _data/strings.yml ───────── UI text (nav, buttons, labels)
│   ├── _includes/nav.html
│   └── _includes/footer.html
│
├── index.md ────────────────── EN homepage
│   ├── Hero section (stats from _config.yml)
│   ├── Featured Research §1-5 (HARDCODED, not from projects.yml)
│   ├── Publication strip (from publications.yml)
│   └── News + Join sections
│
└── zh/index.md ─────────────── ZH homepage (mirrors EN structure)
```

---

## Claude Code Skills Available

For automated maintenance, use these Claude Code skills:

| Skill | Trigger | What it does |
|-------|---------|-------------|
| `gmai-member` | "Add a new member" / "添加新成员" | Interactive member management |
| `gmai-publication` | "Add a new paper" / "添加新论文" | Interactive publication entry |
| `gmai-project` | "Add a new project" / "添加新项目" | Project listing + optional Starship + landing |
| `gmai-news` | "Add news item" / "添加新闻" | News item creation |
| `gmai-starship-page` | "Create Starship subpage" | Detailed project subpage with highlights |
