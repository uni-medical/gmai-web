---
layout:    page
title:     "STU-Net"
permalink: /zh/projects/stu-net/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← 项目</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">医学图像分割</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  STU-Net：可扩展可迁移医学图像分割模型
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  参数量从 1400 万到 14 亿的可扩展 U-Net 系列，基于 TotalSegmentator 大规模预训练，面向通用医学图像分割
</p>

<!-- 机构条 -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">上海人工智能实验室主导</strong>，联合上海交通大学。
</div>

<!-- 资源链接 -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:1.25rem;">
  <a href="https://github.com/uni-medical/STU-Net" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://arxiv.org/abs/2304.06716" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv 论文</a>
</div>

<!-- 奖项条 -->
<div style="font-size:.82rem;color:#92400e;padding:.75rem 1rem;border-left:3px solid #f59e0b;background:#fffbeb;margin-bottom:1.5rem;line-height:1.9;">
  🏆 MICCAI 2023 ATLAS 挑战赛 — 冠军<br>
  🏆 MICCAI 2023 SPPIN 挑战赛 — 冠军<br>
  🥈 MICCAI 2023 AutoPET II 挑战赛 — 亚军（最高 DSC）<br>
  🥈 MICCAI 2023 BraTS2023 — 亚军（另获两项季军）<br>
  🥉 FLARE 2023 — 第三名
</div>

<!-- 主图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/stu-net/stu_net2.png' | relative_url }}"
       alt="STU-Net 架构总览"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图 1. STU-Net 架构总览。(a) 含残差块的编解码结构。(b) 残差块设计。(c) 双分支捷径下采样块。(d) 用于输入通道转换的 Stem 模块。(e) 分割头。(f) 用于可迁移权重的最近邻插值上采样块。
  </figcaption>
</figure>

<!-- 引言 -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  大规模预训练模型已深刻改变了自然语言处理和计算机视觉领域。然而，医学图像分割领域的主流模型参数量仍停留在数千万量级，规模扩展潜力尚未得到充分探索。能否将模型规模提升一个数量级，并验证更大模型在临床任务间具有更强的迁移能力，是 STU-Net 工作探索的核心问题。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  我们设计了一系列可扩展可迁移 U-Net（STU-Net）模型，参数量从 1460 万（STU-Net-S）到 14.57 亿（STU-Net-H）不等。STU-Net-H 是迄今为止最大的医学图像分割模型。所有变体均基于 nnU-Net 框架，并进行了关键架构改进：引入残差连接以支持深度扩展，采用无权重插值上采样以消除跨任务迁移时的权重不匹配问题。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  在包含 104 个解剖结构标注的大规模数据集 TotalSegmentator 上预训练后，STU-Net 验证了规模扩展能够持续提升分割精度。在 TotalSegmentator 基准上，STU-Net-H 达到 90.06% 平均 DSC，超越所有 CNN 和 Transformer 竞争方法。其迁移能力延伸至 14 个下游数据集的直接推理及 3 个数据集的微调任务，覆盖 CT、MRI、PET 等多种模态和多样化分割目标。
</p>

<!-- 核心亮点 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 2rem;">🌟 核心亮点</h2>

<!-- 亮点 01 — 图片在左，文字在右 -->
<div style="display:flex;gap:2rem;align-items:flex-start;margin-bottom:3rem;flex-wrap:wrap;">
  <figure style="flex:1 1 320px;min-width:0;margin:0;border:1px solid #e2e8f0;overflow:hidden;">
    <img src="{{ '/assets/images/projects/stu-net/stu_net1.png' | relative_url }}"
         alt="TotalSegmentator 上分割性能与计算量对比"
         style="width:100%;display:block;" loading="eager" />
    <figcaption style="padding:.6rem .85rem;font-size:.75rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;line-height:1.6;">
      图 2. TotalSegmentator 上分割性能与计算量（FLOPs）对比。气泡面积与 FLOPs 成正比。STU-Net 在各规格下均超越 nnU-Net、nnFormer、UNETR 和 SwinUNETR。
    </figcaption>
  </figure>
  <div style="flex:1 1 280px;min-width:0;">
    <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
      01 — 可扩展性：从 1400 万到 14 亿参数的四种模型规格
    </h3>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:.75rem;">
      STU-Net 提供四种规格——S（1460 万）、B（5826 万）、L（4.40 亿）和 H（14.57 亿参数）。联合扩展网络深度与宽度的策略优于单独扩展任一维度。STU-Net-B 已在 TotalSegmentator 上超越 nnU-Net 0.36%、超越 SwinUNETR-B 4.48%。STU-Net-H 以 90.06% 平均 DSC 创下该基准的最优纪录。
    </p>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin:0;">
      架构改进使规模扩展成为可能：各模块中的残差连接有效缓解了超深网络的梯度消散问题；固定 6 阶段、各向同性卷积核的设计确保预训练权重可跨任务复用而无需担心形状不匹配。
    </p>
  </div>
</div>

<!-- 亮点 02 — 文字在左，图片在右 -->
<div style="display:flex;gap:2rem;align-items:flex-start;margin-bottom:3rem;flex-wrap:wrap;">
  <div style="flex:1 1 280px;min-width:0;order:1;">
    <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
      02 — 迁移性：在 17 个数据集上实现强劲的零样本与微调性能
    </h3>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:.75rem;">
      在 TotalSegmentator 上预训练后，STU-Net 可直接在 14 个包含预训练类别子集的下游 CT 数据集上进行推理，无需额外训练。在这 14 个数据集（共 2,494 个样本）上，STU-Net-H 以 84.02% 平均 DSC 超越 nnU-Net 的 76.37%，提升幅度达 7.65%。
    </p>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin:0;">
      在 FLARE22、AMOS22（CT+MRI）和 AutoPET22（CT+PET）三个挑战性下游数据集上进行微调时，STU-Net-H-ft 达到 80.69% 平均 DSC，优于 nnU-Net 的 77.06%。值得注意的是，基于 CT 预训练后在 MRI、PET 等非 CT 模态上进行微调同样受益显著，表明模型习得了超越模态特异性的基础解剖结构表征。
    </p>
  </div>
  <figure style="flex:1 1 320px;min-width:0;margin:0;border:1px solid #e2e8f0;overflow:hidden;order:2;">
    <img src="{{ '/assets/images/projects/stu-net/stu_net7.png' | relative_url }}"
         alt="FLARE22、AMOS、AutoPET 上的定性分割结果"
         style="width:100%;display:block;" loading="lazy" />
    <figcaption style="padding:.6rem .85rem;font-size:.75rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;line-height:1.6;">
      图 3. FLARE22（行 1）、AMOS-CT（行 2）、AMOS-MR（行 3）、AutoPET-CT（行 4）和 AutoPET-PET（行 5）上的定性分割结果。更大规模的 STU-Net 模型产生更清晰的边界和更少的漏分结构。
    </figcaption>
  </figure>
</div>

<!-- 亮点 03 — 图片在左，文字在右 -->
<div style="display:flex;gap:2rem;align-items:flex-start;margin-bottom:3rem;flex-wrap:wrap;">
  <figure style="flex:1 1 320px;min-width:0;margin:0;border:1px solid #e2e8f0;overflow:hidden;">
    <img src="{{ '/assets/images/projects/stu-net/stu_net3.png' | relative_url }}"
         alt="TotalSegmentator 验证集上 5 个解剖子类的分割结果"
         style="width:100%;display:block;" loading="lazy" />
    <figcaption style="padding:.6rem .85rem;font-size:.75rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;line-height:1.6;">
      表 1. TotalSegmentator 验证集上 5 个解剖子类及全部 104 个类别的分割结果。STU-Net-H 在每个类别均取得最优成绩。
    </figcaption>
  </figure>
  <div style="flex:1 1 280px;min-width:0;">
    <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
      03 — 在 TotalSegmentator 基准上达到最先进水平
    </h3>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:.75rem;">
      在拥有 104 个解剖结构标注的 TotalSegmentator 验证集上，STU-Net-H 以 90.06% 平均 DSC 刷新纪录，超越最优 CNN 模型 nnU-Net（86.76%）达 3.3 个百分点，超越最优 Transformer 模型 SwinUNETR-B（82.64%）达 7.4 个百分点。
    </p>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin:0;">
      性能提升在全部五个解剖子类上均保持一致，其中脊椎（86.97%→90.43%）和肋骨（86.11%→90.29%）提升最为显著，表明模型扩展带来的是全面覆盖能力的提升，而非仅体现在整体平均值上。
    </p>
  </div>
</div>

<!-- 亮点 04 — 文字在左，图片在右 -->
<div style="display:flex;gap:2rem;align-items:flex-start;margin-bottom:3rem;flex-wrap:wrap;">
  <div style="flex:1 1 280px;min-width:0;order:1;">
    <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
      04 — 规模足够大时，通用模型超越专科模型
    </h3>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:.75rem;">
      医学图像分割领域长期存在一种假设：针对单一类别训练的专科模型必然优于同时处理所有类别的通用模型。STU-Net 的实验结果对此提出了挑战。
    </p>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin:0;">
      我们分别训练了五个专科模型（器官、脊椎、心脏、肌肉、肋骨）并与单一通用 STU-Net 进行对比。在 STU-Net-H 规模（14 亿参数）下，通用模型以 90.06% 整体平均 DSC 超越所有专科模型中的最优组合（89.07%）。这表明在足够大的规模下，单一统一模型确实能够同时精通所有分割目标——迈向真正意义上的医学分割基础模型的关键一步。
    </p>
  </div>
  <figure style="flex:1 1 320px;min-width:0;margin:0;border:1px solid #e2e8f0;overflow:hidden;order:2;">
    <img src="{{ '/assets/images/projects/stu-net/stu_net8.png' | relative_url }}"
         alt="通用 STU-Net 与五个专科模型对比"
         style="width:100%;display:block;" loading="lazy" />
    <figcaption style="padding:.6rem .85rem;font-size:.75rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;line-height:1.6;">
      图 4. 通用 STU-Net 与五个类别专科模型对比。在 STU-Net-H 规模下，通用模型以 90.06% 整体平均 DSC 超越所有专科模型。
    </figcaption>
  </figure>
</div>

<!-- 结论 -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结论</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    STU-Net 证明了在自然语言和计算机视觉领域发现的扩展律同样适用于三维医学图像分割。凭借 14 亿参数及在涵盖 CT、MRI、PET 模态的 17 个数据集上的强大迁移能力，STU-Net-H 代表了通用医学分割的当前前沿，是迈向医学人工通用智能（MedAGI）的重要基础模型构建模块。
  </p>
</div>

<!-- 核心贡献 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">核心贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>设计了 STU-Net-S/B/L/H 系列模型，参数量从 1400 万扩展至 14 亿，STU-Net-H 是迄今最大的医学图像分割模型。</li>
  <li>揭示了清晰的医学分割扩展律：在 TotalSegmentator 上训练的更大模型在预训练基准及 14 个下游迁移数据集上均能持续取得更高 DSC。</li>
  <li>改进 nnU-Net 架构——引入残差块与无权重插值上采样，实现真正意义上的跨任务权重可迁移性。</li>
  <li>荣获 MICCAI 2023 ATLAS 和 SPPIN 挑战赛冠军；在 AutoPET II 获亚军；在 BraTS2023 和 FLARE2023 多次进入前三。</li>
</ul>

<!-- 作者 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:.5rem;">
  Ziyan Huang, Haoyu Wang, Zhongying Deng, Jin Ye, Yanzhou Su, Hui Sun, <strong>Junjun He</strong>, Yun Gu, Lixu Gu, Shaoting Zhang, Yu Qiao
</p>
<p style="font-size:.75rem;color:#64748b;margin-bottom:3rem;">arXiv 2023</p>

<!-- 底部链接 -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/uni-medical/STU-Net" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>
  <a href="https://arxiv.org/abs/2304.06716" target="_blank" rel="noopener" class="pub-btn">arXiv 论文</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">← 返回项目列表</a>
</div>

</div>
