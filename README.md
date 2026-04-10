# Research Group Website

A production-ready static website for a computational research group, built with **Jekyll 4** and deployed on **GitHub Pages**. No Node.js, no custom plugins, no build servers — just push to `main` and the site is live in 60 seconds.

## Live Preview

```
http://localhost:4000          English homepage
http://localhost:4000/zh/      Chinese homepage (中文)
```

Section pages: `/team/` · `/publications/` · `/projects/` · `/news/` · `/contact/`  
Chinese mirrors: `/zh/team/` · `/zh/publications/` · `/zh/projects/` · `/zh/news/` · `/zh/contact/`

---

## Quick Start (local development)

**Prerequisites:** Ruby 3.2+ and Bundler. On Ubuntu:
```bash
sudo apt-get install -y ruby-full build-essential zlib1g-dev
gem install bundler --user-install
```

**Run the site:**
```bash
bundle install                              # first time only
bundle exec jekyll serve --baseurl ""       # visit http://localhost:4000
```

The `--baseurl ""` flag overrides the GitHub Pages URL for local preview. The server auto-reloads on every file save.

---

## Deploying to GitHub Pages

1. Create a repository on GitHub (public, no README)
2. Update `_config.yml` — set your `url` and `baseurl`:
   ```yaml
   url:     "https://YOUR_USERNAME.github.io"
   baseurl: "/YOUR_REPO_NAME"   # use "" for username.github.io repos
   ```
3. Push:
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
   git push -u origin main
   ```
4. In GitHub: **Settings → Pages → Source → GitHub Actions**

The included `.github/workflows/deploy.yml` builds and deploys automatically on every push to `main`. Site goes live in ~90 seconds.

---

## Updating Content

All content lives in `_data/`. You never need to touch HTML to update the site.

| What you want to update | File to edit |
|---|---|
| Add / edit a publication | `_data/publications.yml` |
| Add / edit a team member | `_data/team.yml` |
| Add a news item | `_data/news.yml` |
| Add / edit a research project | `_data/projects.yml` |
| Change UI text (EN or ZH) | `_data/strings.yml` |
| Change lab name, email, stats | `_config.yml` |

See [`docs/CONTENT-GUIDE.md`](docs/CONTENT-GUIDE.md) for step-by-step instructions.

---

## Project Structure

```
.
├── _config.yml                 ← site identity, lab metadata, stats
├── Gemfile                     ← Ruby dependencies (github-pages gem)
├── index.md                    ← EN homepage (hero + research sections)
├── zh/index.md                 ← ZH homepage (中文)
│
├── pages/                      ← EN section pages
│   ├── team.md
│   ├── publications.md
│   ├── projects.md
│   ├── news.md
│   └── contact.md
│
├── pages/zh/                   ← ZH section pages (中文)
│   ├── team.md
│   ├── publications.md
│   ├── projects.md
│   ├── news.md
│   └── contact.md
│
├── _data/                      ← ALL editable content lives here
│   ├── publications.yml
│   ├── team.yml
│   ├── projects.yml
│   ├── news.yml
│   └── strings.yml             ← UI text for EN and ZH
│
├── _layouts/
│   ├── default.html            ← main wrapper (nav, footer, BibTeX modal)
│   └── page.html               ← thin wrapper for section pages
│
├── _includes/
│   ├── nav.html                ← top navigation + language switcher
│   ├── footer.html             ← site footer
│   └── pub_card.html           ← reusable publication card component
│
├── _sass/
│   ├── _variables.scss         ← design tokens (colours, fonts, spacing)
│   ├── _base.scss              ← reset, nav, footer, modal, utilities
│   ├── _components.scss        ← team, publications, projects, news, contact
│   └── _home.scss              ← landing page & research section styles
│
├── assets/
│   ├── css/main.scss           ← SCSS entry point
│   ├── js/main.js              ← filters, BibTeX modal, scroll animations
│   └── images/
│       ├── team/               ← member photos (square, min 400×400px)
│       └── teasers/            ← paper figures (800×400px recommended)
│
├── .github/workflows/
│   └── deploy.yml              ← GitHub Actions deployment pipeline
│
└── docs/
    ├── ARCHITECTURE.md         ← technical architecture reference
    ├── CONTENT-GUIDE.md        ← how to update content day-to-day
    └── DEPLOYMENT.md           ← deployment and domain configuration
```

---

## Tech Stack

| Layer | Choice | Reason |
|---|---|---|
| Static site generator | Jekyll 4 (via `github-pages` gem) | Native GitHub Pages support, no CI required |
| Styling | SCSS (Jekyll built-in Sass) | No Node/npm build step |
| JavaScript | Vanilla JS | Zero dependencies, no bundler |
| Fonts | IBM Plex (Sans, Serif, Mono) | Professional, multilingual, free |
| Forms | Formspree | No server; just an `action=` attribute |
| Deployment | GitHub Actions + GitHub Pages | Free, automatic, zero maintenance |
| Languages | EN + ZH via `_data/strings.yml` | No plugin needed |

---

## Design System

The site uses a strict token-based design system defined in `_sass/_variables.scss`:

| Token | Value | Usage |
|---|---|---|
| `$accent` | `#1e3a5f` | Primary brand colour |
| `$ink` | `#0f172a` | Body text, dark backgrounds |
| `$serif` | IBM Plex Serif | Headings, abstracts, bios |
| `$sans` | IBM Plex Sans | UI, navigation, labels |
| `$max-w` | `1120px` | Maximum content width |

To rebrand: edit only `_variables.scss`. All colours propagate automatically.
