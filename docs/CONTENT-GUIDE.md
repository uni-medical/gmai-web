# Content Management Guide

How to update every part of the site without touching HTML or CSS.

All edits described here can be done directly on GitHub by navigating to the file and clicking the pencil icon. The site rebuilds and goes live in ~60 seconds after each commit.

---

## Adding a Publication

**File:** `_data/publications.yml`

Copy this template and paste it at the **top** of the file (newest first):

```yaml
- title:    "Your Paper Title"
  authors:  "Last F., Last F., Last F."   # use "Last F." format; PI surname auto-bolded
  venue:    "Conference or Journal Name"
  year:     2025
  note:     ""                             # "Oral" / "Spotlight" / "Best Paper" — leave blank if none
  abstract: >
    One-paragraph summary of the paper. Shown on the publications page.
    Can span multiple lines.
  teaser:   "assets/images/teasers/yourfile.png"   # omit line entirely if no image
  keywords: "keyword1, keyword2, keyword3"          # used by filter buttons
  links:
    paper:       "https://doi.org/..."
    code:        "https://github.com/..."
    # project:   ""     ← comment out or delete lines you don't need
    # demo:      ""
    # dataset:   ""
    # huggingface: ""
  bibtex: |
    @article{authorYEARkeyword,
      title   = {Your Paper Title},
      author  = {Last, First and Last, First},
      journal = {Journal Name},
      year    = {2025},
      doi     = {10.xxxx/xxxx}
    }
```

**Tips:**
- The PI's surname (set in `_config.yml` → `lab.pi_last`) is automatically bolded in author lists
- Any `links:` sub-field you omit will simply not appear as a button — no empty buttons
- BibTeX uses a literal block scalar (`bibtex: |`) — indent content by 4 spaces
- Add the teaser image to `assets/images/teasers/` before referencing it

**Adding keyword filter buttons** on the publications page: edit `pages/publications.md` and uncomment/add:
```html
<button class="pf" data-filter="your keyword">Label</button>
```

---

## Adding a Team Member

**File:** `_data/team.yml`

Add a block under `members:` (copy an existing one):

```yaml
  - name:     "Full Name"
    role:     "PhD Student"          # PhD Student | PhD Candidate | Postdoctoral Fellow | Research Engineer | Visiting Researcher
    focus:    "One-sentence research focus description"
    photo:    "assets/images/team/filename.jpg"   # leave "" if no photo
    initials: "FN"                   # shown as fallback avatar if no photo
    links:
      scholar: "https://scholar.google.com/citations?user=XXX"
      github:  "https://github.com/username"
      website: ""                    # leave "" to hide
```

**Photo requirements:** square JPG or PNG, minimum 400×400px. Upload to `assets/images/team/` and use the filename in the `photo:` field.

**Updating the PI:** edit the `pi:` block at the top of `team.yml`.

**Adding an alumnus:** append to the `alumni:` list:
```yaml
  - name:   "Dr. Full Name"
    period: "2020–2024"
    now:    "Current role and affiliation"
```

---

## Posting a News Item

**File:** `_data/news.yml`

Prepend a new block at the **top** of the file (newest first):

```yaml
- date:     "Month YYYY"         # e.g. "April 2025"
  category: "paper"              # award | paper | grant | join | event
  label:    "Paper"              # short label shown in the badge
  headline: "One-sentence headline shown in bold"
  body:     "One or two sentence elaboration."
```

**Category → badge colour mapping:**

| Category | Colour |
|---|---|
| `award` | Amber |
| `paper` | Blue |
| `grant` | Pink |
| `join` | Purple |
| `event` | Green |

---

## Adding a Research Project

**File:** `_data/projects.yml`

```yaml
- title:   "Project Title"
  area:    "Research Area Label"
  status:  "active"              # active | ongoing | new | completed
  funding: "Funding agency · Years"
  desc:    >
    Two to three sentence description of the project goals and approach.
```

**Status → badge colour mapping:**

| Status | Colour |
|---|---|
| `active` | Green |
| `ongoing` | Yellow |
| `new` | Blue |
| `completed` | Grey |

---

## Updating the Homepage Research Panels

The four alternating research panels on the homepage (`index.md` and `zh/index.md`) are **hardcoded in the page** rather than pulled from `projects.yml`. This allows each panel to have custom statistics, keywords, and prose tailored for the landing page.

To update a panel, edit `index.md` directly. Each panel has this structure:

```html
<div class="rs-section fade">                    <!-- add rs-flip to swap sides -->
  <div class="rs-visual vis-neural">             <!-- colour: vis-neural | vis-genomics | vis-molecular | vis-clinical -->
    <div class="rs-watermark">01</div>           <!-- large ghost number -->
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">Keyword</span>
      </div>
      <div class="rs-vis-stats">
        <div><span class="rs-vis-stat-n">48</span><span class="rs-vis-stat-l">publications</span></div>
      </div>
    </div>
  </div>
  <div class="rs-text">
    <div class="rs-area">Area Label</div>
    <div class="rs-title">Panel Heading</div>
    <div class="rs-body">Descriptive paragraph.</div>
    <div class="rs-topics">
      <span class="rs-topic">Topic tag</span>
    </div>
    <a href="/projects/" class="rs-link">Link text →</a>
  </div>
</div>
```

**Adding a 5th panel:** copy any panel block, change the watermark number, pick a visual colour, and add it after the 4th panel. To get a new colour theme, add a new `.vis-yourname` rule in `_sass/_home.scss`.

---

## Updating Hero Statistics

The stats strip at the bottom of the hero (publications, members, grants, citations) pulls from `_config.yml`:

```yaml
stats:
  publications: 48
  members:      12
  grants:       6
  citations:    "1,200+"
```

Edit these values whenever a milestone is reached. The site rebuilds on next push.

---

## Updating Lab Identity

**File:** `_config.yml` — the `lab:` block

```yaml
lab:
  name:        "Your Lab Name"
  shortname:   "YLN"              # shown in top-left nav
  pi:          "Prof. Full Name"
  pi_last:     "LastName"         # surname used to bold PI in author lists
  institution: "University Name"
  department:  "Department Name"
  address:     "Building, Room, City ZIP"
  email:       "lab@university.edu"
  github:      "https://github.com/labname"
  scholar:     "https://scholar.google.com/..."
  twitter:     "https://twitter.com/labname"   # leave "" to hide
  founded:     2016
```

All of these flow through to the nav logo, footer, contact page, hero, and SEO tags automatically.

---

## Updating UI Text

**File:** `_data/strings.yml`

All button labels, section headings, and nav items are stored here in two blocks — `en:` and `zh:`. Edit either block to change how the site reads without touching any HTML.

```yaml
en:
  nav:
    team:         "Team"           # ← change this to rename the nav item
  pubs:
    filter_all:   "All"
  ...
zh:
  nav:
    team:         "团队"
  ...
```

---

## Enabling the Contact Form

The form in `pages/contact.md` (and `pages/zh/contact.md`) uses Formspree:

1. Create a free account at [formspree.io](https://formspree.io)
2. Click **New Form** → copy the endpoint ID
3. In both contact pages, replace `YOUR_FORM_ID`:
   ```html
   <form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
   ```

Free tier: 50 submissions/month. No server setup required.

---

## Adding a Custom Domain

1. Create `CNAME` in the project root:
   ```
   yourlab.university.edu
   ```
2. Configure your DNS: add a `CNAME` record pointing to `yourusername.github.io`
3. In GitHub: **Settings → Pages → Custom domain** — enter the domain and enable **Enforce HTTPS**
4. Update `_config.yml`:
   ```yaml
   url:     "https://yourlab.university.edu"
   baseurl: ""
   ```

---

## Image Conventions

| Directory | Purpose | Size |
|---|---|---|
| `assets/images/team/` | Member photos | Square, minimum 400×400px |
| `assets/images/teasers/` | Paper overview figures | 800×400px recommended |

Both directories are tracked in git (via `.gitkeep`). Drop files in and commit. Jekyll copies them to `_site/assets/images/` during build.
