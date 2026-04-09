---
layout: default
title:  "首页"
lang:   "zh"
---

<!-- ══════════════════════════════════════════════════════════════
     HERO
     ══════════════════════════════════════════════════════════════ -->
<div class="landing-hero">
  <div class="landing-hero-bg"></div>
  <div class="landing-hero-grid"></div>

  <div class="landing-hero-inner">
    <div class="lh-eyebrow">{{ site.lab.institution }} &middot; 成立于 {{ site.lab.founded }}</div>

    <h1 class="lh-title">
      以<strong>人工智能</strong><br>
      赋能<em>精准医学</em>
    </h1>

    <p class="lh-tagline">打造世界领先的医学 AI 模型、工具与多智能体系统，实现高水平、普惠的精准诊断、治疗与基础研究。</p>

    <div class="lh-cta">
      <a class="lh-btn primary" href="{{ '/zh/publications/' | relative_url }}">查看论文</a>
      <a class="lh-btn outline" href="{{ '/zh/team/'         | relative_url }}">认识团队</a>
      <a class="lh-btn outline" href="{{ '/zh/contact/'      | relative_url }}">加入实验室</a>
    </div>

    <div class="lh-affil">
      {{ site.lab.address }}
    </div>
  </div>

  <div class="lh-scroll-hint">
    <div class="scroll-bar"></div>
    向下滚动
  </div>

  <div class="lh-stats-strip">
    <div class="lh-stats-inner">
      <div class="lh-stat">
        <span class="lh-stat-n">{{ site.stats.publications }}</span>
        <div class="lh-stat-l">学术论文</div>
      </div>
      <div class="lh-stat">
        <span class="lh-stat-n">{{ site.stats.members }}</span>
        <div class="lh-stat-l">在组成员</div>
      </div>
      <div class="lh-stat">
        <span class="lh-stat-n">{{ site.stats.grants }}</span>
        <div class="lh-stat-l">资助项目</div>
      </div>
      <div class="lh-stat">
        <span class="lh-stat-n">{{ site.stats.citations }}</span>
        <div class="lh-stat-l">引用次数</div>
      </div>
    </div>
  </div>
</div>


<!-- 研究方向 1 -->
<div class="rs-section fade">
  <div class="rs-visual vis-neural">
    <img class="rs-panel-img" src="{{ '/assets/images/projects/imaging-x/overview.png' | relative_url }}" alt="Imaging-X 项目概览" loading="lazy" />
    <div class="rs-watermark">01</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">医学影像</span>
        <span class="rs-tag">数据基础设施</span>
        <span class="rs-tag">开放科学</span>
      </div>
      <div class="rs-vis-stats">
        <div><span class="rs-vis-stat-n">1,800+</span><span class="rs-vis-stat-l">已归档数据集</span></div>
        <div><span class="rs-vis-stat-n">100B+</span><span class="rs-vis-stat-l">tokens 语料</span></div>
        <div><span class="rs-vis-stat-n">3.61亿</span><span class="rs-vis-stat-l">分割掩码</span></div>
      </div>
    </div>
  </div>
  <div class="rs-text">
    <div class="rs-area">医学数据基础设施</div>
    <div class="rs-title">夯实基础：大规模医学数据平台建设</div>
    <div class="rs-body">
      我们构建了驱动世界领先医学 AI 的数据基础设施。Project Imaging-X 通过元数据驱动融合范式（MDFP），
      系统整合 1,000+ 个开放医学影像数据集，并搭建交互式发现门户。
      我们的私有语料库涵盖超 100B tokens 生物医学文本、过亿医学图像及 3.61 亿分割掩码，
      为跨模态、跨任务、跨疾病的通用基础模型训练提供坚实支撑。
    </div>
    <div class="rs-topics">
      <span class="rs-topic">Project Imaging-X</span>
      <span class="rs-topic">IMed-361M</span>
      <span class="rs-topic">GMAI-VL-5.5M</span>
      <span class="rs-topic">元数据驱动融合</span>
    </div>
    <a href="{{ '/zh/projects/imaging-x/' | relative_url }}" class="rs-link">探索 Imaging-X 项目 →</a>
  </div>
</div>

<!-- 研究方向 2 -->
<div class="rs-section rs-flip fade">
  <div class="rs-visual vis-genomics">
    <img class="rs-panel-img" src="{{ '/assets/images/projects/gmai-vl/gmai_vl0.png' | relative_url }}" alt="GMAI-VL 数据流水线与模型架构" loading="lazy" />
    <div class="rs-watermark">02</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">多模态大模型</span>
        <span class="rs-tag">医学 VQA</span>
        <span class="rs-tag">病理 AI</span>
      </div>
      <div class="rs-vis-stats">
        <div><span class="rs-vis-stat-n">550万</span><span class="rs-vis-stat-l">图文对</span></div>
        <div><span class="rs-vis-stat-n">18</span><span class="rs-vis-stat-l">临床科室</span></div>
        <div><span class="rs-vis-stat-n">38</span><span class="rs-vis-stat-l">影像模态</span></div>
      </div>
    </div>
  </div>
  <div class="rs-text">
    <div class="rs-area">医学多模态大模型</div>
    <div class="rs-title">通用医学视觉语言模型：GMAI-VL 与垂类突破</div>
    <div class="rs-body">
      我们打造世界领先的医学多模态大模型。GMAI-VL 基于涵盖 18 个临床科室的 550 万图文对训练，
      在医学 VQA 和诊断推理任务上达到并刷新 SOTA 水平。SlideChat 是首个能直接理解千兆像素
      全切片病理图像的视觉-语言助手（CVPR 2025）。GMAI-VL-R1 引入强化学习，
      在八种影像模态上平均准确率提升近 30%，超越参数量大 36 倍的基线模型。
    </div>
    <div class="rs-topics">
      <span class="rs-topic">GMAI-VL</span>
      <span class="rs-topic">GMAI-VL-5.5M</span>
      <span class="rs-topic">GMAI-VL-R1</span>
      <span class="rs-topic">GMAI-MMBench</span>
    </div>
    <a href="{{ '/zh/projects/gmai-vl/' | relative_url }}" class="rs-link">探索 GMAI-VL →</a>
  </div>
</div>

<!-- 研究方向 3 -->
<div class="rs-section fade">
  <div class="rs-visual vis-molecular">
    <img class="rs-panel-img" src="{{ '/assets/images/projects/sam-med3d/sam_med3d4.png' | relative_url }}" alt="SAM-Med3D 全三维架构" loading="lazy" />
    <div class="rs-watermark">03</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">图像分割</span>
        <span class="rs-tag">基础模型</span>
        <span class="rs-tag">三维医学影像</span>
      </div>
      <div class="rs-vis-stats">
        <div><span class="rs-vis-stat-n">14.3万</span><span class="rs-vis-stat-l">三维掩码（SA-Med3D）</span></div>
        <div><span class="rs-vis-stat-n">247</span><span class="rs-vis-stat-l">解剖类别</span></div>
        <div><span class="rs-vis-stat-n">SOTA</span><span class="rs-vis-stat-l">三维分割</span></div>
      </div>
    </div>
  </div>
  <div class="rs-text">
    <div class="rs-area">医学图像分割</div>
    <div class="rs-title">分割一切：SAM-Med2D 与 SAM-Med3D 医学通用分割</div>
    <div class="rs-body">
      我们将 Segment Anything Model 深度适配至医学领域，在 14 种影像模态、247 类解剖与病灶
      目标上实现通用可提示分割。SAM-Med2D 基于 SA-Med2D-20M 覆盖二维切片场景；SAM-Med3D
      采用全原生三维架构，在 SA-Med3D-140K（2.2 万体积、14.3 万掩码）上训练，仅需单个三维
      点提示即可实现超过 SAM 60% 的 Dice 提升，真正实现"分割一切"。
    </div>
    <div class="rs-topics">
      <span class="rs-topic">SAM-Med3D</span>
      <span class="rs-topic">SAM-Med2D</span>
      <span class="rs-topic">SA-Med3D-140K</span>
      <span class="rs-topic">交互式分割</span>
    </div>
    <a href="{{ '/zh/projects/sam-med3d/' | relative_url }}" class="rs-link">探索 SAM-Med3D →</a>
  </div>
</div>

<!-- 研究方向 4 -->
<div class="rs-section rs-flip fade">
  <div class="rs-visual vis-clinical">
    <div class="rs-watermark">04</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">多智能体系统</span>
        <span class="rs-tag">手术 AI</span>
        <span class="rs-tag">临床落地</span>
      </div>
      <div class="rs-vis-stats">
        <div><span class="rs-vis-stat-n">1,000+</span><span class="rs-vis-stat-l">集成工具</span></div>
        <div><span class="rs-vis-stat-n">DTR</span><span class="rs-vis-stat-l">诊断-治疗-研究</span></div>
      </div>
    </div>
  </div>
  <div class="rs-text">
    <div class="rs-area">临床 AI 系统</div>
    <div class="rs-title">从模型到行动：多智能体系统与自主手术机器人</div>
    <div class="rs-body">
      我们构建端到端的智能系统，将 AI 真正引入临床。DTR-MAS 是贯通"诊断-治疗-研究"
      的一体化多智能体平台，将临床与科研的常规流程转化为可追踪、可审计的多代理协作，
      集成 1,000+ 医学影像数据集与工具。我们还致力于打造世界首例妇科附件切除
      自主手术机器人，实现术前规划-术中导航-术后随访一体化自主闭环。
    </div>
    <div class="rs-topics">
      <span class="rs-topic">DTR-MAS</span>
      <span class="rs-topic">自主手术机器人</span>
      <span class="rs-topic">OphCLIP（ICCV 2025）</span>
      <span class="rs-topic">Ophora（MICCAI 2025 Oral）</span>
      <span class="rs-topic">多院试点部署</span>
    </div>
    <a href="{{ '/zh/projects/slide-chat/' | relative_url }}" class="rs-link">探索 SlideChat →</a>
  </div>
</div>


<!-- 近期论文 -->
<div class="home-pubs-section fade">
  <div class="home-pubs-inner">
    <div class="home-pubs-head">
      <div>
        <div class="home-pubs-label">学术产出</div>
        <div class="home-pubs-title">近期论文</div>
      </div>
      <a href="{{ '/zh/publications/' | relative_url }}" class="home-pubs-link">全部论文 →</a>
    </div>
    <div class="home-pub-grid">
      {% for pub in site.data.publications limit:3 %}
      <div class="home-pub-card">
        <div class="home-pub-venue">
          {{ pub.venue }} &middot; {{ pub.year }}
          {% if pub.note and pub.note != "" %}<span class="home-pub-note">{{ pub.note }}</span>{% endif %}
        </div>
        <div class="home-pub-title">{{ pub.title }}</div>
        <div class="home-pub-authors">
          {% assign parts = pub.authors | split: ", " %}
          {% for part in parts %}
            {% if part contains site.lab.pi_last %}<strong>{{ part }}</strong>{% else %}{{ part }}{% endif %}{% unless forloop.last %}, {% endunless %}
          {% endfor %}
        </div>
        <div class="home-pub-links">
          {% if pub.links.paper %}<a href="{{ pub.links.paper }}" target="_blank" rel="noopener" class="pub-btn">论文</a>{% endif %}
          {% if pub.links.code  %}<a href="{{ pub.links.code  }}" target="_blank" rel="noopener" class="pub-btn">代码</a>{% endif %}
        </div>
      </div>
      {% endfor %}
    </div>
  </div>
</div>


<!-- 最新动态 + 加入我们 -->
<div class="home-bottom fade">
  <div class="home-news-panel">
    <div class="home-news-head">
      <div class="home-news-label">动态</div>
      <div class="home-news-title">最新动态</div>
    </div>
    {% for item in site.data.news limit:4 %}
    <div class="home-news-item">
      <div class="home-news-meta">
        <span class="home-news-date">{{ item.date }}</span>
        <span class="nc-{{ item.category }} home-news-cat">{{ item.label }}</span>
      </div>
      <div class="home-news-hed">{{ item.headline }}</div>
    </div>
    {% endfor %}
    <div style="margin-top:1.5rem;">
      <a href="{{ '/zh/news/' | relative_url }}" class="section-action">全部动态 →</a>
    </div>
  </div>

  <div class="join-panel">
    <div class="join-label">招募信息</div>
    <div class="join-title">我们正在积极招募</div>
    <div class="join-desc">
      我们欢迎有志于严谨思考、乐于合作、热爱有意义科学的博士生、
      博士后和访问研究员加入团队。
    </div>
    <div class="join-btns">
      <a href="{{ '/zh/contact/' | relative_url }}" class="join-btn solid">博士申请</a>
      <a href="{{ '/zh/contact/' | relative_url }}" class="join-btn solid">博士后职位</a>
      <a href="{{ '/zh/contact/' | relative_url }}" class="join-btn ghost">联系我们 →</a>
    </div>
  </div>
</div>
