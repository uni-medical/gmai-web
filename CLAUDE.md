# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Jekyll 4 static site for a computational research group. Designed to deploy on GitHub Pages with zero custom plugins. The original specification lives in `plans/plan_ver1.md`. Full documentation is in `docs/`.

**Current state (as of 2026-04-06):** fully implemented and locally verified. All 37 files created from spec. Awaiting first GitHub push for deployment.

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
_layouts/default.html       shared shell (fonts, nav, footer, BibTeX modal, JS)
_layouts/page.html          two-line wrapper extending default
_includes/nav.html          top nav + language switcher (EN ↔ 中文)
_includes/footer.html       footer with lab links
_includes/pub_card.html     publication card component
.github/workflows/deploy.yml  GitHub Actions build + deploy pipeline
docs/ARCHITECTURE.md        technical reference
docs/CONTENT-GUIDE.md       how to update content day-to-day
docs/DEPLOYMENT.md          GitHub Pages deployment + custom domain
```

## Common Tasks

**Add a publication:** edit `_data/publications.yml`, prepend new entry, add teaser image to `assets/images/teasers/`

**Add a team member:** edit `_data/team.yml`, add photo to `assets/images/team/`

**Update hero stats:** edit `stats:` block in `_config.yml`

**Change brand colour:** edit `$accent` in `_sass/_variables.scss`

**Add a keyword filter button:** edit `pages/publications.md` — add `<button class="pf" data-filter="keyword">Label</button>` inside `.pub-filters`
