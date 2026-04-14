---
layout:    page
title:     "F²TTA"
permalink: /zh/projects/f2tta/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; 项目</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">域适应与鲁棒性</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  F<sup>2</sup>TTA: 基于图像级解耦提示调优的跨域医学图像分类自由形式测试时自适应
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  首个应对自由形式测试时自适应的框架，适用于临床数据以随机域片段到达且伴随不可预测分布偏移的场景
</p>

<!-- 机构条 -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">上海交通大学与上海人工智能实验室</strong>，联合东南大学和史蒂文斯理工学院共同研发。
</div>

<!-- 资源链接 -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/mar-cry/F2TTA" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
</div>

<!-- 主图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/f2tta/overview.jpg" alt="F2TTA: 基于图像级解耦提示调优的自由形式测试时自适应框架，包含不确定性导向掩码和并行图蒸馏" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图 1. 所提出的 Image-level Disentangled Prompt Tuning (I-DiPT) 框架概览，用于 Free-Form Test-Time Adaptation。对于每张输入图像，图像特定提示对源模型进行自适应，图像不变提示学习域不变表征以缓解不可预测的分布偏移，并通过 Uncertainty-oriented Masking (UoM) 和 Parallel Graph Distillation (PGD) 加以增强。
  </figcaption>
</figure>

<!-- 引言 -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  测试时自适应 (TTA) 作为一种前沿解决方案，能够利用无标注测试数据将源模型适配到未见过的医疗站点，从而规避高昂的数据标注成本。现有 TTA 方法通常假设来自单个或多个域的数据以完整域单元的形式到达。然而，在实际临床场景中，由于资源限制和患者差异，数据往往以任意长度的域片段和随机到达顺序呈现。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  本文研究了一个实际的 <strong>Free-Form Test-Time Adaptation (F<sup>2</sup>TTA)</strong> 任务，其中源模型需适配此类自由形式的域片段，且片段之间的分布偏移不可预测地发生。为解决这一问题，作者提出了一种新颖的 <strong>Image-level Disentangled Prompt Tuning (I-DiPT)</strong> 框架。I-DiPT 采用图像不变提示探索域不变表征以缓解不可预测的偏移，同时使用图像特定提示将源模型适配到来自输入片段的每张测试图像。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  为克服每个提示仅有一张图像可用于训练的局限，本工作引入了 <strong>Uncertainty-oriented Masking (UoM)</strong>，通过源模型表征不确定性驱动的掩码一致性学习，促使提示从输入图像中提取充分信息；以及 <strong>Parallel Graph Distillation (PGD)</strong>，通过并行图网络复用历史图像特定提示和图像不变提示中的知识。
</p>

<!-- 核心亮点 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">核心亮点</h2>

<!-- 亮点 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; Image-level Disentangled Prompt Tuning (I-DiPT)
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    与现有需要完整域数据的域级解耦提示调优方法不同，I-DiPT 在<strong>图像级别</strong>上运行——这使其在 F<sup>2</sup>TTA 设定中具有实际可行性，因为输入片段的域身份未知。该框架使用图像特定提示将源模型适配到每张测试图像，并维护图像不变提示以学习域不变表征，从而缓解自由形式片段之间不可预测的偏移。提示被插入 ViT-B/16 骨干网络的多头自注意力 (MSA) 层中，自适应过程中仅更新<strong>约 0.9M 参数（约占模型总参数的 1%）</strong>。
  </p>
</div>

<!-- 亮点 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; 不确定性导向掩码与并行图蒸馏
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    <strong>UoM</strong> 根据表征不确定性对图像块进行掩码，并强制提示在未掩码图像块与完整图像之间做出一致预测，鼓励图像不变提示关注稳定的局部内容（如癌细胞），图像特定提示关注高层纹理。<strong>PGD</strong> 构建两个并行提示图，分别从历史图像特定提示和图像不变提示中蒸馏知识，为输入图像的提示注入先验知识。消融实验表明，完整的 I-DiPT 框架在乳腺癌分类上达到 <strong>83.79% 的总体准确率</strong>，而 SourceOnly 为 72.64%，不含 UoM 和 PGD 的朴素 I-DiPT 仅为 67.80%。
  </p>
</div>

<!-- 亮点 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; 跨域医学分类的卓越性能
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    在 <strong>Camelyon17</strong> 乳腺癌组织病理数据集（来自 5 个医疗站点的 450K+ 图像块）和 <strong>SMCDG</strong> 青光眼眼底数据集（来自 6 个域的 11 个数据集共 12K+ 图像）上的实验表明，I-DiPT 优于七种最先进的 TTA 方法。在青光眼分类任务中，I-DiPT 在所有域上达到 <strong>73.17% 的总体准确率</strong>（对比 SourceOnly 的 69.41%），AUC 为 <strong>72.49%</strong>。I-DiPT 展现出<strong>准确率随时间稳步提升</strong>的趋势，在测试数据流的最后一段达到 88.88%，而其他方法出现性能振荡或下降。该方法在不同数据流稳定性水平下也表现出优异的鲁棒性。
  </p>
</div>

<!-- 结论 -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结论</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    F<sup>2</sup>TTA 为真实临床部署建立了一种新颖且实用的测试时自适应范式，适用于数据以随机域片段到达且伴随不可预测偏移的场景。所提出的 I-DiPT 框架在 UoM 和 PGD 的增强下，实现了自适应性能与计算成本之间的最佳权衡，仅更新约 1% 的模型参数即超越所有竞争 TTA 方法。本工作证明，图像级解耦提示能够从自由形式片段中有效学习域不变表征，为跨域医学图像分类提供稳健且稳定的自适应能力。
  </p>
</div>

<!-- 核心贡献 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">核心贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>研究了一种新颖且实用的 <strong>Free-Form Test-Time Adaptation (F<sup>2</sup>TTA)</strong> 任务，并提出 <strong>I-DiPT</strong>——首个在不可预测域偏移下将分类模型适配到自由形式域片段的框架。</li>
  <li>提出 <strong>Uncertainty-oriented Masking (UoM)</strong>，通过不确定性驱动的掩码一致性学习，促使图像级提示从单张输入图像中获取充分信息。</li>
  <li>开发 <strong>Parallel Graph Distillation (PGD)</strong>，通过并行定制图网络保留并蒸馏先前提示中的历史知识，以实现有效的自适应。</li>
  <li>在乳腺癌组织病理和青光眼眼底图像分类基准测试中，<strong>展现出优于最先进</strong> STTA 和 CTTA 方法的性能，准确率随时间稳步提升，并在不同不稳定性水平下保持鲁棒。</li>
</ul>

<!-- 作者 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Wei Li, Jingyang Zhang, Lihao Liu, Guoan Wang, <strong>Junjun He</strong>, Yang Chen, Lixu Gu
</p>

<!-- 页脚链接 -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/mar-cry/F2TTA" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">&larr; 返回项目列表</a>
</div>

</div>
