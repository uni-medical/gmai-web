---
layout:    page
title:     "Survey: Scientific LLMs"
permalink: /zh/projects/survey-scillm/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; 项目</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">科学智能</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  A Survey of Scientific Large Language Models: From Data Foundations to Agent Frontiers
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  一项以数据为中心的综合性综述，系统梳理了涵盖所有主要科学学科的 270+ 预训练/后训练数据集和 190+ 评测基准
</p>

<!-- 机构条 -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">由上海人工智能实验室主导</strong>，联合
  Monash University、复旦大学、上海交通大学、香港中文大学、
  University College London、Stanford University、Virginia Tech、Johns Hopkins University、University of Cambridge、
  香港大学、Caltech 及 15+ 所全球机构共同合作。
</div>

<!-- 资源链接 -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/open-sciencelab/Awesome-Scientific-Datasets-and-LLMs" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub 仓库</a>
</div>

<!-- 主图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/survey-scillm/overview.jpg" alt="Scientific LLMs 综述：从亚原子粒子到宇宙学现象的科学探究连续体" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图 1. 科学探究的连续体，跨越从亚原子粒子、原子与分子结构、细胞与生物体生物学、生态系统、行星科学到宇宙学现象的多个尺度 &mdash; 展示了自然现象的嵌套层级结构以及 Scientific LLMs 所需涵盖的对应学科框架。
  </figcaption>
</figure>

<!-- 引言 -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Scientific Large Language Models (Sci-LLMs) 正在深刻变革科学研究中知识的表示、整合与应用方式，而其发展进程则受到科学数据复杂本质的深刻影响。本综述提出了一种以数据为中心的综合性框架，将 Sci-LLMs 的发展重构为模型与其底层数据基底之间的协同演化过程。文中构建了统一的科学数据分类体系和层次化的科学知识模型，着重阐述了多模态、跨尺度和领域特异性等关键挑战，这些特征使得科学语料库在本质上有别于通用 NLP 数据集。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  本综述系统梳理了近年来的 Sci-LLMs &mdash; 从通用基础模型到各科学学科的专用模型 &mdash; 并对超过 <strong>270 个预训练/后训练数据集</strong>和超过 <strong>190 个评测基准数据集</strong>进行了深入分析。研究表明，Sci-LLMs 面临着独特的需求：异构、多尺度、高不确定性的语料库要求在保持领域不变性的同时实现跨模态推理的表示能力。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  在评测方面，本综述追踪了从静态考试式评估向面向过程和发现导向评估的范式转变，涵盖了先进的评估协议。这些以数据为中心的分析揭示了科学数据发展中持续存在的问题，并探讨了涉及半自动标注流水线和专家验证的新兴解决方案。最后，本工作勾勒了向闭环系统演进的范式转变 &mdash; 基于 Sci-LLMs 的自主智能体主动进行实验、验证，并持续贡献于不断演化的活体知识库。
</p>

<!-- 核心亮点 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">核心亮点</h2>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; 统一的数据分类体系与知识层次结构
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    本综述构建了涵盖<strong>六大类别</strong>的统一科学数据分类体系：文本格式、视觉数据、符号表示、结构化数据、时间序列数据和多组学整合。与之配套的是跨越五个层次的科学知识层次结构 &mdash; 事实性知识、理论性知识、方法与技术知识、建模与仿真知识以及洞见知识 &mdash; 各层次之间具有动态交互和演化关系。该框架为理解科学语料库为何需要与通用 NLP 数据集本质不同的处理方式提供了原则性视角。
  </p>
</div>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; 跨学科的全面模型与数据集分析
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    本工作提供了迄今为止最全面的 Sci-LLMs 综述，涵盖<strong>物理学、化学、材料科学、生命科学、天文学和地球科学</strong>。系统编目了超过 <strong>270 个预训练/后训练数据集</strong>，并对通用型和领域专用型 Sci-LLMs 进行了全面审视。分析揭示了 Sci-LLMs 面临的独特挑战 &mdash; 异构、多尺度、高不确定性的语料库 &mdash; 要求在保持领域不变性的同时实现跨多种科学模态的跨模态推理能力。
  </p>
</div>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; 从静态基准到智能体驱动的科学发现
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    通过审视超过 <strong>190 个评测基准</strong>，本综述追踪了从静态考试式评估向面向过程和发现导向评估的范式转变，涵盖了 LLM/Agent-as-a-Judge 和 test-time learning 等先进评估协议。更为重要的是，本工作勾勒了一种全新范式 &mdash; 基于 Sci-LLMs 的自主科学智能体组成闭环系统，主动进行实验、验证，并持续贡献于活体知识库 &mdash; 涵盖多智能体协作、工具使用、自进化智能体和自主科学发现等方向。
  </p>
</div>

<!-- 结论 -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结论</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    本综述为构建可信赖、持续演化的人工智能系统提供了路线图，使其成为加速科学发现的真正合作伙伴。通过将 Sci-LLM 的发展重构为模型与数据基底之间的协同演化，本工作揭示了科学数据发展中持续存在的问题 &mdash; 包括数据溯源危机、科学数据滞后性以及 AI-readiness 不足 &mdash; 同时指出了涉及半自动标注流水线、专家验证和科学数据生态系统操作系统级交互协议的新兴解决方案。
  </p>
</div>

<!-- 核心贡献 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">核心贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>提出了<strong>以数据为中心的综合性框架</strong>，将 Sci-LLM 的发展重构为模型与底层数据基底之间的协同演化，构建了统一的科学数据分类体系和层次化的科学知识模型。</li>
  <li>系统综述了涵盖六大科学学科（物理学、化学、材料科学、生命科学、天文学、地球科学）的 Sci-LLMs，编目了 <strong>270+ 预训练/后训练数据集</strong>并分析了其独特需求。</li>
  <li>审视了 <strong>190+ 评测基准</strong>，追踪了从静态考试向面向过程和发现导向评估的转变，包括 LLM/Agent-as-a-Judge 评估协议。</li>
  <li>勾勒了<strong>向闭环科学智能体的范式转变</strong> &mdash; 智能体主动进行实验、验证并持续贡献于活体知识库，为可信赖的 AI 驱动科学发现提供了全面路线图。</li>
</ul>

<!-- 作者 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:.5rem;">
  Ming Hu, Chenglong Ma, Wei Li, Wanghan Xu, Jiamin Wu, Jucheng Hu, Tianbin Li, Guohang Zhuang, Jiaqi Liu, Yingzhou Lu, Ying Chen, Chaoyang Zhang, Cheng Tan, Jie Ying, Guocheng Wu, et al.
</p>
<p style="font-size:.75rem;color:#94a3b8;line-height:1.7;margin-bottom:3rem;">
  由来自上海人工智能实验室、Monash University、复旦大学、上海交通大学、香港中文大学、UCL、Stanford、Virginia Tech、Johns Hopkins、University of Cambridge、香港大学、Caltech 等 20+ 所全球机构的 80+ 位研究者合作完成。<br>
  通讯作者：Zongyuan Ge、Shixiang Tang、<strong style="color:#64748b;">Junjun He</strong>、Chunfeng Song、Lei Bai、Bowen Zhou。
</p>

<!-- 底部链接 -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/open-sciencelab/Awesome-Scientific-Datasets-and-LLMs" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">&larr; 返回项目列表</a>
</div>

</div>
