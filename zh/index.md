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

    <div class="lh-social">
      {% if site.lab.github %}<a href="{{ site.lab.github }}" target="_blank" rel="noopener" title="GitHub" class="lh-social-link">
        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385.6.105.825-.255.825-.57 0-.285-.015-1.23-.015-2.235-3.015.555-3.795-.735-4.035-1.41-.135-.345-.72-1.41-1.23-1.695-.42-.225-1.02-.78-.015-.795.945-.015 1.62.87 1.845 1.23 1.08 1.815 2.805 1.305 3.495.99.105-.78.42-1.305.765-1.605-2.67-.3-5.46-1.335-5.46-5.925 0-1.305.465-2.385 1.23-3.225-.12-.3-.54-1.53.12-3.18 0 0 1.005-.315 3.3 1.23.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23.66 1.65.24 2.88.12 3.18.765.84 1.23 1.905 1.23 3.225 0 4.605-2.805 5.625-5.475 5.925.435.375.81 1.095.81 2.22 0 1.605-.015 2.895-.015 3.3 0 .315.225.69.825.57A12.02 12.02 0 0024 12c0-6.63-5.37-12-12-12z"/></svg>
        <span>GitHub</span>
      </a>{% endif %}
      {% if site.lab.huggingface %}<a href="{{ site.lab.huggingface }}" target="_blank" rel="noopener" title="Hugging Face" class="lh-social-link">
        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 2C6.477 2 2 6.477 2 12s4.477 10 10 10 10-4.477 10-10S17.523 2 12 2zm-1.5 5.5a1.25 1.25 0 110 2.5 1.25 1.25 0 010-2.5zm3 0a1.25 1.25 0 110 2.5 1.25 1.25 0 010-2.5zM8.5 13c0-1 1.5-1.5 3.5-1.5s3.5.5 3.5 1.5c0 1.5-1.5 3-3.5 3S8.5 14.5 8.5 13z"/></svg>
        <span>Hugging Face</span>
      </a>{% endif %}
      {% if site.lab.linkedin %}<a href="{{ site.lab.linkedin }}" target="_blank" rel="noopener" title="LinkedIn" class="lh-social-link">
        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433a2.062 2.062 0 01-2.063-2.065 2.064 2.064 0 112.063 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/></svg>
        <span>LinkedIn</span>
      </a>{% endif %}
      {% if site.lab.xiaohongshu %}<a href="{{ site.lab.xiaohongshu }}" target="_blank" rel="noopener" title="小红书" class="lh-social-link">
        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1.8 14.5H10l-.3 1.5H8.2l.3-1.5H6.5l.3-1.3h2l.5-2.4H7.2l.3-1.3h2.1l.3-1.5h1.5l-.3 1.5h1.8l.3-1.5h1.5l-.3 1.5h2l-.3 1.3h-2l-.5 2.4h2.1l-.3 1.3zm-1.2-1.3l.5-2.4h-1.8l-.5 2.4h1.8z"/></svg>
        <span>小红书</span>
      </a>{% endif %}
      {% if site.lab.zhihu %}<a href="{{ site.lab.zhihu }}" target="_blank" rel="noopener" title="知乎" class="lh-social-link">
        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M5.721 0C2.251 0 0 2.25 0 5.719V18.28C0 21.751 2.252 24 5.721 24h12.56C21.751 24 24 21.75 24 18.281V5.72C24 2.249 21.75 0 18.281 0zm1.964 4.078h6.151c.048.108.09.223.127.344l.063.215h2.156l-.063.344c-.14.763-.477 1.97-.477 1.97h-1.57s.298-1.03.378-1.402H9.58l-.29 1.402H7.655l.3-1.402H5.906l.102-.344s.337-1.207.477-1.97l.064-.344h2.156l-.063-.215a3.18 3.18 0 00-.127-.344zm6.34 3.797h5.344l-.234.797s-.797 2.734-1.164 3.89c-.578 1.828-1.758 3.22-3.281 4.142-.672.406-2.578 1.29-2.578 1.29l-.484-.75s1.812-.89 2.437-1.313c1.375-.93 2.227-2.133 2.688-3.64.25-.82.86-3.218.86-3.218H13.89l-.078.281c-.234.86-.516 1.703-.813 2.484l-.125.328h1.86v.797H12.39l-.297.672c-.11.25-.219.484-.344.703h2.969v.797H11.25c-.563.703-1.282 1.266-2.016 1.734l-.547-.61c.626-.39 1.22-.874 1.64-1.437l.095-.14H7.593v-.797h3.297c.188-.32.36-.672.516-1.047l.094-.328H8.812v-.797h3.016c.297-.766.562-1.578.797-2.406l.078-.281h-2.89v-.797h6.21z"/></svg>
        <span>知乎</span>
      </a>{% endif %}
      {% if site.lab.scholar %}<a href="{{ site.lab.scholar }}" target="_blank" rel="noopener" title="Google Scholar" class="lh-social-link">
        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M5.242 13.769L0 9.5 12 0l12 9.5-5.242 4.269C17.548 11.249 14.978 9.5 12 9.5c-2.977 0-5.548 1.748-6.758 4.269zM12 10a7 7 0 107 7 7 7 0 00-7-7z"/></svg>
        <span>Scholar</span>
      </a>{% endif %}
    </div>

    <div class="lh-affil">
      {{ site.lab.institution }}
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
        <span class="lh-stat-n">{{ site.stats.citations }}</span>
        <div class="lh-stat-l">引用次数</div>
      </div>
    </div>
  </div>
</div>


<!-- 研究方向 1 -->
<div class="rs-section fade">
  <div class="rs-visual vis-neural">
    {% include picture.html src="/assets/images/projects/imaging-x/overview.png" alt="Imaging-X 项目概览" class="rs-panel-img" loading="lazy" %}
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
    {% include picture.html src="/assets/images/projects/imaging-x/overview.png" alt="Imaging-X 概览" class="rs-thumb" loading="lazy" %}
    <div class="rs-body">
      我们构建了驱动世界领先医学 AI 的数据基础设施。Project Imaging-X 通过元数据驱动融合范式（MDFP），
      系统整合 1,000+ 个开放医学影像数据集，并搭建交互式发现门户。
      我们的私有语料库涵盖超 100B tokens 生物医学文本、过亿医学图像及 3.61 亿分割掩码，
      为跨模态、跨任务、跨疾病的通用基础模型训练提供坚实支撑。
    </div>
    <div class="rs-topics">
      <span class="rs-topic">Project Imaging-X</span>
      <span class="rs-topic">元数据驱动融合</span>
    </div>
    <a href="{{ '/zh/projects/imaging-x/' | relative_url }}" class="rs-link">探索 Imaging-X 项目 →</a>
  </div>
</div>

<!-- 研究方向 2 -->
<div class="rs-section rs-flip fade">
  <div class="rs-visual vis-genomics">
    {% include picture.html src="/assets/images/projects/gmai-vl/gmai_vl0.png" alt="GMAI-VL 数据流水线与模型架构" class="rs-panel-img" loading="lazy" %}
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
    {% include picture.html src="/assets/images/projects/gmai-vl/gmai_vl1.png" alt="GMAI-VL 架构" class="rs-thumb" loading="lazy" %}
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
    {% include picture.html src="/assets/images/projects/sam-med3d/sam_med3d4.png" alt="SAM-Med3D 全三维架构" class="rs-panel-img" loading="lazy" %}
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
    {% include picture.html src="/assets/images/projects/sam-med3d/sam_med3d1.png" alt="SAM-Med3D 可视化" class="rs-thumb" loading="lazy" %}
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
    {% include picture.html src="/assets/images/projects/slide-chat/SlideChat2.png" alt="SlideChat 架构 — WSI 理解流程" class="rs-panel-img" loading="lazy" %}
    <div class="rs-watermark">04</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">计算病理学</span>
        <span class="rs-tag">视觉语言模型</span>
        <span class="rs-tag">CVPR 2025</span>
      </div>
      <div class="rs-vis-stats">
        <div><span class="rs-vis-stat-n">81.17%</span><span class="rs-vis-stat-l">VQA 准确率（TCGA）</span></div>
        <div><span class="rs-vis-stat-n">18/22</span><span class="rs-vis-stat-l">最优评测任务数</span></div>
        <div><span class="rs-vis-stat-n">176K</span><span class="rs-vis-stat-l">VQA 训练样本</span></div>
      </div>
    </div>
  </div>
  <div class="rs-text">
    <div class="rs-area">临床 AI 系统</div>
    <div class="rs-title">全切片病理智能：SlideChat 与临床 AI 的未来</div>
    {% include picture.html src="/assets/images/projects/slide-chat/SlideChat3.png" alt="SlideChat 界面" class="rs-thumb" loading="lazy" %}
    <div class="rs-body">
      SlideChat 是首个能够理解 Gigapixel 全切片病理图像的视觉语言助手。在 SlideInstruction
      （4.2K WSI 描述 + 176K 视觉问答对）上训练，在 SlideBench 22 个任务中 18 个达到最优，
      SlideBench-VQA（TCGA）准确率 81.17%，超越第二名 13.47 个百分点。论文已被 CVPR 2025 接收。
    </div>
    <div class="rs-topics">
      <span class="rs-topic">SlideChat（CVPR 2025）</span>
      <span class="rs-topic">SlideInstruction</span>
      <span class="rs-topic">SlideBench</span>
      <span class="rs-topic">全切片图像理解</span>
    </div>
    <a href="{{ '/zh/projects/slide-chat/' | relative_url }}" class="rs-link">探索 SlideChat →</a>
  </div>
</div>


<!-- 研究方向 5 — 可扩展医学图像分割 -->
<div class="rs-section fade">
  <div class="rs-visual vis-stunet">
    {% include picture.html src="/assets/images/projects/stu-net/stu_net7.png" alt="STU-Net CT 分割定性结果" class="rs-panel-img" loading="lazy" %}
    <div class="rs-watermark">05</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">医学图像分割</span>
        <span class="rs-tag">可扩展模型</span>
        <span class="rs-tag">MICCAI 2023</span>
      </div>
      <div class="rs-vis-stats">
        <div><span class="rs-vis-stat-n">14亿</span><span class="rs-vis-stat-l">参数（STU-Net-H）</span></div>
        <div><span class="rs-vis-stat-n">90.06%</span><span class="rs-vis-stat-l">平均 DSC</span></div>
        <div><span class="rs-vis-stat-n">104</span><span class="rs-vis-stat-l">解剖类别</span></div>
      </div>
    </div>
  </div>

  <div class="rs-text">
    <div class="rs-area">医学图像分割</div>
    <div class="rs-title">医学影像中的规模扩展定律：STU-Net 从 1400 万到 14 亿参数</div>
    {% include picture.html src="/assets/images/projects/stu-net/stu_net7.png" alt="STU-Net 分割结果" class="rs-thumb" loading="lazy" %}
    <div class="rs-body">
      STU-Net 在三维医学图像分割领域验证了规模扩展定律。S（1400万）、B（5800万）、
      L（4.4亿）、H（14亿）四档模型均基于 TotalSegmentator（1,204 个 CT 体积、104 个
      解剖类别）预训练。STU-Net-H 以 90.06% 平均 DSC 刷新基准纪录，超越 nnU-Net 3.3
      个百分点及所有 Transformer 方法。最关键的发现：14 亿参数的单一通用模型性能超越
      五个专科模型集成——迈出了迈向医学分割基础模型的决定性一步。
    </div>
    <div class="rs-topics">
      <span class="rs-topic">STU-Net-H（14亿）</span>
      <span class="rs-topic">TotalSegmentator</span>
      <span class="rs-topic">MICCAI 2023 冠军</span>
      <span class="rs-topic">迁移学习</span>
    </div>
    <a href="{{ '/zh/projects/stu-net/' | relative_url }}" class="rs-link">探索 STU-Net →</a>
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
    <div class="join-label">加入我们</div>
    <div class="join-title">共建通用医学智能</div>
    <div class="join-desc">
      我们是上海人工智能实验室的研究团队，致力于实现通用医学智能（General Medical
      Intelligence）——能够理解、推理并服务于全谱系临床与生物医学任务的 AI。我们与全球顶尖高校和
      医院深度合作。如果你认同这一愿景，我们有开放岗位，欢迎联系。
    </div>
    <div class="join-btns">
      <a href="{{ '/zh/contact/' | relative_url }}" class="join-btn solid">开放岗位</a>
    </div>
  </div>
</div>
