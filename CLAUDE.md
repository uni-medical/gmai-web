# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Jekyll 4 static site for a research group, designed to deploy on GitHub Pages with zero custom plugins. The full specification and all file templates live in `plans/plan_ver1.md` — read it before implementing anything.

## Local Development

```bash
bundle install                # one-time: install Ruby gems
bundle exec jekyll serve      # preview at http://localhost:4000
bundle exec jekyll build      # production build into _site/
```

No Node/npm required — Jekyll handles SCSS natively.

## Deployment

Push to `main` → GitHub Pages auto-builds and deploys. No manual step needed. If a newer Jekyll version is required, enable the optional `.github/workflows/deploy.yml` and change `Gemfile` to `gem "jekyll", "~> 4.3"`.

## Architecture

### Data-driven content (`_data/`)

All site content lives in YAML files — no touching HTML to add papers, members, or news:

| File | Purpose |
|---|---|
| `_data/publications.yml` | All papers; BibTeX stored as raw string field |
| `_data/team.yml` | PI + all members |
| `_data/projects.yml` | Active research projects |
| `_data/news.yml` | News and announcements |
| `_data/strings.yml` | UI text (English + Chinese bilingual) |

### Layouts and templates

- `_layouts/default.html` — wraps every page (nav + footer)
- `_layouts/page.html` — thin wrapper for section pages
- `_includes/pub_card.html` — reusable publication card (used in loop over `publications.yml`)
- `_includes/nav.html`, `_includes/footer.html`

### Styling (`_sass/`)

- `_sass/_variables.scss` — all design tokens (colors, fonts, spacing); change here first
- `_sass/_base.scss` — reset, typography, nav, footer, BibTeX modal
- `_sass/_components.scss` — hero, team grid, publications, projects, news, contact sections
- `assets/css/main.scss` — SCSS entry point that imports all partials

### JavaScript (`assets/js/main.js`)

Handles: publication filtering by year/keyword, BibTeX modal with copy-to-clipboard, scroll-triggered animations. No build step — vanilla JS loaded directly.

### Images

- `assets/images/team/` — member photos, square JPG/PNG, minimum 400×400px
- `assets/images/teasers/` — paper overview figures, PNG, 800×400px

## Key Design Constraints

- No custom Jekyll plugins (GitHub Pages whitelist only)
- No Node/npm build step
- Multilingual support via `_data/strings.yml` only (no polyglot plugin)
- Contact form via Formspree `action=` attribute (no server required)
- BibTeX is a raw YAML string field, not parsed — copy button works without a parser

## Configuration

`_config.yml` controls site identity (`title`, `tagline`, `url`, `baseurl`), build settings, and lab metadata. Set `baseurl: ""` when the repo is `username.github.io`; otherwise set it to `/repo-name`.
