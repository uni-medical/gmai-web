# 研究组网站

[English](README.md) | **中文**

基于 **Jekyll 4** 构建、部署在 **GitHub Pages** 上的研究组静态网站。无需 Node.js、无自定义插件、无构建服务器 — 只需 push 到 `main` 分支，60 秒内网站即可上线。

## 本地预览

```
http://localhost:4000          英文首页
http://localhost:4000/zh/      中文首页
```

栏目页：`/team/` · `/publications/` · `/projects/` · `/news/` · `/contact/`  
中文版：`/zh/team/` · `/zh/publications/` · `/zh/projects/` · `/zh/news/` · `/zh/contact/`

---

## 快速开始（本地开发）

**环境要求：** Ruby 3.2+ 和 Bundler。Ubuntu 安装：
```bash
sudo apt-get install -y ruby-full build-essential zlib1g-dev
gem install bundler --user-install
```

**启动网站：**
```bash
bundle install                              # 仅首次需要
bundle exec jekyll serve --baseurl ""       # 访问 http://localhost:4000
```

`--baseurl ""` 参数用于覆盖 GitHub Pages URL，使本地预览正常工作。服务器会在文件保存时自动刷新。

---

## 部署到 GitHub Pages

1. 在 GitHub 上创建仓库（公开，不勾选 README）
2. 修改 `_config.yml` — 设置 `url` 和 `baseurl`：
   ```yaml
   url:     "https://YOUR_USERNAME.github.io"
   baseurl: "/YOUR_REPO_NAME"   # username.github.io 仓库使用 ""
   ```
3. 推送：
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
   git push -u origin main
   ```
4. 在 GitHub 中：**Settings → Pages → Source → GitHub Actions**

内置的 `.github/workflows/deploy.yml` 会在每次 push 到 `main` 时自动构建和部署，约 90 秒后上线。

---

## 更新内容

所有内容存放在 `_data/` 目录中，更新网站无需修改 HTML。

| 要更新的内容 | 编辑的文件 | 详细指南 |
|---|---|---|
| 添加/编辑团队成员 | `_data/team.yml` + 个人子页面 | [MAINTENANCE.md #1](MAINTENANCE.md#1-adding-a-team-member) |
| 添加/编辑论文 | `_data/publications.yml` | [MAINTENANCE.md #3](MAINTENANCE.md#3-adding-a-publication) |
| 添加新闻 | `_data/news.yml` | [MAINTENANCE.md #5](MAINTENANCE.md#5-adding-a-news-item) |
| 添加/编辑研究项目 | `_data/projects.yml` | [MAINTENANCE.md #4](MAINTENANCE.md#4-addingupdating-a-project) |
| 更新首页研究板块 | `index.md` + `zh/index.md` | [MAINTENANCE.md #6](MAINTENANCE.md#4-addingupdating-a-project) |
| 修改界面文字（中/英） | `_data/strings.yml` | — |
| 修改实验室名称/邮箱/统计 | `_config.yml` | — |

**完整的维护工作流请参阅 [`MAINTENANCE.md`](MAINTENANCE.md)** — 涵盖文件依赖关系、图片规范、双语检查清单和所有交叉链接要求。

另见 [`docs/CONTENT-GUIDE.md`](docs/CONTENT-GUIDE.md) 了解原始内容指南。

---

## 项目结构

```
.
├── _config.yml                 ← 网站标识、实验室元数据、统计数据
├── Gemfile                     ← Ruby 依赖（github-pages gem）
├── index.md                    ← 英文首页（Hero + 研究板块）
├── zh/index.md                 ← 中文首页
│
├── pages/                      ← 英文栏目页
│   ├── team.md
│   ├── publications.md
│   ├── projects.md
│   ├── news.md
│   └── contact.md
│
├── pages/zh/                   ← 中文栏目页
│   ├── team.md
│   ├── publications.md
│   ├── projects.md
│   ├── news.md
│   └── contact.md
│
├── _data/                      ← 所有可编辑内容都在这里
│   ├── publications.yml
│   ├── team.yml
│   ├── projects.yml
│   ├── news.yml
│   └── strings.yml             ← 中英文界面文字
│
├── _layouts/
│   ├── default.html            ← 主模板（导航栏、页脚、BibTeX 弹窗）
│   ├── page.html               ← 栏目页薄包装器
│   └── profile.html            ← 成员个人子页面布局
│
├── _includes/
│   ├── nav.html                ← 顶部导航 + 语言切换器
│   ├── footer.html             ← 页脚
│   └── pub_card.html           ← 可复用的论文卡片组件
│
├── _sass/
│   ├── _variables.scss         ← 设计令牌（颜色、字体、间距）
│   ├── _base.scss              ← 重置、导航、页脚、弹窗、工具类
│   ├── _components.scss        ← 团队、论文、项目、新闻、联系页样式
│   └── _home.scss              ← 首页和研究板块样式
│
├── assets/
│   ├── css/main.scss           ← SCSS 入口文件
│   ├── js/main.js              ← 过滤器、BibTeX 弹窗、滚动动画
│   └── images/
│       ├── team/               ← 成员照片（正方形，≥400×400px）
│       ├── teasers/            ← 论文缩略图（推荐 800×400px）
│       └── projects/           ← 项目图片（按项目 slug 分文件夹）
│
├── .github/workflows/
│   └── deploy.yml              ← GitHub Actions 部署流水线
│
├── MAINTENANCE.md              ← 内部维护指南（必读）
└── docs/
    ├── ARCHITECTURE.md         ← 技术架构参考
    ├── CONTENT-GUIDE.md        ← 日常内容更新指南
    └── DEPLOYMENT.md           ← 部署和域名配置
```

---

## 技术栈

| 层级 | 选型 | 原因 |
|---|---|---|
| 静态网站生成器 | Jekyll 4（通过 `github-pages` gem） | 原生 GitHub Pages 支持，无需 CI |
| 样式 | SCSS（Jekyll 内置 Sass 编译） | 无需 Node/npm 构建步骤 |
| JavaScript | 原生 JS | 零依赖，无需打包工具 |
| 字体 | IBM Plex（Sans、Serif、Mono） | 专业、支持多语言、免费 |
| 表单 | Formspree | 无需服务器，仅需 `action=` 属性 |
| 部署 | GitHub Actions + GitHub Pages | 免费、自动、零维护 |
| 多语言 | 英文 + 中文，通过 `_data/strings.yml` | 无需插件 |

---

## 设计系统

网站使用基于令牌的严格设计系统，定义在 `_sass/_variables.scss`：

| 令牌 | 值 | 用途 |
|---|---|---|
| `$accent` | `#1e3a5f` | 主品牌色 |
| `$ink` | `#0f172a` | 正文、深色背景 |
| `$serif` | IBM Plex Serif | 标题、摘要、简介 |
| `$sans` | IBM Plex Sans | 界面、导航、标签 |
| `$max-w` | `1120px` | 最大内容宽度 |

换品牌：只需编辑 `_variables.scss`，所有颜色自动传播。

---

## Claude Code 维护技能

本项目配套了 5 个 Claude Code Skills，支持交互式引导维护：

| 技能 | 触发方式 | 功能 |
|---|---|---|
| `gmai-member` | "添加新成员" | 成员增删改、移到过往成员 |
| `gmai-publication` | "添加新论文" | 论文元数据、缩略图、BibTeX |
| `gmai-project` | "添加新项目" | 项目列表 + Starship 子页面 + 首页联动 |
| `gmai-news` | "添加新闻" | 新闻条目（论文/获奖/新成员/活动） |
| `gmai-starship-page` | "创建项目子页面" | 详细项目展示页（含高光、图片、结论） |
