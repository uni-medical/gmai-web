# Architecture Reference

Technical documentation for the research group website codebase.

---

## Overview

The site is a **data-driven Jekyll static site**. The core principle: all content lives in YAML files under `_data/`, and HTML templates read from them. No database, no server, no CMS login — just files.

```
Browser ← GitHub Pages CDN ← _site/ (built by Jekyll)
                                  ↑
                          Jekyll build (triggered by git push)
                                  ↑
                    _data/*.yml + _layouts/ + _sass/ + pages/
```

---

## Build Pipeline

### Standard (no Actions required)

```
git push → GitHub detects Gemfile → auto-builds with github-pages gem → deploys _site/
```

GitHub Pages natively supports Jekyll. The `Gemfile` pins the `github-pages` gem, which bundles the same Jekyll version GitHub uses. No workflow file is strictly needed, but the included `deploy.yml` gives explicit control over Ruby version and build flags.

### With GitHub Actions (`deploy.yml`)

```
git push → Actions triggered → ruby/setup-ruby → bundle install
         → jekyll build --baseurl "${{ steps.pages.outputs.base_path }}"
         → upload-pages-artifact → deploy-pages
```

The Actions workflow is recommended because it uses Ruby 3.2, sets `JEKYLL_ENV=production`, and correctly handles `baseurl` for branch deployments.

---

## SCSS Architecture

Three-layer import chain, all pulled into `assets/css/main.scss`:

```
main.scss
├── _variables.scss   ← tokens only, no rules
├── _base.scss        ← global resets, nav, footer, modal, utilities
├── _components.scss  ← team, publications, projects, news, contact sections
└── _home.scss        ← landing page hero and alternating research panels
```

**Rules:**
- `_variables.scss` contains zero CSS rules — only Sass variables
- `_base.scss` imports `_variables` itself; no other partial should import variables directly
- `_components.scss` covers every interior section page
- `_home.scss` covers only `index.md` and `zh/index.md` — homepage-specific

To add a new section style: create `_sass/_mysection.scss` and add `@import 'mysection'` to `main.scss`.

### Responsive breakpoint

A single breakpoint at `820px` handles mobile. Both `_base.scss` and `_components.scss` contain `@media (max-width: 820px)` blocks. `_home.scss` uses `900px` for the wider research panel grid.

---

## Layout & Include System

### `_layouts/default.html`

Every page uses this layout. It:
1. Loads IBM Plex fonts from Google Fonts
2. Links `assets/css/main.css` (compiled from SCSS)
3. Injects `{% include nav.html t=t lang=lang %}` — passes the translated strings object and current language
4. Renders `{{ content }}`
5. Injects `{% include footer.html t=t %}`
6. Renders the shared BibTeX modal (hidden by default, opened by JS)
7. Loads `assets/js/main.js`

### `_layouts/page.html`

A two-line wrapper that extends `default`. All section pages (`team.md`, `publications.md`, etc.) use `layout: page`.

### Language detection

In `default.html`:
```liquid
{% assign lang = page.lang | default: 'en' %}
{% assign t = site.data.strings[lang] %}
```

Every page declares `lang: en` or `lang: zh` in its front matter. The `t` variable then resolves to the correct strings block from `_data/strings.yml`. Templates reference `{{ t.nav.team }}`, `{{ t.sections.pubs }}` etc.

### `_includes/pub_card.html`

Called as `{% include pub_card.html pub=entry %}`. Receives a single publication object and renders the full card: teaser image (or blank placeholder), venue, title, author list with PI bolded, abstract, and link buttons. BibTeX is passed to `openBib()` via `{{ pub.bibtex | jsonify }}`.

---

## Data Schema

### `_data/publications.yml`

```yaml
- title:    string           # paper title
  authors:  string           # "Last F., Last F., ..." — PI last name is auto-bolded
  venue:    string           # journal or conference name
  year:     integer
  note:     string           # "Oral" | "Spotlight" | "Best Paper" | "" (blank = hidden)
  abstract: string           # shown on pub card
  teaser:   path             # relative path to image, or "" to skip
  keywords: string           # comma-separated, used by filter buttons
  links:                     # all sub-fields optional — omit to hide button
    paper:       url
    code:        url
    project:     url
    demo:        url
    dataset:     url
    huggingface: url
  bibtex: |                  # literal block scalar — preserves formatting
    @article{...}
```

### `_data/team.yml`

```yaml
pi:
  name / role / title / bio / photo / initials
  links: { website, scholar, cv, github, twitter }

members:
  - name / role / focus / photo / initials
    links: { scholar, github, website }

alumni:
  - name / period / now
```

### `_data/projects.yml`

```yaml
- title / area / desc / funding
  status: active | ongoing | new | completed   # controls badge colour
```

### `_data/news.yml`

```yaml
- date / headline / body
  category: award | paper | grant | join | event   # controls badge colour
  label:    string   # short label shown in badge
```

### `_data/strings.yml`

Flat key-value translation map, keyed by language code (`en`, `zh`). Templates access via `{{ t.section.key }}` where `t` is the resolved language block.

---

## JavaScript (`assets/js/main.js`)

Three independent features, no dependencies:

| Feature | Mechanism |
|---|---|
| Scroll fade-in | `IntersectionObserver` on `.fade` elements; adds `.in` class at 8% visibility |
| Smooth scroll | `click` handler on `a[href^="#"]`; calls `scrollIntoView({ behavior: 'smooth' })` |
| Publication filter | Click on `.pf` buttons sets `hidden` attribute on `.pub-entry` by matching `data-year` or `data-keywords` |
| BibTeX modal | `openBib(raw)` / `closeBib()` / `copyBib()` — global functions called from inline `onclick` in `pub_card.html` |

The modal is declared once in `default.html` and shared across all pages.

---

## Bilingual Architecture

The site has two parallel URL trees:

```
/               → index.md           (lang: en)
/team/          → pages/team.md      (lang: en)
...

/zh/            → zh/index.md        (lang: zh)
/zh/team/       → pages/zh/team.md   (lang: zh)
...
```

The nav language switcher generates:
- EN button → `{{ page.url | relative_url }}` (current page, English)
- ZH button → `/zh` + `page.url` (e.g. `/team/` → `/zh/team/`)

Data files are **shared** — publications, team, projects, and news are not duplicated. Only UI strings in `strings.yml` are translated. This means content (paper titles, bios, etc.) remains in English in both versions, which is standard for international academic labs.

To translate content itself, add translated fields to the data files and use conditional rendering in templates.

---

## Adding a New Language

1. Add a new top-level key to `_data/strings.yml` (e.g. `fr:`)
2. Translate all string values
3. Create `fr/index.md` + `pages/fr/*.md` with `lang: fr` front matter
4. Add a language button to `_includes/nav.html`

No plugins, no configuration changes required.

---

## Performance Notes

- Fonts loaded from Google Fonts with `preconnect` hints — no self-hosting needed
- Images use `loading="lazy"` in `pub_card.html`
- CSS is compressed (`style: compressed` in `_config.yml`)
- No JavaScript framework — total JS payload is ~2KB unminified
- No analytics, no tracking scripts included
