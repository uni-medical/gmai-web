---
layout:    page
title:     "MedITok"
permalink: /zh/projects/meditok/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; 项目</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">医学基础模型</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  MedITok：统一医学图像分词器
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  首个统一医学图像分词器，服务于自回归合成与理解 &mdash; 基于跨 9 种模态的 3300 万+ 图像训练，在 30+ 基准上达到 SOTA
</p>

<!-- 机构条 -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">由复旦大学与上海人工智能实验室主导</strong>，联合上海创新研究院、斯坦福大学和字节跳动 Seed 共同研发。
</div>

<!-- 资源链接 -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/Masaaki-75/meditok" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://arxiv.org/abs/2502.04397" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv 论文</a>
</div>

<!-- 主图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/meditok/overview.jpg" alt="MedITok：包含视觉表征对齐和文本语义对齐的两阶段训练框架" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图 1. MedITok 概览。(a) 包含编码器、量化器和解码器的架构设计。(b) 两阶段训练：第一阶段在 3300 万+ 无配对图像上进行视觉表征对齐，利用预训练视觉语义；第二阶段使用 200 万+ 临床图文配对数据进行文本语义对齐。(c) 各成像模态的训练数据统计。
  </figcaption>
</figure>

<!-- 引言 -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  自回归建模已推动多模态 AI 取得重大进展，但其在医学影像领域的应用仍受限于缺乏统一的图像分词器——现有方案无法在异构模态间同时保留精细解剖结构和丰富的临床语义。当前方法要么针对像素级重建进行优化（如 VQGAN），却不具备判别性特征编码能力；要么捕获高层文本语义（如 CLIP），却无法保留空间结构与纹理信息 &mdash; 导致合成或理解任务二者至少有一项表现不足。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  <strong>MedITok</strong> 是首个统一的医学图像分词器，同时编码低层结构信息（支撑忠实的图像重建与逼真合成）和高层临床语义（赋能多模态医学图像理解）。基于以视觉表征为桥梁的<strong>两阶段训练框架</strong>，MedITok 在涵盖 9 种模态的 <strong>3300 万+ 医学图像</strong>和 <strong>200 万+ 图文配对数据</strong>上进行训练，在涵盖重建、分类、生成和视觉问答 4 大任务族的 <strong>30+ 基准</strong>上均达到最先进性能。
</p>

<!-- 核心亮点 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">核心亮点</h2>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; 两阶段训练：先视觉对齐，后文本对齐
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    MedITok 并未在单次训练中联合优化重建与语义目标（这可能导致梯度干扰和表征坍缩），而是提出了一种原则性的两阶段方法。<strong>第一阶段（视觉表征对齐）</strong>在 <strong>3340 万张无配对医学图像</strong>上训练编码器和解码器，以重建保真度为核心，同时引入来自预训练视觉编码器（BioMed-CLIP）的轻量语义约束。该阶段充分利用了现有方法忽略的海量无标注医学图像。<strong>第二阶段（文本语义对齐）</strong>在 <strong>240 万图文配对数据</strong>上精调编码器，将学习到的 token 与精细临床描述对齐，注入丰富的语义信息。这种渐进式策略避免了朴素联合训练固有的冲突，同时构建了真正统一的潜在空间。
  </p>
</div>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; 前所未有的规模与模态覆盖
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    MedITok 基于精心策展的语料库训练，涵盖 <strong>9 种成像模态</strong>：CT、皮肤镜、内窥镜、眼底摄影、MRI、病理、超声、X 光和 OCT。数据集经过严格的质量控制——包括分辨率、灰度范围、信息含量和临床相关性的自动筛选，以及人工审核以排除表格、图表等非临床内容。如此广泛的覆盖确保 MedITok 在从胸部 X 光到组织病理切片等多样化临床场景中学习到稳健的表征，而非局限于医学影像的某一狭窄子集。
  </p>
</div>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; 在 30+ 基准和 4 大任务族上达到 SOTA
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    MedITok 在 8 种模态的重建保真度（rFID）上实现<strong>平均排名第 1.0</strong>，即使采用 16&times; 下采样因子，仍优于仅使用 8&times; 下采样的分词器。在像素级指标之外，MedITok 在皮肤镜、眼底、病理、超声和 X 光的分类代理任务上取得了最高的诊断信息保留分数（mAP 和 AUC）。在用于评估高层语义编码能力的线性探测实验中，MedITok 一致优于通用领域和医学专用分词器。将 MedITok 集成到自回归管线后，可实现有竞争力的医学图像合成和视觉问答，成为下一代多模态医学模型的可扩展基础组件。
  </p>
</div>

<!-- 结论 -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结论</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    MedITok 建立了首个统一的医学图像基础分词器，证明了以视觉表征为桥梁、兼顾重建保真度与语义丰富性的原则性两阶段训练策略，能够同时在低层编码、高层理解、图像合成和视觉理解方面表现卓越。通过释放海量无配对医学图像与精选图文配对数据的潜力，MedITok 为下一代自回归医学 AI 模型提供了一个可扩展、模态无关的基础构建模块。
  </p>
</div>

<!-- 核心贡献 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">核心贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>提出了一种新颖的<strong>两阶段训练框架</strong>，以视觉表征对齐为桥梁，有效利用医学图像数据进行规模扩展，在无梯度干扰的条件下渐进构建统一的潜在空间。</li>
  <li>提出了 <strong>MedITok</strong>，首个在单一模型中统一编码低层结构细节和高层临床语义的医学图像分词器。</li>
  <li>在涵盖 9 种成像模态、4 大任务族（重建、分类、生成和 VQA）的 <strong>30+ 数据集</strong>上达到<strong>最先进性能</strong>，全面超越通用领域和医学专用分词器。</li>
  <li>策展了包含 <strong>3300 万+ 医学图像</strong>和 <strong>200 万+ 图文配对数据</strong>的大规模训练语料库，配以严格的质量控制，并提供开源模型、代码和数据访问。</li>
</ul>

<!-- 作者 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Chenglong Ma, Yuanfeng Ji, Jin Ye, Zilong Li, Chenhui Wang, Junzhi Ning, Wei Li, Lihao Liu, Qiushan Guo, Tianbin Li, <strong>Junjun He</strong>, Hongming Shan
</p>

<!-- 底部链接 -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/Masaaki-75/meditok" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>
  <a href="https://arxiv.org/abs/2502.04397" target="_blank" rel="noopener" class="pub-btn">arXiv 论文</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">&larr; 返回项目列表</a>
</div>

</div>
