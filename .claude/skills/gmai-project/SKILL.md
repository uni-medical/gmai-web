---
name: gmai-project
description: |
  Add, update, or remove research projects on the GMAI Lab Jekyll website.
  Handles _data/projects.yml, project thumbnails, Starship subpages, and
  landing page Featured Research sections. Use when adding a new project,
  updating project info, or linking a project to the homepage.
allowed-tools: [Read, Write, Edit, Bash, Glob, Grep]
---

# GMAI Lab — Project Management Skill

## When to Use

Trigger phrases:
- "Add a new project" / "添加新项目"
- "Update project X" / "更新项目"
- "Add project to landing page" / "添加到首页"
- "Create Starship subpage for X"

---

## Repository Quick Reference

```
_data/projects.yml                  Master project listing data
pages/projects.md                   EN project listing (renders thumbnails)
pages/zh/projects.md                ZH project listing
pages/projects/{slug}.md            EN Starship subpage
pages/zh/projects/{slug}.md         ZH Starship subpage
assets/images/projects/{slug}/      Project images + thumbnail
index.md                            EN landing page (hardcoded sections)
zh/index.md                         ZH landing page
_sass/_home.scss                    CSS color themes for landing sections
```

**Landing page sections:**
| # | CSS class | Color |
|---|-----------|-------|
| 01 | `vis-neural` | Navy |
| 02 | `vis-genomics` | Green |
| 03 | `vis-molecular` | Purple |
| 04 | `vis-clinical` | Amber |
| 05 | `vis-stunet` | Teal |

---

## Operation: ADD

### Step 1 — Collect Information (Interactive)

```
 1. * Project title (English)?
 2. * Project title (Chinese)?
 3. * Research area (English)?       e.g. "Medical Image Segmentation"
 4. * Research area (Chinese)?
 5. * Slug (kebab-case)?             e.g. "sam-med3d"
 6. * Description (English, 3-5 sentences)?
 7.   Description (Chinese)?         (auto-translate if skipped)
 8.   Thumbnail image file path?     Representative figure for listings
 9.   Links:
      - GitHub URL?
      - Paper URL?
      - HuggingFace URL?
      - Dataset URL?
      - Homepage URL?
10.   Create a Starship subpage? [y/n]
      → If yes: invoke gmai-starship-page skill for detailed page
11.   Add to landing page Featured Research? [y/n]
      → If yes, also collect:
      - Section number? (next available, e.g. 06)
      - CSS gradient colors? (3 hex values for dark-to-light)
      - Stats (3 items: number + label)?
      - Tags (3-4 topic keywords)?
      - Body text (English + Chinese)?
      - Panel background image filename?
      - Thumbnail for text panel?
```

### Step 2 — Create Image Directory

```bash
mkdir -p assets/images/projects/{slug}
# Copy thumbnail
cp {user_path} assets/images/projects/{slug}/{filename}
```

### Step 3 — Add to `_data/projects.yml`

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

Only include link fields that have values.

### Step 4 — (Optional) Create Starship Subpage

If user wants Starship page, invoke the `gmai-starship-page` skill with collected info.

### Step 5 — (Optional) Add Landing Page Section

If user wants to feature on homepage:

**5a.** Add CSS class in `_sass/_home.scss`:
```scss
&.vis-{slug} { background: linear-gradient(150deg, #color1 0%, #color2 40%, #color3 100%); }
```

**5b.** Add section block in `index.md` (between last section and publications strip):
```html
<div class="rs-section fade">  <!-- odd: no flip; even: add rs-flip -->
  <div class="rs-visual vis-{slug}">
    <img class="rs-panel-img" src="..." loading="lazy" />
    <div class="rs-watermark">06</div>
    <div class="rs-visual-content">
      <div class="rs-tags">...</div>
      <div class="rs-vis-stats">...</div>
    </div>
  </div>
  <div class="rs-text">
    <div class="rs-area">Area Label</div>
    <div class="rs-title">Section Title</div>
    <img class="rs-thumb" src="..." loading="lazy" />
    <div class="rs-body">Body text</div>
    <div class="rs-topics">...</div>
    <a href="{{ '/projects/{slug}/' | relative_url }}" class="rs-link">Explore →</a>
  </div>
</div>
```

**5c.** Mirror in `zh/index.md` with Chinese text.

**Layout pattern:**
- Odd sections (01, 03, 05): image LEFT, text RIGHT (no `.rs-flip`)
- Even sections (02, 04, 06): text LEFT, image RIGHT (add `.rs-flip`)

### Step 6 — Verify

```bash
bundle exec jekyll build --baseurl ""
# Check project listing
curl -s http://localhost:4000/projects/ | grep "{slug}"
# Check landing page (if added)
curl -s http://localhost:4000/ | grep "vis-{slug}"
```

---

## Operation: UPDATE

1. Ask: "Which project?" (title or slug)
2. Ask: "What to update?" [title / description / thumbnail / links / landing section]
3. Edit `_data/projects.yml` and/or Starship pages
4. If updating landing section: edit both `index.md` and `zh/index.md`

---

## Cross-Dependency Map

```
projects.yml ──► pages/projects.md (listing with thumbnail)
     │
     ├──► pages/projects/{slug}.md (Starship subpage, if exists)
     │
     └──► index.md (landing section, if featured)
            ├── _sass/_home.scss (CSS gradient class)
            ├── .rs-thumb (floating thumbnail in text panel)
            └── zh/index.md (ZH mirror)
```

---

## Checklist Before Commit

- [ ] `_data/projects.yml` entry added/updated
- [ ] Thumbnail image exists in `assets/images/projects/{slug}/`
- [ ] No empty link fields
- [ ] Both `desc` and `desc_zh` provided
- [ ] If Starship: EN + ZH subpages created
- [ ] If landing: section in both `index.md` + `zh/index.md`, CSS class in `_home.scss`
- [ ] Jekyll build passes
