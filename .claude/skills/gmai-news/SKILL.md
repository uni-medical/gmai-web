---
name: gmai-news
description: |
  Add, update, or remove news items on the GMAI Lab Jekyll website.
  Handles _data/news.yml with bilingual support (EN/ZH) and category badges.
  Use when posting announcements about papers, awards, events, or new members.
allowed-tools: [Read, Write, Edit, Bash, Glob, Grep]
---

# GMAI Lab — News Management Skill

## When to Use

Trigger phrases:
- "Add news item" / "添加新闻"
- "Post announcement" / "发布公告"
- "Add paper acceptance news" / "添加论文录用新闻"
- "Update news" / "更新新闻"

---

## Repository Quick Reference

```
_data/news.yml                      Master news data (newest first)
pages/news.md                       EN news page
pages/zh/news.md                    ZH news page
index.md / zh/index.md              Homepage news section (bottom)
```

---

## Operation: ADD

### Step 1 — Collect Information (Interactive)

```
1. * Category?
     [paper / award / grant / join / event]

     Category badge colors (auto-applied by CSS):
     - paper  → blue badge
     - award  → gold badge
     - grant  → green badge
     - join   → purple badge
     - event  → gray badge

2.   Date?
     e.g. "April 2025" (default: current month if not specified)

3. * Category label (English)?
     e.g. "New Paper", "Award", "New Member", "Event"

4. * Category label (Chinese)?
     e.g. "新论文", "获奖", "新成员", "活动"

5. * Headline (English)?
     e.g. "SlideChat accepted at CVPR 2025"

6. * Headline (Chinese)?
     e.g. "SlideChat 被 CVPR 2025 录用"

7. * Body text (English, 1-2 sentences)?
     e.g. "Our paper on whole-slide pathology image understanding..."

8. * Body text (Chinese)?
     e.g. "我们关于全切片病理图像理解的论文..."
```

### Step 2 — Prepend to `_data/news.yml`

Add new entry **at the top** (newest first):

```yaml
- date:       "Month Year"
  category:   paper
  label:      "New Paper"
  label_zh:   "新论文"
  headline:   "English headline here"
  headline_zh: "中文标题"
  body:       "English body text, 1-2 sentences."
  body_zh:    "中文正文，1-2句话。"
```

### Step 3 — Verify

```bash
bundle exec jekyll build --baseurl ""
curl -s http://localhost:4000/news/ | grep "headline"
```

---

## Operation: UPDATE

1. Ask: "Which news item?" (headline keyword or date)
2. Find: `grep -n "headline.*{keyword}" _data/news.yml`
3. Edit the specific fields

---

## Operation: REMOVE

1. Find the entry in `_data/news.yml`
2. Remove the entire YAML block (date through body_zh)

---

## Common Templates

### Paper Acceptance
```yaml
- date:       "April 2025"
  category:   paper
  label:      "New Paper"
  label_zh:   "新论文"
  headline:   "[Paper Name] accepted at [VENUE] [YEAR]"
  headline_zh: "[论文名] 被 [会议] [年份] 录用"
  body:       "Our paper on [topic] has been accepted at [venue]. [One sentence about contribution]."
  body_zh:    "我们关于[主题]的论文已被[会议]录用。[一句话贡献描述]。"
```

### New Team Member
```yaml
- date:       "April 2025"
  category:   join
  label:      "New Member"
  label_zh:   "新成员"
  headline:   "[Name] joins GMAI Lab"
  headline_zh: "[姓名]加入 GMAI 实验室"
  body:       "[Name] from [University] joins as [role], focusing on [research area]."
  body_zh:    "来自[大学]的[姓名]以[角色]身份加入，研究方向为[方向]。"
```

### Award
```yaml
- date:       "October 2023"
  category:   award
  label:      "Award"
  label_zh:   "获奖"
  headline:   "GMAI wins [Competition Name]"
  headline_zh: "GMAI 荣获[比赛名称]冠军"
  body:       "Our team won [prize] at [competition], demonstrating [achievement]."
  body_zh:    "我们团队在[比赛]中获得[奖项]，展示了[成就]。"
```

---

## Integration with Other Skills

- **gmai-publication**: when adding a paper, can auto-create news item
- **gmai-member**: when adding a member, can suggest a "join" news item
- **gmai-project**: when a project wins an award, create "award" news

---

## Checklist Before Commit

- [ ] Entry prepended to `_data/news.yml` (top of file)
- [ ] Both EN and ZH fields provided (label, headline, body)
- [ ] Category is valid: paper / award / grant / join / event
- [ ] Date format: "Month Year" (e.g. "April 2025")
- [ ] Jekyll build passes
