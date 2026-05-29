# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Jekyll 4 static site for a computational research group. Designed to deploy on GitHub Pages with zero custom plugins. The original specification lives in `plans/plan_ver1.md`. Full documentation is in `docs/`.

Live at GitHub Pages; auto-deploys on push to `main`.

## Local Development

```bash
bundle install                              # one-time setup
bundle exec jekyll serve --baseurl ""       # preview at http://localhost:4000
bundle exec jekyll build                    # production build to _site/
```

The `--baseurl ""` flag is required for local preview (overrides the GitHub Pages URL in `_config.yml`).

## Deployment

Push to `main` → GitHub Actions (`.github/workflows/deploy.yml`) builds and deploys automatically. Enable in **Settings → Pages → Source → GitHub Actions**.

Before first push, update `_config.yml`: set `url`, `baseurl`, and all `lab:` fields.

## Architecture

### SCSS layers (import order matters)

```
assets/css/main.scss
├── _sass/_variables.scss   ← design tokens only; all other partials import this
├── _sass/_base.scss        ← reset, nav, footer, BibTeX modal, utilities
├── _sass/_components.scss  ← interior section pages (team, pubs, projects, news, contact)
└── _sass/_home.scss        ← homepage only: hero, research panels, dark pub strip, join section
```

Never add homepage styles to `_components.scss` — keep the separation.

### Data files (the only files editors should touch)

| File | What it controls |
|---|---|
| `_data/publications.yml` | All papers, BibTeX, links, teasers |
| `_data/team.yml` | PI, members, alumni |
| `_data/projects.yml` | Research projects with status + funding |
| `_data/news.yml` | News items with category badges |
| `_data/strings.yml` | All UI text for EN and ZH |
| `_config.yml` | Lab identity, stats counters, site URL |

### Language system

Two parallel URL trees: `/` + `/team/` etc. for English, `/zh/` + `/zh/team/` etc. for Chinese. Language is declared in each page's front matter (`lang: en` or `lang: zh`). `default.html` reads `site.data.strings[lang]` and passes a `t` variable to nav and footer includes. Data files are shared — only UI strings are translated.

### Homepage structure (`index.md` and `zh/index.md`)

The homepage is **not** data-driven from `projects.yml` — the four research panels are hardcoded in the page for full design control. Each panel uses:
- `.rs-section` (+ `.rs-flip` to swap sides)
- `.rs-visual` with a colour theme class: `vis-neural` | `vis-genomics` | `vis-molecular` | `vis-clinical`
- `.rs-text` for content

To add a 5th panel: copy a panel block in `index.md`, change watermark number, add a new colour class in `_home.scss`.

### Publication card (`_includes/pub_card.html`)

Called via `{% include pub_card.html pub=entry %}`. Receives one publication object. PI surname (from `site.lab.pi_last`) is auto-bolded in the author list. BibTeX is passed to the modal via `{{ pub.bibtex | jsonify }}`.

### Member profile pages (`_layouts/profile.html`)

Each team member has a dedicated EN + ZH profile page. The layout reads member data from `_data/team.yml` via the `member_slug` front matter field — no data is duplicated in the page file itself.

Front matter for a profile page:
```yaml
---
layout:      profile
title:       "First Last"
permalink:   /team/first-last/
lang:        "en"
member_slug: "first-last"
---
```

The layout resolves `member_slug` by checking `team.pi`, then `team.co_pis`, then `team.members`, then `team.alumni` in that order. It renders: photo (or initials placeholder), role, research focus, all configured links, and the `bio` / `bio_zh` fields from the YAML. Any Markdown content in the page file appears below the bio in `.profile-content`.

Supported link keys in `team.yml` under `links:`: `scholar`, `github`, `website`, `openreview`, `semantic_scholar`, `dblp`, `huggingface`, `linkedin`, `researchgate`, `email`, `cv`, `twitter`. Set unused keys to `""`.

Always create both `pages/team/<slug>.md` (EN) and `pages/zh/team/<slug>.md` (ZH) with identical front matter except `lang` and `permalink`.

### Project detail pages

Per-project detail pages live at `pages/projects/<slug>.md` and `pages/zh/projects/<slug>.md`. They use `layout: page` (not `profile`) and are fully custom HTML within the page body — no shared data-driven template exists. The slug must match the project's `slug:` field in `_data/projects.yml` for nav consistency.

## Key Design Constraints

- No custom Jekyll plugins (GitHub Pages whitelist only)
- No Node/npm — SCSS compiled by Jekyll's built-in Sass
- `_config.yml` is the single source of truth for all lab identity fields
- Homepage research panels are intentionally hardcoded — do not auto-generate from `projects.yml`
- BibTeX is a raw YAML literal block scalar, not parsed — copy button works without a parser

## File Map

```
index.md                    EN homepage (hero + 4 research panels + pubs + news/join)
zh/index.md                 ZH homepage (identical structure, Chinese text)
pages/{team,publications,projects,news,contact}.md    EN section pages
pages/zh/{team,publications,projects,news,contact}.md ZH section pages
pages/team/<slug>.md        EN individual member profile (layout: profile)
pages/zh/team/<slug>.md     ZH individual member profile (layout: profile)
pages/projects/<slug>.md    EN project detail page (layout: page, custom HTML)
pages/zh/projects/<slug>.md ZH project detail page (layout: page, custom HTML)
_layouts/default.html       shared shell (fonts, nav, footer, BibTeX modal, JS)
_layouts/page.html          two-line wrapper extending default
_layouts/profile.html       member profile: reads team.yml via member_slug front matter
_includes/nav.html          top nav + language switcher (EN ↔ 中文)
_includes/footer.html       footer with lab links
_includes/pub_card.html     publication card component
_includes/picture.html      responsive <picture> with WebP + fallback
scripts/optimize-images.sh  batch image resize + compress + WebP generation
.github/workflows/deploy.yml  GitHub Actions build + deploy pipeline
docs/ARCHITECTURE.md        technical reference
docs/CONTENT-GUIDE.md       how to update content day-to-day
docs/DEPLOYMENT.md          GitHub Pages deployment + custom domain
```

## Image Optimization

All images must be optimized before committing. A script handles resizing, compression, and WebP generation.

### Running the optimizer

```bash
bash scripts/optimize-images.sh
```

This script:
1. Resizes images to appropriate max dimensions (team: 400px, teasers: 520px, projects: 1200px, hero: 1920px)
2. Compresses quality (85% JPEG, optimized PNG)
3. Generates `.webp` alongside every original image

### WebP delivery

All templates use `_includes/picture.html` to serve WebP with original format fallback:

```liquid
{% include picture.html src="/assets/images/team/photo.jpg" alt="Name" class="team-photo" loading="lazy" width="180" height="180" %}
```

The hero background uses CSS `image-set()` in `_sass/_home.scss` for WebP priority.

### When adding new images

1. Place the original image in the correct directory (`assets/images/team/`, `teasers/`, `projects/<slug>/`)
2. Run `bash scripts/optimize-images.sh` — it will resize, compress, and create the `.webp` version
3. Reference images via `{% include picture.html %}` in templates, or `<picture>` elements in inline HTML
4. Use `loading="lazy"` for all images except hero/logo

### Target dimensions (2× Retina)

| Category | Display size | Max source dimension |
|----------|-------------|---------------------|
| Team photos | 96–180px | 400×400px |
| Teaser images | 260px wide | 520px wide |
| Project images | ~600px panels | 1200px wide |
| Hero background | full viewport | 1920px wide |

## Common Tasks

**Add a publication:** edit `_data/publications.yml`, prepend new entry, add teaser image to `assets/images/teasers/`, then run `bash scripts/optimize-images.sh`

**Add a team member:** edit `_data/team.yml` (include a `slug:` field), add photo to `assets/images/team/`, run `bash scripts/optimize-images.sh`, then create both `pages/team/<slug>.md` and `pages/zh/team/<slug>.md` using `layout: profile` and `member_slug: <slug>`

**Add a project detail page:** create `pages/projects/<slug>.md` and `pages/zh/projects/<slug>.md` with `layout: page`; write custom HTML in the body following the pattern in existing project pages

**Update hero stats:** edit `stats:` block in `_config.yml`

**Change brand colour:** edit `$accent` in `_sass/_variables.scss`

**Add a keyword filter button:** edit `pages/publications.md` — add `<button class="pf" data-filter="keyword">Label</button>` inside `.pub-filters`
