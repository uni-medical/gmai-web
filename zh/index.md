---
layout: default
title:  "首页"
lang:   "zh"
---

<!-- ══════════════════════════════════════════════════════════════
     HERO
     ══════════════════════════════════════════════════════════════ -->
<div class="landing-hero">
  <div class="landing-hero-grid"></div>

  <div class="landing-hero-inner">
    <div class="lh-eyebrow">{{ site.lab.institution }} &middot; 成立于 {{ site.lab.founded }}</div>

    <h1 class="lh-title">
      在<strong>计算前沿</strong><br>
      推动<em>严谨科学</em>
    </h1>

    <p class="lh-tagline">我们在机器学习与计算生物学的交汇处，开发有原则的计算方法。</p>

    <div class="lh-cta">
      <a class="lh-btn primary" href="{{ '/zh/publications/' | relative_url }}">查看论文</a>
      <a class="lh-btn outline" href="{{ '/zh/team/'         | relative_url }}">认识团队</a>
      <a class="lh-btn outline" href="{{ '/zh/contact/'      | relative_url }}">加入实验室</a>
    </div>

    <div class="lh-affil">
      {{ site.lab.department }} &middot; {{ site.lab.address }}
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
    <div class="rs-watermark">01</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">神经科学</span>
        <span class="rs-tag">机器学习</span>
        <span class="rs-tag">脑机接口</span>
      </div>
      <div class="rs-vis-stats">
        <div><span class="rs-vis-stat-n">5</span><span class="rs-vis-stat-l">实验对象</span></div>
        <div><span class="rs-vis-stat-n">&lt;20ms</span><span class="rs-vis-stat-l">解码延迟</span></div>
      </div>
    </div>
  </div>
  <div class="rs-text">
    <div class="rs-area">神经科学 × 机器学习</div>
    <div class="rs-title">基于 Transformer 的实时神经解码</div>
    <div class="rs-body">
      我们将注意力机制架构应用于高密度神经信号记录的运动意图实时解码，
      在五只非人灵长类动物上实现了低于 20 毫秒延迟的最先进精度，
      为脑机接口系统提供了有原则的计算方案。
    </div>
    <div class="rs-topics">
      <span class="rs-topic">注意力机制</span>
      <span class="rs-topic">运动皮层解码</span>
      <span class="rs-topic">实时推断</span>
      <span class="rs-topic">脑机接口</span>
      <span class="rs-topic">NIH R01 · 2022–2027</span>
    </div>
    <a href="{{ '/zh/projects/' | relative_url }}" class="rs-link">了解此项目 →</a>
  </div>
</div>

<!-- 研究方向 2 -->
<div class="rs-section rs-flip fade">
  <div class="rs-visual vis-genomics">
    <div class="rs-watermark">02</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">基因组学</span>
        <span class="rs-tag">生成模型</span>
        <span class="rs-tag">表观遗传</span>
      </div>
      <div class="rs-vis-stats">
        <div><span class="rs-vis-stat-n">40+</span><span class="rs-vis-stat-l">组织类型</span></div>
        <div><span class="rs-vis-stat-n">VAE</span><span class="rs-vis-stat-l">框架</span></div>
      </div>
    </div>
  </div>
  <div class="rs-text">
    <div class="rs-area">计算基因组学</div>
    <div class="rs-title">表观遗传景观的生成建模</div>
    <div class="rs-body">
      我们的深度生成模型学习染色质可及性的调控语法，支持跨细胞类型和疾病状态的
      计算机体外扰动实验。通过因果解耦，我们发现了 40 余种组织类型中
      细胞类型特异性调控元件。
    </div>
    <div class="rs-topics">
      <span class="rs-topic">变分自编码器</span>
      <span class="rs-topic">染色质可及性</span>
      <span class="rs-topic">因果解耦</span>
      <span class="rs-topic">单细胞 ATAC-seq</span>
      <span class="rs-topic">NSF CAREER · 2023–2028</span>
    </div>
    <a href="{{ '/zh/projects/' | relative_url }}" class="rs-link">了解此项目 →</a>
  </div>
</div>

<!-- 研究方向 3 -->
<div class="rs-section fade">
  <div class="rs-visual vis-molecular">
    <div class="rs-watermark">03</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">结构生物学</span>
        <span class="rs-tag">图神经网络</span>
        <span class="rs-tag">药物发现</span>
      </div>
      <div class="rs-vis-stats">
        <div><span class="rs-vis-stat-n">SE(3)</span><span class="rs-vis-stat-l">等变网络</span></div>
        <div><span class="rs-vis-stat-n">GNN</span><span class="rs-vis-stat-l">架构</span></div>
      </div>
    </div>
  </div>
  <div class="rs-text">
    <div class="rs-area">结构生物学</div>
    <div class="rs-title">分子相互作用网络学习</div>
    <div class="rs-body">
      我们在蛋白质相互作用网络上开发几何深度学习模型，预测药物靶点、脱靶效应
      及耐药机制。SE(3) 等变消息传递架构利用三维分子几何，
      在分布外化合物系列上显著提升泛化能力。
    </div>
    <div class="rs-topics">
      <span class="rs-topic">等变网络</span>
      <span class="rs-topic">蛋白质–配体结合</span>
      <span class="rs-topic">三维分子几何</span>
      <span class="rs-topic">NeurIPS Spotlight 2024</span>
    </div>
    <a href="{{ '/zh/publications/' | relative_url }}" class="rs-link">阅读论文 →</a>
  </div>
</div>

<!-- 研究方向 4 -->
<div class="rs-section rs-flip fade">
  <div class="rs-visual vis-clinical">
    <div class="rs-watermark">04</div>
    <div class="rs-visual-content">
      <div class="rs-tags">
        <span class="rs-tag">临床 AI</span>
        <span class="rs-tag">多模态</span>
        <span class="rs-tag">不确定性量化</span>
      </div>
      <div class="rs-vis-stats">
        <div><span class="rs-vis-stat-n">3×</span><span class="rs-vis-stat-l">数据模态</span></div>
        <div><span class="rs-vis-stat-n">UQ</span><span class="rs-vis-stat-l">覆盖保证</span></div>
      </div>
    </div>
  </div>
  <div class="rs-text">
    <div class="rs-area">临床 AI</div>
    <div class="rs-title">多模态诊断决策支持系统</div>
    <div class="rs-body">
      我们融合影像、电子健康记录与基因组数据，构建具有不确定性感知的诊断系统。
      符合性预测提供了统计上有效的覆盖保证，使系统不仅精准，
      更在临床部署中具备可证明的可靠性。
    </div>
    <div class="rs-topics">
      <span class="rs-topic">符合性预测</span>
      <span class="rs-topic">EHR 与影像融合</span>
      <span class="rs-topic">不确定性量化</span>
      <span class="rs-topic">临床部署</span>
    </div>
    <a href="{{ '/zh/projects/' | relative_url }}" class="rs-link">了解此项目 →</a>
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
