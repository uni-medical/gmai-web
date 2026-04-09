---
layout:    page
title:     "SAM-Med3D"
permalink: /zh/projects/sam-med3d/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← 项目</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">医学图像分析</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  SAM-Med3D
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  迈向通用三维医学图像分割模型
</p>

<!-- 机构条 -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">由上海人工智能实验室与中国科学院主导</strong>，联合上海交通大学等合作机构共同研发。
</div>

<!-- 资源链接 -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:1rem;">
  <a href="https://github.com/uni-medical/SAM-Med3D" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://arxiv.org/abs/2310.15161" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv 论文</a>
  <a href="https://huggingface.co/datasets/blueyo0/SA-Med3D-140K" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 数据集 (SA-Med3D-140K)</a>
</div>

<!-- 会议 -->
<div style="font-size:.78rem;color:#64748b;margin-bottom:2.5rem;">
  <strong style="color:#1e293b;">ECCV BIC 2024 Oral</strong>
</div>

<!-- 主图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/sam-med3d/sam_med3d1.png' | relative_url }}"
       alt="SAM-Med3D 定性比较"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    定性比较：SAM-Med3D 仅需在三维空间中给出 1 个提示点，即可实现优越的体积分割效果，而二维方法（SAM、SAM-Med2D）需要每层多个提示点，且层间结果不一致。
  </figcaption>
</figure>

<!-- 引言 -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  医学图像分割是现代医疗的关键技术，能够精确识别和描绘解剖结构与病理区域。然而，当前方法主要针对特定任务，需要为特定器官、病变或成像模态训练专门模型。基础模型（如 SAM）虽然革新了二维图像分割，但将其应用于三维医学体积数据面临巨大挑战——现有方法要么逐层处理三维数据从而丢失关键空间上下文，要么采用适配器方法无法完全捕获三维信息。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  SAM-Med3D 通过完全可学习的三维架构从头训练来解决这些局限。其训练基础是 SA-Med3D-140K——迄今最大的体积医学图像分割数据集，包含 <strong>22,000 张三维图像</strong>和 <strong>143,000 个对应三维掩码</strong>，涵盖 28 种成像模态、245+ 种解剖目标类型和 6 大解剖类别。最终实现了一个通用模型，仅需少量三维提示点即可在多种模态下分割多样化结构和病变，Dice 分数相比 SAM <strong>提升 60.12%</strong>。
</p>

<!-- 核心亮点 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">🌟 核心亮点</h2>

<!-- 亮点一 -->
<div style="margin-bottom:2rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 — 完全原生三维架构
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    不同于将三维能力通过适配器嫁接到冻结二维骨干网络的方法，SAM-Med3D 从零构建三个完全三维的组件：三维图像编码器、三维提示编码器和三维掩码解码器。初步实验对比了三种策略——冻结 SAM 骨干加三维适配器、二维到三维权重迁移微调、以及从头训练——完全三维方法在已见和未见目标上均明显胜出，有效避免了适配器方法固有的二维偏差。
  </p>
</div>

<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/sam-med3d/sam_med3d4.png' | relative_url }}"
       alt="SAM-Med3D 的完全三维架构"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    SAM-Med3D 的完全三维架构：包含配备三维多头自注意力的三维图像编码器、处理三维坐标点 (x, y, z) 的三维提示编码器，以及生成体素级分割预测的三维掩码解码器。
  </figcaption>
</figure>

<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/sam-med3d/sam_med3d2.png' | relative_url }}"
       alt="体积医学图像 SAM 系列模型对比"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    体积医学图像 SAM 系列模型对比。SAM-Med3D 是唯一在图像编码器、提示编码器和掩码解码器上均采用完全可学习三维组件的模型——在最大规模数据集（143K 掩码、245 类别）上训练。
  </figcaption>
</figure>

<!-- 亮点二 -->
<div style="margin-bottom:2rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 — SA-Med3D-140K：前所未有的训练规模
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    SAM-Med3D 的基础是 SA-Med3D-140K，这一前所未有的数据集汇集了 70 个公共数据集和 24 个授权私有数据集，涵盖 CT、超声和 26 种 MR 序列，横跨 6 大解剖类别。严格的四步清洗流程确保质量：目标形状清洗（移除体积小于 1cm³ 的掩码）、体积大小清洗（排除背景超过 99% 的掩码）、降噪（消除小连通域）和歧义消除（将"肾脏"分离为"左肾"和"右肾"等对称结构）。训练集使用 131K 掩码，验证集保留 12 个完全未见数据源的数据集及全部超声数据，以严格测试跨模态泛化能力。
  </p>
</div>

<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/sam-med3d/sam_med3d3.png' | relative_url }}"
       alt="SA-Med3D-140K 概览"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    SA-Med3D-140K 概览：(a) 245 种解剖目标类别的词云可视化。(b) 数据集规模对比——SA-Med3D-140K 包含 22K 三维图像和 143K 掩码，远超 AMOS、BraTS21 和 TotalSegmentator 等现有数据集。
  </figcaption>
</figure>

<!-- 亮点三 -->
<div style="margin-bottom:2rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 — 跨模态最优性能
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    SAM-Med3D 总体 Dice 分数相比 SAM 提升 60.12%，推理时间仅为 SAM 的 1–26%。性能在 CT、MR 和超声模态上保持一致——值得注意的是，尽管从未在超声数据上训练，SAM-Med3D 在 US 图像上仍展现出竞争力。在 44 种主要器官和 5 种病变类型上，SAM-Med3D 相比 SAM-Med2D 的 Dice 改进最高达 68.2%。两阶段训练范式（131K 掩码上 800 轮预训练 + 75K 高质量掩码微调）构建了稳健的通用分割能力。
  </p>
</div>

<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/sam-med3d/sam_med3d5.png' | relative_url }}"
       alt="SAM-Med3D 性能分析"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    性能分析：(a–c) 在 CT、MR 和超声模态上，SAM-Med3D 在不同提示点数下始终优于 SAM 和 SAM-Med2D。(d) 在 44 种器官和 5 种病变上相比 SAM-Med2D 的详细 Dice 改进，最高达 +68.2%。
  </figcaption>
</figure>

<!-- 亮点四 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    04 — 可迁移性与临床影响
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    除直接分割任务外，SAM-Med3D 还展现出作为预训练基础模型的显著价值。当其图像编码器作为 UNETR 的特征提取器时，下游语义分割 Dice 分数提升最高达 5.63%——包括在此前未见的挑战赛数据集上。该模型所需提示点远少于二维方法（每体积 1 个点 vs 每层多个点），层间一致性显著更好，能生成具有临床意义的三维掩码。SAM-Med3D-turbo 是在 44 个数据集上微调的改进版本，进一步提升了实用性能。
  </p>
</div>

<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/sam-med3d/sam_med3d6.png' | relative_url }}"
       alt="跨解剖结构定性可视化"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    跨解剖结构定性可视化（肝脏、椎骨）：在轴位、冠状位和矢状位视图中，SAM-Med3D 相比 SAM 和 SAM-Med2D 展现出更优的分割质量和层间一致性。
  </figcaption>
</figure>

<!-- 结论 -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结论</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    SAM-Med3D 证明了单一的完全三维模型可以在多种成像模态下有效分割多样化的解剖结构和病变，且仅需最少的用户交互。通过在最大规模体积医学数据集（SA-Med3D-140K）上从头训练，该模型实现了从任务特定分割到通用医学 AI 的范式转变——既是强大的独立工具，也是可迁移的研究基础。数据集、代码和模型的开源发布加速了社区在更通用、更可及的医学 AI 方向上的集体进展。
  </p>
</div>

<!-- 核心贡献 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">核心贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>提出 <strong>完全原生三维架构</strong>用于可提示医学图像分割，优于所有将三维能力嫁接到冻结二维骨干的适配器方法。</li>
  <li>构建 <strong>SA-Med3D-140K</strong>——22K 三维图像配合 143K 掩码，覆盖 28 种模态和 245+ 种类别——迄今最大的体积医学分割数据集。</li>
  <li>实现相比 SAM <strong>60.12% 的 Dice 提升</strong>，推理速度快 1–26 倍，在 CT、MR、超声及未见模态上展现强泛化能力。</li>
  <li>开源数据集、代码及模型权重（含在 44 个数据集上微调的 SAM-Med3D-turbo），为未来三维医学 AI 研究提供可复用基础。</li>
</ul>

<!-- 作者 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Haoyu Wang, Sizheng Guo, Jin Ye, Zhongying Deng, Junlong Cheng, Tianbin Li, Jianpin Chen, Yanzhou Su, Ziyan Huang, Yiqing Shen, Bin Fu, Shaoting Zhang, <strong>Junjun He</strong>, Yu Qiao
</p>

<!-- 底部链接 -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/uni-medical/SAM-Med3D" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>
  <a href="https://arxiv.org/abs/2310.15161" target="_blank" rel="noopener" class="pub-btn">arXiv 论文</a>
  <a href="https://huggingface.co/datasets/blueyo0/SA-Med3D-140K" target="_blank" rel="noopener" class="pub-btn">🤗 数据集</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">← 返回项目列表</a>
</div>

</div>
