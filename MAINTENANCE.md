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

## 1. Adding a Team Member

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

## 2. Moving a Member to Past Members

1. **Remove** the member entry from `members:` in `_data/team.yml`
2. **Add** to `alumni:` section:
```yaml
alumni:
  - name:    "Name (中文名)"
    period:  "2024.01 – 2025"
    now:     "Current affiliation — Research focus"
```
3. Profile pages can be kept (they will still render) or removed

---

## 3. Adding a Publication

### Step 1 — Prepare teaser image
- Place in `assets/images/teasers/{paper_slug}.png`
- Recommended: 16:9 or 4:3 aspect ratio, ≤300KB
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
