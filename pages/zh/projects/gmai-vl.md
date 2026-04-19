---
layout:    page
title:     "GMAI-VL — GMAI Lab"
permalink: /zh/projects/gmai-vl/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← 项目</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">医学多模态大模型</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  GMAI-VL &amp; GMAI-VL-5.5M
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  基于来自219个专业数据集的550万图文对训练的通用医学视觉语言模型
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">由上海人工智能实验室主导</strong>，联合中国科学院深圳先进技术研究院（SIAT）与上海交通大学共同研究。
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/uni-medical/GMAI-VL" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://arxiv.org/abs/2411.14522" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv 论文</a>
  <a href="https://huggingface.co/papers/2411.14522" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 HuggingFace</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/gmai-vl/gmai_vl1.png' | relative_url }}"
       alt="GMAI-VL 数据流水线、模型架构与三阶段训练总览"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图1. GMAI-VL 与 GMAI-VL-5.5M 总览。(a) GMAI-VL-5.5M 的数据来源、科室、模态、任务类型和指令格式。(b) GMAI-VL 架构：视觉编码器 + 投影层 + 大语言模型。(c) 三阶段训练流程——浅层对齐、深度对齐与指令微调。
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  尽管通用AI取得了显著进展，其在临床医学中的应用仍受到领域专业知识缺乏和大规模高质量多模态训练数据稀缺的制约。现有医学数据集范围狭窄，局限于特定影像模态或临床任务，难以支撑真正通用的医学AI模型的训练。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  GMAI-VL从数据到模型进行端到端突破。我们首先构建了 <strong>GMAI-VL-5.5M</strong>——目前最大、最多样化的多模态医学数据集，整合了来自219个专业医学数据集的550万图文对，覆盖18个临床科室和10余种影像模态，同时支持中英双语。在此基础上，采用渐进式三阶段训练策略训练 <strong>GMAI-VL</strong>，逐步深化视觉与语言的对齐融合，在多种医学多模态基准上实现了最先进的性能。
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">🌟 核心亮点</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 — GMAI-VL-5.5M：前所未有的数据规模与多样性
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    GMAI-VL-5.5M整合了 <strong>219个专业医学影像数据集</strong>，形成 <strong>550万</strong> 高质量图文对的统一语料库。数据集跨越 <strong>18个临床科室</strong>——从放射科、病理科到眼科和内窥镜科——涵盖CT、MRI、X光、超声、眼底摄影和显微镜等10余种影像模态。所有数据均可追溯至来源机构，并同时支持中英双语，是迄今为止训练通用医学AI最全面的基础数据集。
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/gmai-vl/gmai_vl6.png' | relative_url }}"
       alt="GMAI-VL-5.5M 在模态、科室、原始任务和临床任务上的分布"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图3. GMAI-VL-5.5M 在影像模态（左上）、原始任务类型（右上）、临床科室（左下）和临床任务类型（右下）上的分布——展示了前所未有的广泛覆盖。
  </figcaption>
</figure>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 — 领跑多模态医学数据集
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    与所有先前的多模态医学数据集相比，GMAI-VL-5.5M在四个关键维度上独领风骚：<strong>规模</strong>（550万对，远超所有竞争者）、<strong>来源多样性</strong>（219个专业数据集）、<strong>双语支持</strong>（中英文）以及<strong>完整来源可追溯性</strong>。这一组合使得GMAI-VL-5.5M不仅在数量上更大，在质量上也更优——能够支持模型跨越此前任何数据集都无法覆盖的临床场景进行泛化。
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/gmai-vl/gmai_vl2.png' | relative_url }}"
       alt="多模态医学数据集对比表（规模、模态、语言、可追溯性、来源）"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    表1. 多模态医学数据集在规模、模态、语言、可追溯性与数据来源上的对比。GMAI-VL-5.5M（本研究）以来自219个专业医学影像数据集的550万样本在各维度均处于领先地位。
  </figcaption>
</figure>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 — 三阶段渐进式训练策略
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    GMAI-VL在精心整理的语料库上进行训练，涵盖医学说明数据（33.7%）、医学指令数据（31.8%）、通用文本（13.2%）、报告生成（4.6%）以及通用指令与说明数据。训练分三个阶段进行：<strong>第一阶段——浅层对齐</strong>（1170万对）仅训练投影层，在视觉编码器和大语言模型冻结的情况下对齐视觉和文本表示；<strong>第二阶段——深度对齐</strong>（1170万对）同时微调投影层和大语言模型，实现更深层的跨模态融合；<strong>第三阶段——指令微调</strong>（1000万对）专为临床指令遵循和精细医学推理而设计，覆盖多样化任务格式。
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/gmai-vl/gmai_vl7.png' | relative_url }}"
       alt="GMAI-VL 训练数据按类别和子类别的分布"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图4. GMAI-VL 训练数据集分布。内环代表主要类别（医学说明、医学指令、通用文本等）；外环展示具体组成数据集及其数据量——呈现了为三阶段课程训练组装的全面多源语料库。
  </figcaption>
</figure>

<!-- Highlight 04 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    04 — 达到最先进的多模态医学性能
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    GMAI-VL在广泛的临床多模态任务中表现出色：胸部X光和CT扫描的详细图像描述、内窥镜和眼底图像的视觉问答、多选项临床推理（识别伪影类型、病变特征和鉴别诊断），以及跨模态医学推断。模型能够处理中英文提示、放射科和病理图像，以及结构化（多选）和开放式（自由文本）指令格式——验证了其训练语料库所保证的通用性。实验证实在医学视觉问答和诊断推理基准上达到了最先进的性能。
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/gmai-vl/gmai_vl5.png' | relative_url }}"
       alt="GMAI-VL 在五种临床任务中的输出示例"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图2. GMAI-VL 在五种临床任务中的示例输出：(a) 胸部X光描述，(b) 内窥镜多选项视觉问答，(c) 肺结节识别，(d) 新冠CT诊断推理，(e) 糖尿病性视网膜病变严重程度分级——展示了跨模态、跨语言和跨任务格式的泛化能力。(e) 为一个仍在研究中的失败案例。
  </figcaption>
</figure>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结语</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    GMAI-VL通过同时解决数据稀缺和模型通用性这两个相互关联的挑战，为通用医学AI树立了新的范式。通过将219个专业医学数据集统一为单一的550万对语料库，并通过有原则的三阶段课程训练，GMAI-VL在多种医学视觉问答和诊断推理基准上取得了最先进的结果。这标志着从狭窄的特定任务医学AI向真正通用模型的重要跨越——该模型能够跨科室、跨模态、跨语言地协助临床医生。
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">主要贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>构建了 <strong>GMAI-VL-5.5M</strong>——最大、最多样化的多模态医学数据集：来自219个专业数据集的550万图文对，涵盖18个临床科室、10余种影像模态，支持中英双语并具有完整来源可追溯性。</li>
  <li>通过三阶段渐进式训练策略（浅层对齐→深度对齐→指令微调）开发了 <strong>GMAI-VL</strong>，系统性地强化了跨模态临床推理能力，在医学VQA和诊断推理任务上达到最先进水平。</li>
  <li>在多个医学多模态视觉问答和诊断推理基准上取得了<strong>最先进性能</strong>，超越了先前的医学专用和通用视觉语言模型。</li>
  <li>完全<strong>开源</strong>模型权重和训练代码，使研究社区能够复现、微调和基于GMAI-VL进行临床与科研应用的开发。</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者团队</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Tianbin Li, Yanzhou Su, Wei Li, Bin Fu, Zhe Chen, Ziyan Huang, Guoan Wang, Chenglong Ma, Ying Chen, Ming Hu, Yanjun Li, Pengcheng Chen, Xiaowei Hu, Zhongying Deng, Yuanfeng Ji, Jin Ye, Yu Qiao, <strong>Junjun He</strong>
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/uni-medical/GMAI-VL" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>
  <a href="https://arxiv.org/abs/2411.14522" target="_blank" rel="noopener" class="pub-btn">arXiv 论文</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">← 返回项目列表</a>
</div>

</div>
