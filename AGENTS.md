# Repository Guidelines

## Project Structure & Module Organization
This repository is a bilingual Jekyll 4 site. Core configuration lives in `_config.yml`; layouts and reusable partials live in `_layouts/` and `_includes/`; styles are split across `_sass/` and compiled from `assets/css/main.scss`; client behavior is in `assets/js/main.js`. Editable content is primarily data-driven from `_data/*.yml`, with page entry points in `index.md`, `zh/index.md`, `pages/`, and `pages/zh/`. Team and project detail pages use slug-matched files such as `pages/team/junzhi-ning.md` and `pages/zh/team/junzhi-ning.md`. Images belong under `assets/images/`.

## Build, Test, and Development Commands
Run `bundle install` once to install Ruby gems. Use `bundle exec jekyll serve --baseurl ""` for local development at `http://localhost:4000`. Use `bundle exec jekyll build --baseurl ""` for a local production-style build check. Run `bash scripts/optimize-images.sh` after adding or replacing images; it resizes originals and creates `.webp` companions. GitHub Pages deployment is automated by `.github/workflows/deploy.yml` on pushes to `main`.

## Coding Style & Naming Conventions
Match the existing style: 2-space indentation in JavaScript, SCSS, YAML, and front matter alignment where already used. Keep JavaScript dependency-free and concise. Prefer lowercase, hyphenated slugs for profile and project pages (`ming-hu.md`, `medq-bench.md`), and keep bilingual counterparts in sync. Store reusable strings in `_data/strings.yml`; store structured content in `_data/team.yml`, `_data/projects.yml`, `_data/publications.yml`, and `_data/news.yml` instead of hardcoding HTML.

## Testing Guidelines
There is no dedicated unit test suite in this repo. Validation is build-based: run `bundle exec jekyll build --baseurl ""`, then manually spot-check English and Chinese routes, broken asset paths, and updated cards or profile pages. Treat YAML syntax and missing image references as release blockers.

## Commit & Pull Request Guidelines
Follow the commit style already used in history: short, imperative subjects with prefixes like `feat(team): ...`, `fix: ...`, `chore: ...`, or `content: ...`. Keep each commit focused on one content or layout change. Pull requests should summarize user-visible changes, note any mirrored EN/ZH updates, link related issues, and include screenshots for layout, navigation, or styling changes.

## Content Maintenance Notes
When adding people, projects, or news, update both the data file and any required detail page or image asset in the same change. Do not edit `_site/`; it is generated output.
