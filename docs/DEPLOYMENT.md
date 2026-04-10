# Deployment Guide

Complete instructions for deploying the site to GitHub Pages and configuring a custom domain.

---

## Prerequisites

- A GitHub account
- Git installed locally
- The repository already has all files committed (run `git log` to verify)

---

## Step 1 — Create the GitHub Repository

1. Go to [github.com/new](https://github.com/new)
2. **Repository name:** choose one of:
   - `username.github.io` — site lives at `https://username.github.io` (set `baseurl: ""`)
   - `lab-website` (or any name) — site lives at `https://username.github.io/lab-website` (set `baseurl: "/lab-website"`)
3. **Visibility:** Public (required for free GitHub Pages)
4. Do **not** initialize with README, .gitignore, or license — the repo must be empty

---

## Step 2 — Configure `_config.yml`

Before pushing, set the correct URLs:

```yaml
url:     "https://YOUR_USERNAME.github.io"
baseurl: "/YOUR_REPO_NAME"   # use "" if repo is username.github.io
```

Also update all `lab:` fields (name, email, PI, institution, etc.) so the live site shows real content.

---

## Step 3 — Push to GitHub

```bash
cd /path/to/your/project

# If you haven't set a remote yet:
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git

# Push:
git push -u origin main
```

If git asks for credentials, use a [Personal Access Token](https://github.com/settings/tokens) instead of your password (GitHub removed password auth for git).

---

## Step 4 — Enable GitHub Pages

1. In your repository, go to **Settings → Pages**
2. Under **Source**, select **GitHub Actions**
3. The included `.github/workflows/deploy.yml` will trigger automatically

The first deployment takes 1–2 minutes. Subsequent pushes deploy in ~60 seconds.

**Verify:** go to `https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/` — the site should be live.

---

## Step 5 — (Optional) Custom Domain

### DNS Configuration

Add the following DNS records with your domain registrar:

**Option A — Subdomain (recommended):** `lab.university.edu`
```
Type: CNAME
Name: lab
Value: yourusername.github.io
```

**Option B — Apex domain:** `university.edu`
```
Type: A    Name: @    Value: 185.199.108.153
Type: A    Name: @    Value: 185.199.109.153
Type: A    Name: @    Value: 185.199.110.153
Type: A    Name: @    Value: 185.199.111.153
```

DNS propagation takes up to 24 hours (usually faster).

### Repository Configuration

1. Create a `CNAME` file in the project root:
   ```
   yourlab.university.edu
   ```
2. Update `_config.yml`:
   ```yaml
   url:     "https://yourlab.university.edu"
   baseurl: ""
   ```
3. In GitHub: **Settings → Pages → Custom domain** — enter the domain
4. Check **Enforce HTTPS** (available once DNS propagates)
5. Commit and push

---

## Workflow: Making Updates After Launch

The update cycle is simple:

```bash
# 1. Edit content files locally (e.g. _data/publications.yml)
# 2. Preview locally:
bundle exec jekyll serve --baseurl ""

# 3. Commit and push:
git add _data/publications.yml
git commit -m "feat: add Smith et al. 2025 to publications"
git push
# → Site updates in ~60 seconds
```

Alternatively, edit files directly on GitHub (click the pencil icon on any file) — the Actions workflow triggers automatically on every commit.

---

## Deployment Checklist

Use this before the first public launch:

**Content**
- [ ] `_config.yml` — all `lab:` fields filled with real info
- [ ] `_config.yml` — `url` and `baseurl` set correctly
- [ ] `_config.yml` — `stats:` updated with real numbers
- [ ] `_data/publications.yml` — replaced with real publications
- [ ] `_data/team.yml` — replaced with real team members
- [ ] `_data/projects.yml` — replaced with real projects
- [ ] `_data/news.yml` — replaced with real news items
- [ ] `index.md` — research panel content matches actual research directions
- [ ] `zh/index.md` — Chinese homepage content reviewed

**Assets**
- [ ] Team photos uploaded to `assets/images/team/`
- [ ] Paper teasers uploaded to `assets/images/teasers/` (optional but improves publications page)

**Forms**
- [ ] Formspree account created and `YOUR_FORM_ID` replaced in `pages/contact.md` and `pages/zh/contact.md`

**GitHub**
- [ ] Repository created and code pushed
- [ ] GitHub Pages enabled (Settings → Pages → GitHub Actions)
- [ ] First deployment verified — site loads correctly
- [ ] All 10 pages load without errors: `/`, `/team/`, `/publications/`, `/projects/`, `/news/`, `/contact/`, `/zh/`, `/zh/team/`, `/zh/publications/`, `/zh/contact/`

**Domain (if using custom domain)**
- [ ] CNAME DNS record configured
- [ ] `CNAME` file added to repository
- [ ] `_config.yml` `url` updated to custom domain
- [ ] HTTPS enforced in GitHub Pages settings

---

## Troubleshooting

### Build fails on GitHub Actions

Check the **Actions** tab in your repository. Common causes:

| Error | Fix |
|---|---|
| YAML syntax error | Validate your `_data/*.yml` with a YAML linter |
| Missing `bibtex` pipe `\|` | Ensure BibTeX fields use `bibtex: \|` literal block scalar |
| Image path not found | Check the path in `teaser:` exactly matches the file in `assets/images/teasers/` |

### Site loads but CSS/JS is broken

Usually a `baseurl` mismatch. Check that `_config.yml` `baseurl` exactly matches your repo name (including the leading `/`).

### Custom domain shows "not secure"

HTTPS certificate provisioning takes up to 24 hours after DNS propagation. If it's been longer, go to **Settings → Pages** and click **Save** again to re-trigger certificate generation.

### Local server shows wrong URLs

Always run with `--baseurl ""` for local preview:
```bash
bundle exec jekyll serve --baseurl ""
```

---

## Keeping Dependencies Updated

The `github-pages` gem is pinned to the version GitHub uses. To update:

```bash
bundle update github-pages
git add Gemfile.lock
git commit -m "chore: update github-pages gem"
git push
```

Check [pages.github.com/versions](https://pages.github.com/versions/) for the current gem versions used by GitHub Pages.
