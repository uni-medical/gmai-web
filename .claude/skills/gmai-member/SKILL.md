---
name: gmai-member
description: |
  Add, update, remove, or move team members on the GMAI Lab Jekyll website.
  Handles _data/team.yml, EN/ZH profile pages, team photos, and Past Members.
  Use when adding a new lab member, updating someone's info, or archiving a departed member.
allowed-tools: [Read, Write, Edit, Bash, Glob, Grep]
---

# GMAI Lab — Team Member Management Skill

## When to Use

Trigger phrases:
- "Add a new member" / "添加新成员"
- "Update member X" / "更新成员信息"
- "Remove member X" / "删除成员"
- "Move X to past members" / "把X移到过往成员"
- "Add photo for X" / "添加头像"

---

## Repository Quick Reference

```
_data/team.yml                     Master team data (pi, co_pis, members, alumni)
pages/team/{slug}.md               EN profile page
pages/zh/team/{slug}.md            ZH profile page
assets/images/team/                Team photos (firstname_lastname.jpg)
_layouts/profile.html              Profile page layout (reads from team.yml)
pages/team.md                      EN team listing (shows Scholar/GitHub/Website only)
pages/zh/team.md                   ZH team listing
```

### Data Structure Hierarchy

```yaml
pi:           # Single PI (Junjun He) — displayed as main card
co_pis:       # Array — displayed side-by-side with PI in .team-pis flex container
members:      # Array — displayed in .team-grid (4 per row)
alumni:       # Array — displayed in Past Members table (sorted newest-first)
```

**Profile lookup order** (`_layouts/profile.html`):
`pi.slug` → `co_pis[].slug` → `members[].slug` (alumni use member slug too)

```bash
# Local dev
export GEM_HOME="$HOME/.local/share/gem/ruby/3.2.0"
export PATH="$GEM_HOME/bin:$PATH"
bundle exec jekyll serve --baseurl "" --port 4000
# Deploy: git push origin main
```

---

## Operations

### Operation: ADD

#### Step 1 — Collect Information (Interactive)

Ask the user for each field. Mark required fields with *.

```
 1. * Full name (English)?        e.g. "Wentao Li"
 2. * Chinese name?               e.g. "李文涛"
 3. * Role?                       [Researcher / Research Intern]
 4.   If Research Intern: University/institution?
 5. * Research focus (English)?    e.g. "Computational pathology, agent systems"
 6.   Research focus (Chinese)?    (auto-translate if user skips)
 7.   Photo file path?            Full path or "none" for initials placeholder
 8.   Initials?                   2 chars, auto-derived from name if not given
 9.   Links — provide any you have:
      - Google Scholar URL?
      - GitHub URL?
      - Personal website URL?
      - OpenReview URL?
      - Semantic Scholar URL?
      - DBLP URL?
      - HuggingFace URL?
      - LinkedIn URL?
      - ResearchGate URL?
10.   Brief bio (Chinese, 1-2 sentences)?  For ZH profile page
11.   Position in list?           "after [name]" or "at end"
```

#### Step 1b — CRITICAL: Identity & Name Verification

**Same-name collision warning:** Before proceeding, verify the person's identity:
- If a Google Scholar or other link is provided, CONFIRM it belongs to the correct person
- Search the link and check: university, co-authors, research topics — do they match?
- **NEVER assume a Scholar link is correct just because the name matches** — there are many researchers with identical names (e.g. "Yirong Chen" at SCUT vs Stanford)
- If uncertain, ask the user to confirm before using any links

**Chinese name verification:**
- Double-check Chinese characters with the user — similar-sounding characters are easily confused
- Examples of past mistakes: 翊 vs 毅, 隆 vs 龙
- If the user provides a Chinese name verbally/phonetically, confirm the exact characters

#### Step 2 — Generate Slug

```
slug = lowercase(firstname-lastname)   # e.g. "wentao-li"
```

Verify slug is unique: `grep "slug.*{slug}" _data/team.yml`

#### Step 3 — Process Photo

If photo provided:
```bash
# Copy to standard location
cp {user_path} assets/images/team/{firstname}_{lastname}.{ext}

# Check dimensions — crop to square if needed
python3 -c "
from PIL import Image
img = Image.open('assets/images/team/{file}')
w, h = img.size
if w != h:
    s = min(w, h)
    left = (w - s) // 2
    top = (h - s) // 2
    img.crop((left, top, left+s, top+s)).save('assets/images/team/{file}', quality=90)
    print(f'Cropped {w}x{h} → {s}x{s}')
"
```

#### Step 4 — Add to `_data/team.yml`

Insert at specified position in `members:` array:

```yaml
  - name:     "FirstName LastName (中文名)"
    slug:     "firstname-lastname"
    role:     "Research Intern, University Name"
    role_zh:  "科研实习生，大学名称"
    focus:    "Research focus English"
    focus_zh: "研究方向中文"
    photo:    "assets/images/team/firstname_lastname.jpg"
    initials: "FL"
    links:
      scholar: ""
      github:  ""
      website: ""
```

Only include link fields that have values. Add extended links (openreview, semantic_scholar, etc.) only if provided.

**Ordering rules:**
- Researchers go before `# ── Research Interns` comment
- Research Interns go after it
- Grid is 4 per row — position affects visual layout

#### Step 5 — Create EN Profile Page

Write `pages/team/{slug}.md`:
```markdown
---
layout:      profile
title:       "FirstName LastName"
permalink:   /team/{slug}/
lang:        "en"
member_slug: "{slug}"
---
```

#### Step 6 — Create ZH Profile Page

Write `pages/zh/team/{slug}.md`:
```markdown
---
layout:      profile
title:       "中文名 — GMAI Lab"
permalink:   /zh/team/{slug}/
lang:        "zh"
member_slug: "{slug}"
---

中文名来自XX大学，是 GMAI 实验室科研实习生。研究方向包括...
```

#### Step 7 — Verify

```bash
bundle exec jekyll build --baseurl ""
curl -s -o /dev/null -w "%{http_code}" http://localhost:4000/team/{slug}/
curl -s -o /dev/null -w "%{http_code}" http://localhost:4000/zh/team/{slug}/
```

---

### Operation: UPDATE

#### Step 1 — Identify Member

Ask: "Which member? (name or slug)"

Find in team.yml: `grep -n "slug.*{input}" _data/team.yml`

#### Step 2 — Ask What to Update

```
What to update? [photo / focus / role / links / bio / all]
```

#### Step 3 — Apply Changes

Use Edit tool to modify the specific fields in `_data/team.yml`.

If updating photo: copy new file to `assets/images/team/`, crop if needed, update `photo:` field.

If updating bio: edit the ZH profile page markdown content.

---

### Operation: REMOVE

1. Remove member entry from `members:` in `_data/team.yml`
2. Ask: "Delete profile pages too? [y/n]"
   - If yes: delete `pages/team/{slug}.md` and `pages/zh/team/{slug}.md`
3. Ask: "Delete photo? [y/n]"
   - If yes: delete from `assets/images/team/`

---

### Operation: MOVE_TO_PAST

#### Step 1 — Collect Info

```
1. When did they join?              e.g. "2024.06"
2. When did they leave?             e.g. "2025.12"
3. Current position/affiliation?    e.g. "PhD Student, The Hong Kong Polytechnic University"
4. Research focus (short)?          e.g. "AI for Science, Proteomics"
```

**Period format rules:**
- Use `YYYY.MM` format (e.g. "2024.06"), NOT "2024.01" unless truly January
- Verify dates with user — don't guess start dates
- Past mistake: "2024.01 – 2025.12" was incorrect, actual was "2025.06 – 2025.12"

#### Step 2 — Execute

1. Remove from `members:` array in `_data/team.yml`
2. Add to `alumni:` section with correct schema:
```yaml
alumni:
  - name:     "Name (中文名)"
    slug:     "firstname-lastname"
    period:   "2024.06 – 2025.12"
    position: "PhD Student, University Name"
    focus:    "Research focus keywords"
```

**Critical: Alumni sorting** — alumni must be sorted by **end date, newest first**.
Insert the new entry at the correct position (not just appended to the end).

3. Profile pages are kept (still accessible via direct URL)
4. The Past Members table in `pages/team.md` / `pages/zh/team.md` auto-renders from alumni data
5. Name display uses `{{ a.name | replace: " (", "<br>(" }}` for EN/CN line break

### Operation: ADD CO-PI

For leadership-level members displayed alongside the main PI:

1. Add to `co_pis:` array in `_data/team.yml` (between `pi:` and `members:`)
2. Same field structure as `pi:` (name, slug, role, title, bio, photo, links)
3. Displayed side-by-side with PI in `.team-pis` flex container
4. Profile lookup in `_layouts/profile.html` checks `co_pis` after `pi`
5. Create profile pages same as regular members

---

### Operation: FILL PROFILE CONTENT

Fill rich Markdown content for a member's profile subpage. Profile pages support `{{ content }}` rendering — anything written below the front matter in `pages/team/{slug}.md` becomes the profile body.

#### When to Use

Trigger phrases:
- "Fill profile for X" / "写X的简介"
- "Add bio content for X" / "填充X的个人页面"
- After creating a member's profile pages (ADD operation Steps 5-6)

#### Step 1 — Collect Information (Interactive)

Ask the user for or derive from context:

```
 1. * Current position + institution?        e.g. "PhD Student, Monash University"
 2.   Supervisor(s)?                         e.g. "Prof. Jianfei Cai"
 3.   Previous positions (chronological)?    e.g. "Senior R&D Engineer at Baidu → Researcher at Shanghai AI Lab"
 4.   Role in GMAI team?                     e.g. "Core member, principal architect of SA-Med2D-20M"
 5. * Top 3-5 research areas?                With key project names
 6. * Selected publications (4-8 items)?     Title, venue, year, author role, one-line description
 7. * Career path summary?                   For Career Trajectory section
 8.   Brief bio in Chinese?                  Auto-translate from EN if not provided
```

#### Step 2 — Determine Template

**Regular Members** use the **4-section template**:

| Section (EN) | Section (ZH) | Content |
|--------------|--------------|---------|
| `## About` | `## 关于` | 1-2 paragraphs: position, institution, supervisor, previous roles, GMAI contribution |
| `## Research Interests` | `## 研究方向` | Bullet list of 3-5 areas with key project names in bold |
| `## Selected Publications` | `## 代表性论文` | Bullet list: **Paper** (Venue Year) — *Role*. One-line description |
| `## Career Trajectory` | `## 职业轨迹` | Single line with arrow notation: **Place A** (Role) → **Place B** (Role) → ... |

**PI / Co-PI** use the **6-section template**:

| Section (EN) | Section (ZH) | Content |
|--------------|--------------|---------|
| `## About Me` | `## 关于我` | Background, education, leadership position |
| `## Research Interests` | `## 研究方向` | Bullet list of research areas |
| `## Highlights` | `## 代表性成果` | Detailed paragraphs on group achievements |
| `## Academic Overview` | `## 学术成果概览` | High-level achievements summary |
| `## Selected Early Works` | `## 早期代表性工作` | Earlier career publications |
| `## Professional Service` | `## 学术服务` | Reviewer roles, committee memberships |

#### Step 3 — Write EN Profile Content

Edit `pages/team/{slug}.md` — append Markdown below the front matter `---`:

**Example (Regular Member — Jin Ye):**
```markdown
---
layout:      profile
title:       "Jin Ye"
permalink:   /team/jin-ye/
lang:        "en"
member_slug: "jin-ye"
---

## About

Jin Ye is a PhD student at **Monash University**... Before starting his PhD,
he was a full-time researcher at **Shanghai AI Laboratory**...

## Research Interests

- **Large-scale medical segmentation datasets**: SA-Med2D-20M (4.6M images / 19.7M masks)
- **SAM adaptation for medicine**: SAM-Med2D, SAM-Med3D, SAM-Med3D-MoE
- ...

## Selected Publications

- **SA-Med2D-20M** (arXiv 2023) — *First Author*. The largest 2D medical segmentation dataset...
- **SAM-Med3D** (ECCV 2024 Workshop Oral; IEEE TNNLS 2025) — Extension of SAM to 3D...
- ...

## Career Trajectory

**Baidu** (Senior R&D Engineer) → **Shanghai AI Laboratory** (Researcher, GMAI Team) → **Monash University** (PhD Student)
```

#### Step 4 — Write ZH Profile Content

Edit `pages/zh/team/{slug}.md` — same structure with Chinese text:

```markdown
---
layout:      profile
title:       "叶锦 — GMAI Lab"
permalink:   /zh/team/jin-ye/
lang:        "zh"
member_slug: "jin-ye"
---

## 关于

叶锦目前是**蒙纳士大学**...博士研究生...

## 研究方向

- **大规模医学分割数据集**：SA-Med2D-20M（460万张图像 / 1970万个标注掩码）
- ...

## 代表性论文

- **SA-Med2D-20M**（arXiv 2023）— *第一作者*。当时最大的2D医学分割数据集...
- ...

## 职业轨迹

**百度**（高级研发工程师）→ **上海人工智能实验室**（研究员，GMAI 团队）→ **蒙纳士大学**（博士研究生）
```

#### Content Guidelines

- **Length hierarchy**: Regular member content MUST be shorter than PI's. PI gets Highlights + Academic Overview + Early Works; members do not.
- **About**: 1-2 paragraphs. Bold institution names. Mention GMAI role/contribution.
- **Research Interests**: 3-5 bullet points. Bold the area label, include key project names in parentheses.
- **Selected Publications**: 4-8 items. Format: `**Paper Name** (Venue Year) — *Role*. One-line description.` Include GitHub stars if notable.
- **Career Trajectory**: Single line with bold institution names and arrow `→` separators. End with a brief summary phrase after `—`.
- **Always fill both EN and ZH pages**. If user doesn't provide Chinese text, auto-translate.
- Use `**bold**` for institution names and project names.
- Use `*italic*` for roles like "First Author", "2nd Author".

#### Reference Implementations

- **PI template**: `pages/team/junjun-he.md` (EN), `pages/zh/team/junjun-he.md` (ZH)
- **Regular member template**: `pages/team/jin-ye.md` (EN), `pages/zh/team/jin-ye.md` (ZH)

---

## Data Schema Reference

### Team listing page shows (3 links only):
- `scholar` → "Scholar"
- `github` → "GitHub"
- `website` → "Website" / "主页"

### Profile page shows ALL links:
- `scholar`, `github`, `website`
- `openreview`, `semantic_scholar`, `dblp`
- `huggingface`, `linkedin`, `researchgate`
- `email`, `cv`, `twitter`

### Photo requirements:
- Location: `assets/images/team/{firstname}_{lastname}.{jpg|png}`
- Recommended: square crop, ≤500KB
- If no photo: set `photo: ""` and provide `initials: "XX"`
- CSS renders as 96px circle with `object-fit: cover`

---

## Checklist Before Commit

- [ ] `_data/team.yml` entry added/updated
- [ ] EN profile page exists: `pages/team/{slug}.md`
- [ ] ZH profile page exists: `pages/zh/team/{slug}.md`
- [ ] Profile content filled (if not empty placeholder): About, Research Interests, Selected Publications, Career Trajectory
- [ ] Both EN and ZH profile content provided (auto-translate ZH if needed)
- [ ] Member content is shorter than PI content
- [ ] Photo copied and cropped (if provided)
- [ ] Links: only non-empty fields included
- [ ] Jekyll build passes
- [ ] Both EN and ZH team pages render correctly
