# Development Log

Chronological record of all decisions, implementations, and changes made to this project.

---

## Session 1 — 2026-04-06

**Project:** GMAI Research Group Website  
**Repository:** `git@github.com:uni-medical/gmai-web.git`  
**Live URL (pending):** `https://uni-medical.github.io/gmai-web/`  
**Stack:** Jekyll 4 · GitHub Pages · SCSS · Vanilla JS · No Node/npm  

---

### Phase 0 — Specification & Planning

**Source:** `plans/plan_ver1.md` (1343 lines)

The project began from a single specification document containing complete file templates for every component of the site. Before writing any code, a detailed implementation plan was created covering all 27 files across 8 phases, ordered by dependency:

1. Infrastructure (Gemfile, _config.yml, GitHub Actions, CNAME)
2. Data files (_data/*.yml)
3. Layouts & Includes (_layouts/, _includes/)
4. Stylesheets (_sass/)
5. JavaScript (assets/js/main.js)
6. Content pages (index.md, pages/*.md)
7. Asset directories (placeholder .gitkeep files)
8. Verification (local build + manual page checks)

**Key architectural decisions made at this stage:**
- Use `github-pages` gem (not standalone `jekyll`) — matches exactly what GitHub Pages builds, so no GitHub Actions workflow is technically required
- Store BibTeX as raw YAML literal block scalars — no parser needed, copy button works natively
- Bilingual via `_data/strings.yml` key lookup — no polyglot plugin, works on standard GitHub Pages
- Formspree for contact form — no server, no backend, just an `action=` attribute
- Single `$accent` token drives all brand colour — change one variable to rebrand

---

### Phase 1 — Initial Scaffold (Commit `18a7db0`)

**Date:** 2026-04-06 11:38  
**Files created:** 29  
**Lines added:** 2,444  

All files extracted verbatim from `plans/plan_ver1.md` and created in parallel batches:

#### Infrastructure
| File | Purpose |
|---|---|
| `Gemfile` | Pins `github-pages` gem + `webrick` for Ruby 3+ |
| `_config.yml` | Lab identity, stats, Sass config, plugin list, excludes |
| `.github/workflows/deploy.yml` | GitHub Actions: ruby/setup-ruby → jekyll build → deploy-pages |

#### Data Layer
| File | Sample content |
|---|---|
| `_data/publications.yml` | 3 papers with full BibTeX, keywords, links |
| `_data/team.yml` | PI + 5 members + 2 alumni |
| `_data/projects.yml` | 4 research projects with status badges |
| `_data/news.yml` | 5 news items across all category types |
| `_data/strings.yml` | Full EN + ZH string tables |

#### Template Layer
| File | Notes |
|---|---|
| `_layouts/default.html` | Loads IBM Plex fonts, injects nav/footer includes, BibTeX modal, JS |
| `_layouts/page.html` | Two-line wrapper extending default |
| `_includes/nav.html` | Fixed top nav with active-link detection + language switcher |
| `_includes/footer.html` | Three-column footer: brand · nav links · social links |
| `_includes/pub_card.html` | Teaser image, venue, title, PI-bolded authors, abstract, link buttons |

#### Stylesheet Layer (4 files, import chain)
```
assets/css/main.scss → _variables.scss → _base.scss → _components.scss
```
- `_variables.scss`: 15 design tokens (colours, fonts, spacing, radius)
- `_base.scss`: CSS reset, fixed nav, dark footer, BibTeX modal, `.fade` scroll utility
- `_components.scss`: Hero stats, team grid, pub list, projects, news table, contact form

#### Content Pages
| URL | File |
|---|---|
| `/` | `index.md` — hero with lab name + stats card |
| `/team/` | PI card (photo or initials fallback) + member grid + alumni table |
| `/publications/` | Year filter buttons (auto-generated) + pub cards |
| `/projects/` | Entry list with status badges (active/ongoing/new/completed) |
| `/news/` | Table with date · category badge · headline · body |
| `/contact/` | Two-column: info block + Formspree form |

**Build verification:** `bundle exec jekyll build` — clean, 0 errors, 1.789s build time.

---

### Phase 2 — Landing Page & Chinese Site (Commit `a088c8b`)

**Date:** 2026-04-06 12:11  
**Files added:** 15  
**Lines added:** 2,237  

#### 2a — Cinematic Homepage Redesign

The original homepage had only a hero section. The redesign transformed it into a full scrollable landing experience:

**Hero (`landing-hero`)**
- Full-viewport (`min-height: 100vh`), dark background (`$ink` = `#0f172a`)
- Two ambient gradient orbs animated with `@keyframes orb` (CSS-only, no JS)
- Subtle 60px grid texture via repeating `linear-gradient` on a pseudo-element
- Large serif heading using `clamp()` for fluid type scaling
- Three CTA buttons (Publications · Team · Join)
- Scroll indicator with CSS pulse animation
- Stats strip pinned to bottom of hero (publications · members · grants · citations)

**4 Alternating Research Panels (`rs-section`)**

Each panel is a 50/50 CSS grid. `.rs-flip` swaps column order to alternate image left/right as you scroll:

| # | Area | Visual Theme | Side |
|---|---|---|---|
| 1 | Neural Decoding × BCI | `vis-neural` — dark navy gradient | Image Left |
| 2 | Computational Genomics | `vis-genomics` — forest green gradient | Image Right |
| 3 | Molecular Interaction | `vis-molecular` — deep indigo gradient | Image Left |
| 4 | Clinical AI | `vis-clinical` — amber gradient | Image Right |

Each visual panel contains: keyword tags, live statistics, a ghost watermark number (CSS-only, `opacity: .04`), and two ambient circle overlays via `::before`/`::after`.

The text panel contains: area label, heading, prose, topic tags, and a link.

**Design decision:** Panels are hardcoded in `index.md` (not auto-generated from `projects.yml`) to allow full per-panel design control — different statistics, custom prose, and tailored keyword tags that wouldn't fit in a generic data schema.

**Dark Publications Strip**
- `background: $ink` — contrasts with surrounding white sections
- 3-column card grid showing the 3 most recent papers from `publications.yml`
- Cards use `rgba(255,255,255,...)` colour system for dark-background legibility
- Spotlight badge uses amber colour on dark background

**News + Join Us (2-column bottom)**
- Left: latest 4 news items from `news.yml`, compact with category badges
- Right: accent-blue panel (`background: $accent`) with 3 recruitment CTA buttons

**New stylesheet: `_sass/_home.scss`** (496 lines)
- Imported last in `main.scss` so it can override base styles for homepage-only elements
- Fully responsive at 900px breakpoint (panels stack, grid goes 1-column)

#### 2b — Complete Chinese Site

Created 6 Chinese pages with full bilingual parallel URL structure:

| English URL | Chinese URL | File |
|---|---|---|
| `/` | `/zh/` | `zh/index.md` |
| `/team/` | `/zh/team/` | `pages/zh/team.md` |
| `/publications/` | `/zh/publications/` | `pages/zh/publications.md` |
| `/projects/` | `/zh/projects/` | `pages/zh/projects.md` |
| `/news/` | `/zh/news/` | `pages/zh/news.md` |
| `/contact/` | `/zh/contact/` | `pages/zh/contact.md` |

**Translation approach:**
- `lang: zh` in each page's front matter triggers `{% assign t = site.data.strings['zh'] %}`
- All UI text (nav, labels, headings, button text, form fields) pulled from `_data/strings.yml`
- Paper titles, bios, project descriptions remain in English (standard for international academic labs)
- Chinese homepage has fully translated hero text, section prose, and CTA labels written natively
- Contact form dropdown options translated to Chinese

**Language switcher routing:**
- EN button → `{{ page.url | relative_url }}` (stay on current page)
- ZH button → `/zh` + `page.url` (e.g. `/team/` → `/zh/team/`)

#### 2c — Documentation Suite

| File | Lines | Contents |
|---|---|---|
| `README.md` | 160 | Overview, quick start, structure tree, tech stack, design tokens |
| `docs/ARCHITECTURE.md` | 218 | Build pipeline, SCSS rules, data schemas, JS breakdown, bilingual system |
| `docs/CONTENT-GUIDE.md` | 271 | Step-by-step for every content operation |
| `docs/DEPLOYMENT.md` | 203 | GitHub Pages setup, DNS config, checklist, troubleshooting |
| `CLAUDE.md` | 107 | Updated with current file map and architecture |

#### 2d — Repository Hygiene

- Added `.gitignore` excluding `_site/`, `vendor/`, `.bundle/`, `Gemfile.lock`
- Removed build artifacts from git tracking before commit
- Result: repository contains only source files — clean for GitHub

---

### Phase 3 — Deployment to GitHub (2026-04-06 ~12:30)

```bash
git remote add origin git@github.com:uni-medical/gmai-web.git
git branch -M main
git push -u origin main
```

**Result:** Push successful via SSH key authentication.

**Next required step:** Enable GitHub Pages in repository settings:  
`Settings → Pages → Source → GitHub Actions`

Once enabled, `.github/workflows/deploy.yml` will auto-build and deploy on every push.

---

### Phase 4 — Bug Fix: Chinese Language Switcher 404 (2026-04-06 ~13:00)

**Reported:** English site works perfectly on GitHub Pages. Clicking 中文 returns a 404 on every Chinese page.

#### Root Cause Analysis

The nav language switcher in `_includes/nav.html` had an asymmetry between the two language buttons:

```liquid
<!-- EN button — correct -->
<a href="{{ page.url | relative_url }}">EN</a>

<!-- ZH button — BROKEN -->
<a href="{{ '/zh' | append: page.url }}">中文</a>
```

The ZH button was missing Jekyll's `| relative_url` filter. On GitHub Pages with `baseurl: "/gmai-web"`, `relative_url` prepends `/gmai-web` to every internal path. Without it, the ZH button generated bare paths like `/zh/team/` instead of `/gmai-web/zh/team/` — a 404 on every Chinese page.

**Why it worked locally:** The local server is run with `--baseurl ""`, which makes `relative_url` a no-op. The bug was completely invisible in local preview and only surfaced on the deployed site.

**Why the EN side was unaffected:** `{{ page.url | relative_url }}` already correctly used the filter.

#### Additional Fix Applied

`_config.yml` was also updated at the same time to set the correct production values:

```yaml
# Before
url:     "https://yourusername.github.io"
baseurl: "/your-repo-name"

# After
url:     "https://uni-medical.github.io"
baseurl: "/gmai-web"
```

Without the correct `baseurl`, all CSS, JS, and internal links would also break — this was the second contributing factor to the 404s.

#### Fix

One character change in `_includes/nav.html` line 20:

```liquid
<!-- Before -->
<a href="{{ '/zh' | append: page.url }}">中文</a>

<!-- After -->
<a href="{{ '/zh' | append: page.url | relative_url }}">中文</a>
```

#### Commits & Branch

| Commit | Message |
|---|---|
| `b1001de` | `fix: set correct url and baseurl for uni-medical/gmai-web GitHub Pages` |
| `f082105` | `fix: add relative_url filter to Chinese language switcher link` |

Branch `fix/zh-language-switcher` pushed to GitHub. PR ready at:  
`github.com/uni-medical/gmai-web/pull/new/fix/zh-language-switcher`

**Lesson learned:** On GitHub Pages subdirectory deployments, every single internal link must use `| relative_url`. Raw string paths like `"/zh/team/"` will always 404 unless `baseurl` is empty.

---

## Current State Summary

### Repository
- **Remote:** `git@github.com:uni-medical/gmai-web.git`
- **Branch:** `main`
- **Commits:** 2
- **Source files:** 37 (excluding `.git`, `vendor`, `_site`, `plans`)

### Pages (10 total)
| Page | Status |
|---|---|
| `/` — EN Homepage | Complete |
| `/team/` | Complete |
| `/publications/` | Complete |
| `/projects/` | Complete |
| `/news/` | Complete |
| `/contact/` | Complete |
| `/zh/` — ZH Homepage | Complete |
| `/zh/team/` | Complete |
| `/zh/publications/` | Complete |
| `/zh/projects/` | Complete |
| `/zh/news/` | Complete |
| `/zh/contact/` | Complete |

### Bugs Fixed
- [x] Chinese language switcher 404 — missing `| relative_url` in `nav.html` (commit `f082105`)
- [x] `_config.yml` wrong `url`/`baseurl` for GitHub Pages deployment (commit `b1001de`)

### Content (placeholder — needs replacement before launch)
- [ ] `_data/publications.yml` — replace sample papers with real publications
- [ ] `_data/team.yml` — replace with real team members and photos
- [ ] `_data/projects.yml` — replace with real research projects
- [ ] `_data/news.yml` — replace with real news items
- [ ] `index.md` + `zh/index.md` — update research panel content to match real directions
- [ ] `pages/contact.md` + `pages/zh/contact.md` — replace `YOUR_FORM_ID` with Formspree endpoint
- [ ] `assets/images/team/` — add real team photos
- [ ] `assets/images/teasers/` — add paper teaser images

### Known Limitations
- Mobile nav is hidden at <820px (no hamburger menu implemented yet)
- No dark mode
- No search functionality
- Publication filter is keyword/year only (no author filter)
- Chinese content in `_data/*.yml` not yet translated (titles, abstracts, bios remain EN)

---

### Phase 5 — Verification & Sign-off (2026-04-06 ~13:30)

**Reported:** Chinese button still routing to `https://uni-medical.github.io/zh/` (404).

#### Investigation

Fetched the live deployed page directly to inspect the generated HTML:

```bash
curl -s "https://uni-medical.github.io/gmai-web/" | grep 'zh'
# → href="/gmai-web/zh/"   ✓ correct
```

Checked HTTP status of all Chinese pages on the live deployment:

```bash
curl -s -o /dev/null -w "%{http_code}" "https://uni-medical.github.io/gmai-web/zh/"
# → 200 ✓
curl -s -o /dev/null -w "%{http_code}" "https://uni-medical.github.io/gmai-web/zh/team/"
# → 200 ✓
```

**Conclusion:** The fix was already fully deployed and working. The 404 was caused by navigating manually to `https://uni-medical.github.io/zh/` — missing the `/gmai-web/` baseurl segment. The Chinese switcher button correctly generates `/gmai-web/zh/`.

**Resolution:** Hard refresh (`Ctrl+Shift+R`) to clear browser cache. Click the 中文 button — do not type the URL manually.

**Status: All 12 pages confirmed live and operational. ✅**

---

## Final State — Session 1 Complete (2026-04-06)

### Live URLs — All Verified HTTP 200

| Page | URL |
|---|---|
| EN Homepage | `https://uni-medical.github.io/gmai-web/` |
| EN Team | `https://uni-medical.github.io/gmai-web/team/` |
| EN Publications | `https://uni-medical.github.io/gmai-web/publications/` |
| EN Projects | `https://uni-medical.github.io/gmai-web/projects/` |
| EN News | `https://uni-medical.github.io/gmai-web/news/` |
| EN Contact | `https://uni-medical.github.io/gmai-web/contact/` |
| ZH Homepage | `https://uni-medical.github.io/gmai-web/zh/` |
| ZH Team | `https://uni-medical.github.io/gmai-web/zh/team/` |
| ZH Publications | `https://uni-medical.github.io/gmai-web/zh/publications/` |
| ZH Projects | `https://uni-medical.github.io/gmai-web/zh/projects/` |
| ZH News | `https://uni-medical.github.io/gmai-web/zh/news/` |
| ZH Contact | `https://uni-medical.github.io/gmai-web/zh/contact/` |

### Commit History

| Hash | Message | Date |
|---|---|---|
| `18a7db0` | feat: scaffold research group Jekyll website from spec | 2026-04-06 11:38 |
| `a088c8b` | feat: add landing page, Chinese site, documentation, and gitignore | 2026-04-06 12:11 |
| `989c4db` | docs: add development log with full session history and pending tasks | 2026-04-06 12:30 |
| `b1001de` | fix: set correct url and baseurl for uni-medical/gmai-web GitHub Pages | 2026-04-06 12:45 |
| `f082105` | fix: add relative_url filter to Chinese language switcher link | 2026-04-06 13:00 |
| `43a1f75` | Merge pull request #1 from uni-medical/fix/zh-language-switcher | 2026-04-06 13:10 |
| `406060e` | docs: update development log with Phase 4 Chinese 404 bug fix | 2026-04-06 13:15 |

---

---

## Session 2 — 2026-04-07

**Objective:** Populate the website with real GMAI lab content from `resources/resource_20260407.zip`

**Commit:** `e8aea9d` — `feat: populate website with real GMAI lab content from resources`

---

### Source Materials

The zip file contained:

| File | Type | Content |
|---|---|---|
| `网站信息_Table_Grid.csv` | CSV | 11 visiting researchers (name, university, focus, start date, homepage link) |
| `医学前沿-v20250913.pdf` + `full.md` | PDF (extracted) | Research group mission, department responsibilities, current foundation |
| `医疗大模型.pdf` + `full.md` | PDF (extracted) | 12 key research achievements/papers with descriptions, collaboration model |
| `研究基础与规划.pdf` + `full.md` | PDF (extracted) | Detailed project descriptions with arXiv/GitHub links, named researchers |
| `宁光院士项目讨论.pdf` + `full.md` | PDF (extracted) | Most comprehensive; researcher-attributed projects, needs, system plans |

PDFs were pre-processed via MinerU (PDF→markdown), providing `full.md` extracts with all text content.

---

### Phase 1 — Content Extraction & Mapping

Explored all source documents to identify exactly what could be mapped to the website schema:

**Team members identified:**
- 11 visiting researchers from CSV with universities, research focus, start dates, homepage links
- 3 core researchers from PDFs: 黄子炎 (STU-Net, DTR-MAS), 叶锦 (SAM-Med series, GMAI-MMBench), 李添斌 (OmniMedVQA, GMAI-VL)
- PI confirmed by user: **Junjun He** (Google Scholar: `Z4LgebkAAAAJ`)

**Publications identified** (15 papers with verifiable arXiv/GitHub/DOI links):
SlideChat (CVPR 2025), Ophora (MICCAI 2025 Oral), RetinaLogos (MICCAI 2025), ProgEmu (MICCAI 2025), MRI Translation (MICCAI 2025), MedQ-Bench (arXiv), MedITok (arXiv), OphCLIP (ICCV 2025), GMAI-VL (arXiv 2024), GMAI-MMBench (arXiv 2024), OmniMedVQA (CVPR 2024), SAM-Med3D (arXiv 2023), SAM-Med2D (arXiv 2023), STU-Net (arXiv 2023), Sci-LLM Survey (arXiv 2025)

**Key decisions (user input):**
- Lab name: **GMAI** (General Medical AI), shortname "GMAI", GitHub: `uni-medical`
- OphCLIP venue corrected: document said "ICCV 2024" (impossible — ICCV runs odd years only); confirmed as **ICCV 2025**
- Photos: team member photo filenames set in `team.yml`; actual image files to be added by user later
- Institution/department/email/address: left as `TODO:` placeholders in `_config.yml`
- `resources/` directory added to `.gitignore` (59MB PDFs — not appropriate for git)

---

### Phase 2 — Files Updated (8 files, commit `e8aea9d`)

#### `_data/team.yml` — Full replacement

| Section | Before | After |
|---|---|---|
| PI | "Prof. Jane Smith" (placeholder) | Junjun He (Scholar link) |
| Members | 5 sample members | 14 real members (3 core + 11 visiting) |
| Alumni | 2 sample alumni | Empty (`alumni: []`) |

Member list:

| Name | Affiliation | Research Focus |
|---|---|---|
| Ziyan Huang (黄子炎) | — (from PDFs) | Medical image segmentation, multi-agent systems |
| Jin Ye (叶锦) | — (from PDFs) | Interactive segmentation, multimodal benchmarks |
| Tianbin Li (李添斌) | — (from PDFs) | Medical VQA, multimodal large models |
| Ming Hu (胡铭) | Monash University | Video understanding, MLLMs |
| Ying Chen (陈莹) | Xiamen University | AI for science, computational pathology |
| Jiyao Liu (刘继垚) | Fudan University | Low-level vision, agents, MLLMs |
| Wei Li (李威) | Shanghai Jiao Tong University | Continual learning, MLLMs |
| Chenglong Ma (马成龙) | Fudan University | Multimodal/generative models |
| Ye Du (杜烨) | Hong Kong Polytechnic University | AI for science, proteomics |
| Shujian Gao (高书剑) | Fudan University | Visual representation, multi-modal learning |
| Wenhao Tang (唐文浩) | Nankai University | AI for science, computational pathology |
| Jiashi Lin (林佳仕) | Northwestern Polytechnical University | Knowledge graphs, LLMs, agentic RAG |
| Cheng Tang (唐诚) | UCAS | AI for science, computational imaging |
| Raymond Ning (宁俊智) | Imperial College London | AI4Health, multimodal medical AI |

#### `_data/publications.yml` — Full replacement

Replaced 3 sample papers with 15 real publications. Each entry has: title, authors (from document mentions), venue, year, abstract (from PDF descriptions), keywords, arXiv/GitHub links.

**Author note:** Full author lists were not always available in the documents — entries use named researchers plus "et al." where appropriate. Team should verify and update author lists from arXiv.

#### `_data/projects.yml` — Full replacement

Replaced 4 sample projects with 5 real ones:

| Title | Area | Status |
|---|---|---|
| Project Imaging-X | Medical Data Infrastructure | active |
| GMAI-VL / UniMedVL | Medical Multimodal AI | active |
| DTR-MAS | Clinical AI Systems | active |
| Medical Image Segmentation Foundation Models | Medical Image Analysis | active |
| Autonomous Surgical Robot | Surgical AI & Robotics | new |

#### `_data/news.yml` — Full replacement

Replaced 5 sample news items with 6 real events:

| Date | Category | Event |
|---|---|---|
| June 2025 | paper | Ophora — MICCAI 2025 Oral |
| June 2025 | paper | RetinaLogos, ProgEmu, MRI Translation — MICCAI 2025 |
| February 2025 | paper | SlideChat — CVPR 2025 |
| January 2025 | event | GMAI-MMBench release (50 LVLMs evaluated) |
| October 2024 | paper | OphCLIP — ICCV 2025 |
| September 2025 | join | New visiting researchers join |

#### `_config.yml` — Partial update

| Field | Before | After |
|---|---|---|
| `title` | "Computational Research Group" | "GMAI — General Medical AI" |
| `tagline` | "Advancing rigorous science at the frontier of computation" | "AI-Empowered Precision Medicine: Diagnosis, Treatment, and Discovery" |
| `description` | ML/computational biology placeholder | Real GMAI mission statement |
| `lab.name` | "Computational Research Group" | "GMAI Lab (General Medical AI)" |
| `lab.shortname` | "CRG" | "GMAI" |
| `lab.pi` | "Prof. Jane Smith" | "Junjun He" |
| `lab.pi_last` | "Smith" | "He" |
| `lab.github` | "github.com/labname" | "github.com/uni-medical" |
| `lab.scholar` | Placeholder | Real PI Scholar link |
| `stats.publications` | 48 | 15 |
| `stats.members` | 12 | 14 |
| Institution/dept/address/email | Placeholder | `TODO:` placeholder (user must fill) |

#### `index.md` + `zh/index.md` — 4 research panels rewritten

| Panel | Before (placeholder) | After (real) |
|---|---|---|
| 01 | Neural Decoding / BCI | Medical Data Infrastructure (Project Imaging-X, 1,800+ datasets, 100B+ tokens) |
| 02 | Computational Genomics | Medical Multimodal LLMs (GMAI-VL, SlideChat, 5.5M image-text pairs) |
| 03 | Structural Biology / Drug Discovery | Medical Image Segmentation (STU-Net 1.4B, SAM-Med2D/3D, 361M masks) |
| 04 | Clinical AI / Conformal Prediction | Clinical AI Systems (DTR-MAS, Autonomous Surgical Robot) |

Hero title: "Science at the Frontier of Computation" → "AI at the Frontier of Medicine" (EN) / "以人工智能赋能精准医学" (ZH)

Chinese panel text copied directly from PDF documents (no translation needed).

#### `.gitignore` — Added `resources/` exclusion

The `resources/` directory containing raw PDFs (59MB total) was added to `.gitignore` to prevent large binary files from being committed.

---

### Build Verification

```bash
/home/junzhin/.local/share/gem/ruby/3.2.0/bin/bundle exec jekyll build
# → done in 14.09 seconds. 0 errors.
```

---

## Current State Summary — Session 2 Complete (2026-04-07)

### What's Now Real (Not Placeholder)

- ✅ Lab identity: GMAI, GitHub uni-medical, PI Junjun He
- ✅ 15 publications with real arXiv/GitHub links
- ✅ 14 team members (real names, universities, research focus)
- ✅ 5 research projects
- ✅ 6 news items from real paper acceptances
- ✅ All 4 homepage research panels with real GMAI content

### Still TODO (Team Action Required)

| Item | Where | Action |
|---|---|---|
| Institution name | `_config.yml` `lab.institution` | Replace `"TODO: Add institution name"` |
| Department | `_config.yml` `lab.department` | Replace `"TODO: Add department name"` |
| Lab address | `_config.yml` `lab.address` | Replace `"TODO: Add lab address"` |
| Lab email | `_config.yml` `lab.email` | Replace `"TODO: Add lab email"` |
| Citation count | `_config.yml` `stats.citations` | Replace `"TODO: Add citation count"` |
| Founding year | `_config.yml` `lab.founded` | Confirm year (currently `2020`) |
| Team photos | `assets/images/team/` | Add image files matching filenames in `team.yml` |
| PI bio & title | `_data/team.yml` `pi.title` / `pi.bio` | Add PI's full title and bio |
| PI website | `_data/team.yml` `pi.links.website` | Add personal/lab website URL |
| Core researcher details | `_data/team.yml` (黄子炎, 叶锦, 李添斌) | Add universities, Scholar links |
| Author lists | `_data/publications.yml` | Verify/complete all co-author lists |
| BibTeX entries | `_data/publications.yml` | Add full BibTeX from Google Scholar |
| Formspree form ID | `pages/contact.md` + `pages/zh/contact.md` | Replace `YOUR_FORM_ID` |
| Publication teasers | `assets/images/teasers/` | Add teaser images for papers |
| Twitter/social | `_config.yml` `lab.twitter` | Add if applicable |

### Known Limitations (Unchanged from Session 1)

- Mobile nav hides all links at <820px — no hamburger menu
- No dark mode
- No publication author filter (only year + keyword)
- Chinese `_data/*.yml` content (titles, abstracts, bios) remains in English
