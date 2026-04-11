---
name: gmai-publication
description: |
  Add or update publications on the GMAI Lab Jekyll website.
  Handles _data/publications.yml, teaser images, BibTeX, and optional news items.
  Use when adding a new paper, updating metadata, or fixing publication entries.
allowed-tools: [Read, Write, Edit, Bash, Glob, Grep]
---

# GMAI Lab — Publication Management Skill

## When to Use

Trigger phrases:
- "Add a new paper" / "添加新论文"
- "Update publication X" / "更新论文信息"
- "Fix paper metadata" / "修复论文元数据"
- "Add BibTeX for X"

---

## Repository Quick Reference

```
_data/publications.yml             Master publication data (newest first)
_includes/pub_card.html            Publication card component
assets/images/teasers/             Teaser thumbnails for papers
_data/news.yml                     Optional: news item for accepted papers
pages/publications.md              EN publications page (with filtering)
pages/zh/publications.md           ZH publications page
_config.yml                        site.lab.pi_last = "He" (auto-bold PI)
```

---

## Operation: ADD

### Step 1 — Collect Information (Interactive)

Ask the user for each field. Mark required with *.

```
 1. * Paper title (exact)?
      e.g. "SlideChat: A Large Vision-Language Assistant for Whole-Slide Pathology Image Understanding"

 2. * Author list (comma-separated, full names)?
      e.g. "Ying Chen, Guoan Wang, ..., Junjun He"
      Note: PI "Junjun He" will be auto-bolded in rendering.

 3. * Venue?
      [CVPR / ICCV / ECCV / NeurIPS / MICCAI / AAAI / IEEE JBHI / arXiv / other]

 4. * Year?
      e.g. 2025

 5.   Note? (optional)
      e.g. "Oral", "Spotlight", "Best Paper", or leave empty

 6. * Abstract (English, 3-5 sentences)?
      Summarize the key contribution, method, and results.

 7.   Abstract (Chinese)?
      If not provided, auto-translate from English.

 8.   Keywords (lowercase, comma-separated)?
      Used for client-side filtering. e.g. "computational pathology, vision-language model"

 9.   Links — provide any available:
      - arXiv / paper URL?
      - GitHub code URL?
      - HuggingFace model/paper URL?
      - Dataset URL?
      - Project page / demo URL?

10.   Teaser image file path?
      Recommended: 16:9 or 4:3, ≤300KB, PNG preferred.
      Will be placed in assets/images/teasers/

11.   BibTeX entry?
      Paste from Google Scholar. Will be stored as YAML literal block.

12.   Add a news item for this paper? [y/n]
      If yes:
      - Headline (English)? e.g. "SlideChat accepted at CVPR 2025"
      - Headline (Chinese)?
      - Body (English, 1-2 sentences)?
      - Body (Chinese)?
```

### Step 2 — Process Teaser Image

```bash
cp {user_path} assets/images/teasers/{paper_slug}.png
```

Naming: derive slug from paper name, e.g. "slidechat.png", "gmai_vl.png".

### Step 3 — Prepend to `_data/publications.yml`

Add new entry **at the top** (newest first):

```yaml
- title:    "Paper Title Here"
  authors:  "Author One, Author Two, ..., Junjun He"
  venue:    "CVPR"
  year:     2025
  note:     "Oral"
  abstract: >
    English abstract text here, 3-5 sentences.
  abstract_zh: >
    中文摘要文本。
  teaser:   "/assets/images/teasers/paper_slug.png"
  keywords: "keyword1, keyword2, keyword3"
  links:
    paper:       "https://arxiv.org/abs/XXXX.XXXXX"
    code:        "https://github.com/uni-medical/repo"
    huggingface: "https://huggingface.co/papers/XXXX.XXXXX"
    dataset:     "https://huggingface.co/datasets/..."
  bibtex: |
    @inproceedings{author2025title,
      title={Paper Title},
      author={Author One and Author Two},
      booktitle={CVPR},
      year={2025}
    }
```

**Critical rules:**
- **REMOVE empty link fields** — never leave `code: ""` or `dataset: ""`
- `note: ""` is OK (metadata field, not rendered as button)
- BibTeX uses YAML literal block `|` — indent 4 spaces
- `teaser` path must start with `/assets/images/teasers/`

### Step 4 — Optionally Add News Item

If user wants news, prepend to `_data/news.yml`:

```yaml
- date:       "Month Year"
  category:   paper
  label:      "New Paper"
  label_zh:   "新论文"
  headline:   "Paper accepted at VENUE YEAR"
  headline_zh: "论文被 VENUE YEAR 录用"
  body:       "Our paper on X has been accepted..."
  body_zh:    "我们关于X的论文已被录用..."
```

### Step 5 — Verify

```bash
bundle exec jekyll build --baseurl ""
# Check publications page renders
curl -s http://localhost:4000/publications/ | grep "Paper Title"
# Check teaser image loads
curl -s -o /dev/null -w "%{http_code}" http://localhost:4000/assets/images/teasers/{slug}.png
```

---

## Operation: UPDATE

1. Ask: "Which paper? (title or keyword)"
2. Find in publications.yml: `grep -n "title.*{keyword}" _data/publications.yml`
3. Ask: "What to update? [title / authors / venue / links / abstract / teaser / bibtex]"
4. Use Edit tool to modify specific fields
5. Verify build

---

## Rendering Details

### pub_card.html behavior:
- PI surname auto-bolded: matches `site.lab.pi_last` ("He") in author string
- Language-aware: shows `abstract_zh` on ZH pages, `abstract` on EN pages
- Links rendered as buttons: Paper, Code, HuggingFace, Dataset, Demo
- BibTeX button opens modal with copy functionality
- Teaser image: lazy-loaded, appears on left side of card

### Filtering:
- Year buttons: auto-generated from publication years
- Keyword filtering: client-side JS matches `keywords` field
- Publications sorted by array order (newest first = top of YAML)

---

## Operation: VENUE AUDIT

Periodically verify that venue/year data is correct for all publications, especially arXiv preprints that may have been accepted.

### Step 1 — Identify arXiv-only entries

```bash
grep -n 'venue:.*arXiv' _data/publications.yml
```

### Step 2 — Verify each

For each arXiv entry, search for acceptance:
- Search Google Scholar / Semantic Scholar for the paper title
- Check the arXiv page comments field (often says "Accepted at VENUE")
- Check the paper's GitHub README (often updated with venue)
- Common venues: CVPR, ICCV, ECCV, NeurIPS, MICCAI, AAAI, IEEE TNNLS, IEEE JBHI, IEEE TMI

### Step 3 — Update venue

If accepted, update `venue:` and `year:` fields. Add `note:` if applicable (e.g. "Oral", "Spotlight").

**Example:** SAM-Med3D was listed as "arXiv 2023" but was actually "IEEE TNNLS 2025" with "ECCV 2024 Workshop Oral".

---

## Operation: COMPLETENESS CHECK

Ensure all projects in `_data/projects.yml` and landing page sections have corresponding publication entries.

### Hierarchy rule:
```
publications.yml (complete set)
  ⊃ projects.yml / Featured Research (curated subset)
    ⊃ Landing page sections (top highlights)
```

### Check command:
```bash
# List all project slugs
grep "slug:" _data/projects.yml
# Cross-reference with publications
grep "title:" _data/publications.yml
```

Any project with a `links.paper` but no matching publication entry is a gap to fill.

---

## Operation: TEASER IMAGE FROM ARXIV

When user doesn't provide a teaser image, download the main figure from arXiv:

### Step 1 — Find figure URL
```bash
curl -sL "https://arxiv.org/html/{ARXIV_ID}v{VERSION}" | grep -oP 'src="[^"]*\.(png|jpg)"' | head -3
```

### Step 2 — Download and process
```bash
curl -sL -o assets/images/teasers/{slug}.png "https://arxiv.org/html/{ARXIV_ID}v{VERSION}/{FIGURE_PATH}"
```

### Step 3 — Resize and generate WebP
```python
from PIL import Image
img = Image.open("assets/images/teasers/{slug}.png")
if img.width > 520:
    ratio = 520 / img.width
    img = img.resize((520, int(img.height * ratio)), Image.LANCZOS)
    img.save("assets/images/teasers/{slug}.png", optimize=True)
img.save("assets/images/teasers/{slug}.webp", "WEBP", quality=85)
```

**Alternative:** Reuse existing project images from `assets/images/projects/{slug}/` if available.

---

## Checklist Before Commit

- [ ] Entry prepended to `_data/publications.yml` (top of file)
- [ ] No empty link fields (removed, not `""`)
- [ ] Teaser image in `assets/images/teasers/` (PNG + WebP)
- [ ] Both `abstract` and `abstract_zh` provided
- [ ] BibTeX uses `|` literal block with 4-space indent
- [ ] Venue verified (not outdated arXiv if paper was accepted)
- [ ] Completeness check: all projects have matching publications
- [ ] Optional: news item added to `_data/news.yml`
- [ ] Jekyll build passes
- [ ] EN and ZH publication pages render correctly
