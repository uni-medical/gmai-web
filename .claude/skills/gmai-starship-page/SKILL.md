---
name: gmai-starship-page
description: |
  Create, update, or delete a "Starship" project subpage for the GMAI Lab Jekyll website
  (repo: uni-medical/gmai-web). Handles both English and Chinese versions, uploads images,
  and updates the homepage landing panel link. Use when adding a new research project page,
  modifying an existing one, or removing it. Covers the full file chain:
  pages/projects/{slug}.md · pages/zh/projects/{slug}.md · index.md · zh/index.md ·
  assets/images/projects/{slug}/.
allowed-tools: [Read, Write, Edit, Bash, Glob, Grep]
---

# GMAI Lab — Starship Project Subpage Skill

## Overview

The GMAI Lab website has **five research sections** on its homepage (`index.md` / `zh/index.md`).
Each section links to a dedicated "Starship" project subpage.
Current implementations:

| Section | Theme CSS class | Watermark | Current Starship |
|---------|-----------------|-----------|------------------|
| 1 — Medical Data Infrastructure | `vis-neural` | `01` | `/projects/imaging-x/` |
| 2 — Medical Multimodal LLMs | `vis-genomics` | `02` | `/projects/gmai-vl/` |
| 3 — Medical Image Segmentation | `vis-molecular` | `03` | `/projects/sam-med3d/` |
| 4 — Clinical AI Systems | `vis-clinical` | `04` | `/projects/slide-chat/` |
| 5 — Scalable Segmentation | `vis-stunet` | `05` | `/projects/stu-net/` |

**Additional Starship pages** (not on landing but in project listing):
- `/projects/medsegagent/` — MedSegAgent multi-agent segmentation
- `/projects/ophclip/` — OphCLIP surgical video-language model

## Cross-Linking Requirements

When creating a Starship subpage, also ensure:
1. **`_data/projects.yml`** has a matching entry with `slug`, `thumbnail`, `links`
2. **Landing page** (`index.md` + `zh/index.md`) links to the subpage (if featured)
3. **Thumbnail image** exists for the project listing page (`pages/projects.md`)
4. **`.rs-thumb`** floating thumbnail added inside the landing section's `.rs-text` div

Use the existing subpages as ground-truth templates:
- **EN template**: `pages/projects/imaging-x.md` or `pages/projects/sam-med3d.md`
- **ZH template**: `pages/zh/projects/imaging-x.md` or `pages/zh/projects/sam-med3d.md`

---

## When to Use This Skill

Trigger phrases / scenarios:
- "Add a Starship subpage for [project name]"
- "Create the GMAI-VL project page"
- "我们来做 Section 2 的 Starship 子页"
- "Update the SAM-Med3D page with new figures"
- "Remove the imaging-x starship page"
- "Change the Section 4 link to DTR-MAS"

---

## Prerequisites: Collect Before Starting

Ask the user for (or derive from context):

### Required
```
SLUG          kebab-case identifier, e.g. "gmai-vl"       → used in all file paths & URLs
SECTION       homepage section number: 1 / 2 / 3 / 4
TITLE_EN      English project title, e.g. "GMAI-VL"
TITLE_ZH      Chinese project title, e.g. "GMAI-VL"
SUBTITLE_EN   One-sentence italic subtitle (EN)
SUBTITLE_ZH   One-sentence italic subtitle (ZH)
AREA_EN       Short area label, e.g. "Medical Vision-Language Models"
AREA_ZH       Short area label, e.g. "医学多模态大模型"
INSTITUTION_EN  Lead institution + collaborators (EN)
INSTITUTION_ZH  Lead institution + collaborators (ZH)
GITHUB_URL    Full GitHub URL (or empty string if none)
ARXIV_ID      arXiv ID, e.g. "2411.14522" (or empty if none)
INTRO_EN      2–3 paragraphs of introductory text (EN)
INTRO_ZH      2–3 paragraphs of introductory text (ZH)
HIGHLIGHTS    List of 4 highlight objects (see format below)
CONCLUSION_EN Conclusion callout paragraph (EN)
CONCLUSION_ZH Conclusion callout paragraph (ZH)
CONTRIBUTIONS_EN  4 bullet points (EN)
CONTRIBUTIONS_ZH  4 bullet points (ZH)
AUTHORS_EN    Full comma-separated author list; PI "Junjun He" bold in <strong>
AUTHORS_ZH    Same list in ZH convention (usually same names)
IMAGES        List of image filenames the user will supply (placed in assets/images/projects/{SLUG}/)
```

### Highlight object format
```
{
  number:      "01"
  title_en:    "Short highlight title"
  title_zh:    "短标题"
  body_en:     "1–2 paragraph body text (EN)"
  body_zh:     "1–2 paragraph body text (ZH)"
  figure_file: "filename.png"          # image in assets/images/projects/{SLUG}/
  caption_en:  "Figure caption (EN)"
  caption_zh:  "Figure caption (ZH)"
  loading:     "eager" | "lazy"        # eager for first figure, lazy for rest
}
```

### Optional links
```
HUGGINGFACE_PAPER_URL   (e.g. https://huggingface.co/papers/2411.14522)
HUGGINGFACE_DATASET_URL (e.g. https://huggingface.co/datasets/...)
DEMO_URL                (live demo link)
LINK_BTN_TEXT_EXTRA     custom label for extra button
```

---

## Repository & Stack Quick Reference

```
Repo:   git@github.com:uni-medical/gmai-web.git
Stack:  Jekyll 4 · GitHub Pages · SCSS · No npm · No custom plugins
Local:  export GEM_HOME="$HOME/.local/share/gem/ruby/3.2.0"
        export PATH="$GEM_HOME/bin:$PATH"
        bundle exec jekyll serve --baseurl "" --port 4001
Deploy: git push origin main  →  GitHub Actions auto-deploys

WSL2 note: jekyll --watch does NOT auto-regenerate on NTFS drives.
           Must Ctrl+C and restart server after every file change.
```

### Key file map
```
index.md                              EN homepage (4 research sections)
zh/index.md                           ZH homepage (mirrors EN, Chinese text)
pages/projects/{slug}.md              EN project subpage  ← CREATE THIS
pages/zh/projects/{slug}.md           ZH project subpage  ← CREATE THIS
assets/images/projects/{slug}/        Images for the project  ← UPLOAD HERE
_data/publications.yml                Publication metadata (authors, links)
_data/team.yml                        Team member data
_config.yml                           Site-wide settings (lab.pi_last = "He")
```

---

## Operation: CREATE

### Step 1 — Create image directory

```bash
mkdir -p /path/to/gmai-web/assets/images/projects/{SLUG}
touch /path/to/gmai-web/assets/images/projects/{SLUG}/.gitkeep
```

If user has provided image files, place them in this directory.
If images are pending, use the **placeholder `<div>` pattern** (see Image Placeholders section).

### Step 2 — Write EN subpage

File: `pages/projects/{SLUG}.md`

Use the template in the **EN Page Template** section below.
Replace every `{PLACEHOLDER}` with the collected inputs.

### Step 3 — Write ZH subpage

File: `pages/zh/projects/{SLUG}.md`

Use the template in the **ZH Page Template** section below.
Same structure, Chinese text, permalink `/zh/projects/{SLUG}/`.

### Step 4 — Update EN homepage link

File: `index.md`

Find the Section corresponding to {SECTION} (use watermark number to locate):
```
<!-- grep pattern to find the right line -->
<div class="rs-watermark">{SECTION_PADDED}</div>   e.g. 02
```

Within that section's `<div class="rs-text">` block, find and replace the `rs-link`:
```html
<!-- BEFORE (generic) -->
<a href="{{ '/publications/' | relative_url }}" class="rs-link">View publications →</a>

<!-- AFTER (specific) -->
<a href="{{ '/projects/{SLUG}/' | relative_url }}" class="rs-link">Explore {TITLE_EN} →</a>
```

### Step 5 — Update ZH homepage link

File: `zh/index.md`

Same pattern as Step 4 but in the ZH file:
```html
<!-- BEFORE (generic) -->
<a href="{{ '/zh/publications/' | relative_url }}" class="rs-link">查看论文 →</a>

<!-- AFTER (specific) -->
<a href="{{ '/zh/projects/{SLUG}/' | relative_url }}" class="rs-link">探索 {TITLE_ZH} →</a>
```

### Step 6 — Verify locally

```bash
# Start server
export GEM_HOME="$HOME/.local/share/gem/ruby/3.2.0" && export PATH="$GEM_HOME/bin:$PATH"
bundle exec jekyll serve --baseurl "" --port 4001

# Check HTTP status
curl -s -o /dev/null -w "%{http_code}" http://localhost:4001/projects/{SLUG}/
curl -s -o /dev/null -w "%{http_code}" http://localhost:4001/zh/projects/{SLUG}/

# Check content
curl -s http://localhost:4001/projects/{SLUG}/ | grep -o "<h1[^>]*>[^<]*"
curl -s http://localhost:4001/ | grep "rs-link" | head -8
```

Expected: all return `200`, h1 contains the correct title, homepage links updated.

### Step 7 — Commit and push

```bash
git add pages/projects/{SLUG}.md
git add pages/zh/projects/{SLUG}.md
git add assets/images/projects/{SLUG}/
git add index.md zh/index.md
git commit -m "feat: add {TITLE_EN} Starship subpage"
git push origin main
```

GitHub Actions deploys automatically. Live at:
- `https://uni-medical.github.io/gmai-web/projects/{SLUG}/`
- `https://uni-medical.github.io/gmai-web/zh/projects/{SLUG}/`

---

## Operation: UPDATE

To update content on an existing Starship page:

1. **Read the file first**: `Read pages/projects/{SLUG}.md`
2. **Edit using Edit tool**: Use exact string matching
3. **If updating images**: Place new files in `assets/images/projects/{SLUG}/`, update `<img src>` paths
4. **Restart Jekyll** (WSL2 limitation)
5. **Commit**: `git add` changed files + `git commit -m "feat: update {SLUG} Starship content"`

To update the landing panel text (tags, stats, body text, topics):
- Edit the relevant `<div class="rs-section">` block in `index.md` and `zh/index.md`

---

## Operation: DELETE

1. Remove the subpage files:
   ```bash
   rm pages/projects/{SLUG}.md
   rm pages/zh/projects/{SLUG}.md
   rm -rf assets/images/projects/{SLUG}/
   ```

2. Revert the homepage links:
   - In `index.md`: change `rs-link` back to `{{ '/publications/' | relative_url }}` or appropriate fallback
   - In `zh/index.md`: same, revert to `{{ '/zh/publications/' | relative_url }}`

3. Commit:
   ```bash
   git add -A
   git commit -m "chore: remove {SLUG} Starship subpage"
   git push origin main
   ```

---

## EN Page Template

Copy verbatim and replace `{PLACEHOLDER}` tokens.

```markdown
---
layout:    page
title:     "{TITLE_EN}"
permalink: /projects/{SLUG}/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← Projects</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">{AREA_EN}</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  {TITLE_EN}
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  {SUBTITLE_EN}
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  {INSTITUTION_EN}
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  {IF GITHUB_URL}<a href="{GITHUB_URL}" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>{/IF}
  {IF ARXIV_ID}<a href="https://arxiv.org/abs/{ARXIV_ID}" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv Paper</a>{/IF}
  {IF HUGGINGFACE_PAPER_URL}<a href="{HUGGINGFACE_PAPER_URL}" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 HuggingFace Paper</a>{/IF}
  {IF HUGGINGFACE_DATASET_URL}<a href="{HUGGINGFACE_DATASET_URL}" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 Dataset</a>{/IF}
</div>

<!-- Hero image (first figure, loading="eager") -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/{SLUG}/{HERO_IMAGE_FILE}' | relative_url }}"
       alt="{HERO_IMAGE_ALT}"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    {HERO_CAPTION_EN}
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  {INTRO_PARAGRAPH_1_EN}
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  {INTRO_PARAGRAPH_2_EN}
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">🌟 Core Highlights</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 — {H1_TITLE_EN}
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    {H1_BODY_EN}
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/{SLUG}/{H1_FIGURE_FILE}' | relative_url }}"
       alt="{H1_FIGURE_ALT}" style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    {H1_CAPTION_EN}
  </figcaption>
</figure>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 — {H2_TITLE_EN}
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    {H2_BODY_EN}
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/{SLUG}/{H2_FIGURE_FILE}' | relative_url }}"
       alt="{H2_FIGURE_ALT}" style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    {H2_CAPTION_EN}
  </figcaption>
</figure>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 — {H3_TITLE_EN}
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    {H3_BODY_EN}
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/{SLUG}/{H3_FIGURE_FILE}' | relative_url }}"
       alt="{H3_FIGURE_ALT}" style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    {H3_CAPTION_EN}
  </figcaption>
</figure>

<!-- Highlight 04 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    04 — {H4_TITLE_EN}
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    {H4_BODY_EN}
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/{SLUG}/{H4_FIGURE_FILE}' | relative_url }}"
       alt="{H4_FIGURE_ALT}" style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    {H4_CAPTION_EN}
  </figcaption>
</figure>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    {CONCLUSION_EN}
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>{CONTRIB_1_EN}</li>
  <li>{CONTRIB_2_EN}</li>
  <li>{CONTRIB_3_EN}</li>
  <li>{CONTRIB_4_EN}</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  {AUTHORS_EN}
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  {IF GITHUB_URL}<a href="{GITHUB_URL}" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>{/IF}
  {IF ARXIV_ID}<a href="https://arxiv.org/abs/{ARXIV_ID}" target="_blank" rel="noopener" class="pub-btn">arXiv Paper</a>{/IF}
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">← Back to Projects</a>
</div>

</div>
```

---

## ZH Page Template

Same HTML structure, Chinese content, different front matter and breadcrumb.

```markdown
---
layout:    page
title:     "{TITLE_ZH} — GMAI Lab"
permalink: /zh/projects/{SLUG}/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← 项目</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">{AREA_ZH}</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  {TITLE_ZH}
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  {SUBTITLE_ZH}
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  {INSTITUTION_ZH}
</div>

<!-- Resource links (same URLs as EN, labels unchanged) -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  {IF GITHUB_URL}<a href="{GITHUB_URL}" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>{/IF}
  {IF ARXIV_ID}<a href="https://arxiv.org/abs/{ARXIV_ID}" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv 论文</a>{/IF}
  {IF HUGGINGFACE_PAPER_URL}<a href="{HUGGINGFACE_PAPER_URL}" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 HuggingFace</a>{/IF}
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/{SLUG}/{HERO_IMAGE_FILE}' | relative_url }}"
       alt="{HERO_IMAGE_ALT_ZH}"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    {HERO_CAPTION_ZH}
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  {INTRO_PARAGRAPH_1_ZH}
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  {INTRO_PARAGRAPH_2_ZH}
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">🌟 核心亮点</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 — {H1_TITLE_ZH}
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    {H1_BODY_ZH}
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/{SLUG}/{H1_FIGURE_FILE}' | relative_url }}"
       alt="{H1_FIGURE_ALT_ZH}" style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    {H1_CAPTION_ZH}
  </figcaption>
</figure>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 — {H2_TITLE_ZH}
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    {H2_BODY_ZH}
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/{SLUG}/{H2_FIGURE_FILE}' | relative_url }}"
       alt="{H2_FIGURE_ALT_ZH}" style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    {H2_CAPTION_ZH}
  </figcaption>
</figure>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 — {H3_TITLE_ZH}
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    {H3_BODY_ZH}
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/{SLUG}/{H3_FIGURE_FILE}' | relative_url }}"
       alt="{H3_FIGURE_ALT_ZH}" style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    {H3_CAPTION_ZH}
  </figcaption>
</figure>

<!-- Highlight 04 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    04 — {H4_TITLE_ZH}
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    {H4_BODY_ZH}
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/{SLUG}/{H4_FIGURE_FILE}' | relative_url }}"
       alt="{H4_FIGURE_ALT_ZH}" style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    {H4_CAPTION_ZH}
  </figcaption>
</figure>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结语</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    {CONCLUSION_ZH}
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">主要贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>{CONTRIB_1_ZH}</li>
  <li>{CONTRIB_2_ZH}</li>
  <li>{CONTRIB_3_ZH}</li>
  <li>{CONTRIB_4_ZH}</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者团队</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  {AUTHORS_ZH}
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  {IF GITHUB_URL}<a href="{GITHUB_URL}" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>{/IF}
  {IF ARXIV_ID}<a href="https://arxiv.org/abs/{ARXIV_ID}" target="_blank" rel="noopener" class="pub-btn">arXiv 论文</a>{/IF}
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">← 返回项目列表</a>
</div>

</div>
```

---

## Image Placeholders (when images not yet available)

Replace `<img ...>` with this pattern so the page looks intentional, not broken:

```html
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <!-- TODO: add assets/images/projects/{SLUG}/{FILENAME}.png -->
  <div style="height:280px;background:#f1f5f9;display:flex;align-items:center;
              justify-content:center;color:#94a3b8;font-size:.85rem;">
    [{FIGURE_LABEL} — to be added]
  </div>
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;
                     font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    {CAPTION_EN}
  </figcaption>
</figure>
```

When images arrive, replace the placeholder `<div>` with:
```html
<img src="{{ '/assets/images/projects/{SLUG}/{FILENAME}.png' | relative_url }}"
     alt="{ALT_TEXT}"
     style="width:100%;display:block;" loading="{eager|lazy}" />
```
Use `loading="eager"` for the first/hero image only. All others use `loading="lazy"`.

---

## Homepage Landing Panel Reference

The landing page uses `.rs-section` blocks. Here is the minimal diff needed to wire
a new Starship page to an existing section. Only the `.rs-link` line changes:

```html
<!-- Section 2 example, in index.md -->
<!-- BEFORE -->
<a href="{{ '/publications/' | relative_url }}" class="rs-link">View publications →</a>

<!-- AFTER -->
<a href="{{ '/projects/gmai-vl/' | relative_url }}" class="rs-link">Explore GMAI-VL →</a>
```

```html
<!-- Section 2 example, in zh/index.md -->
<!-- BEFORE -->
<a href="{{ '/zh/publications/' | relative_url }}" class="rs-link">查看论文 →</a>

<!-- AFTER -->
<a href="{{ '/zh/projects/gmai-vl/' | relative_url }}" class="rs-link">探索 GMAI-VL →</a>
```

**Do NOT touch anything else in the `.rs-section` blocks** — tags, stats, body text,
and topics are independent of the subpage and are updated separately if needed.

---

## Verification Checklist

After creating a Starship subpage, verify all of the following before committing:

```
EN subpage
[ ] curl http://localhost:4001/projects/{SLUG}/ → HTTP 200
[ ] <h1> contains correct title
[ ] All images load (no 404 in browser DevTools)
[ ] Resource link buttons present (GitHub, arXiv, etc.)
[ ] Authors section has Junjun He in <strong>
[ ] "← Back to Projects" link works

ZH subpage
[ ] curl http://localhost:4001/zh/projects/{SLUG}/ → HTTP 200
[ ] <h1> contains correct title
[ ] Content is in Chinese (not English copy-paste error)
[ ] "← 返回项目列表" link works
[ ] Breadcrumb links to /zh/projects/

Homepage integration
[ ] curl http://localhost:4001/ | grep "projects/{SLUG}" returns a match
[ ] curl http://localhost:4001/zh/ | grep "projects/{SLUG}" returns a match
[ ] Click-through on live site works (Section N → subpage)

Git
[ ] git status shows correct files staged
[ ] Commit message follows: feat: add {TITLE_EN} Starship subpage
[ ] git push origin main succeeds
[ ] GitHub Actions workflow passes (check Actions tab)
```

---

## Notes on the GMAI Lab Jekyll Architecture

- **No custom plugins**: All Liquid templates must use GitHub Pages whitelisted plugins only
- **Baseurl**: In production the site is at `/gmai-web/` (set in `_config.yml`); always use `{{ '/path/' | relative_url }}` filter, never hardcode paths
- **PI auto-bolding**: The publication card (`_includes/pub_card.html`) auto-bolds `site.lab.pi_last` ("He") in author lists. On subpages, manually wrap `<strong>Junjun He</strong>` in the authors paragraph
- **SCSS layers**: Homepage styles live in `_sass/_home.scss`; subpage interior styles in `_sass/_components.scss`. Subpages use inline styles to avoid class naming conflicts
- **Language system**: Data files (`_data/*.yml`) are shared; UI strings are in `_data/strings.yml` keyed by `en` / `zh`; page language set by `lang:` front matter
- **WSL2 limitation**: `jekyll serve --watch` does NOT detect file changes on NTFS mounts. After every file edit, restart the server manually (`Ctrl+C` → re-run command)
