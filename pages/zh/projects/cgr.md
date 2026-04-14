---
layout:    page
title:     "CGR"
permalink: /zh/projects/cgr/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← 项目</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">医学图像分割中的持续学习</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  面向任务增量分割的综合生成重放：应对外观与语义的并发遗忘
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  一种新颖的 Bayesian Joint Diffusion 框架，通过合成图像-掩码对来克服任务增量医学图像分割中的外观遗忘与语义遗忘
</p>

<!-- 机构条 -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">由上海交通大学主导</strong>，联合香港中文大学、上海交通大学医疗机器人研究院及东南大学共同合作。
</div>

<!-- 资源链接 -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/jingyzhang/CGR" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
</div>

<!-- 主图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/cgr/overview.jpg" alt="CGR 框架：Bayesian Joint Diffusion 模型结合 Task-Oriented Adapter，用于跨心脏、眼底和前列腺分割任务合成图像-掩码对" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图 1. 所提出的 Comprehensive Generative Replay (CGR) 框架示意图，用于前列腺、眼底和心脏分割的任务增量学习。Bayesian Joint Diffusion (BJD) 模型保持图像-掩码的对应关系，而 Task-Oriented Adapter (TOA) 对扩散模型进行调制，实现跨多样化任务的可扩展数据合成。
  </figcaption>
</figure>

<!-- 引言 -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  通用分割模型因其能够处理来自不同图像源的多样化对象而日益受到青睐。任务增量学习 (Task-Incremental Learning, TIL) 提供了一种隐私保护的训练范式，通过顺序到达的任务进行训练，而非因严格的数据共享政策而集中收集数据。然而，任务演化可能涉及广泛的范围，包括图像外观和分割语义的双重偏移及其复杂的关联，从而导致<strong>外观与语义的并发遗忘</strong>。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  CGR 通过一种新颖的框架来应对这一挑战，该框架通过合成图像-掩码对来模拟过去任务的数据，从而恢复外观知识和语义知识。该方法聚焦于两个关键方面：使用 <strong>Bayesian Joint Diffusion (BJD)</strong> 模型建模图像-掩码的对应关系，以及通过 <strong>Task-Oriented Adapter (TOA)</strong> 重新校准提示嵌入来调制扩散模型，从而提升面向多样化任务的可扩展性。在涵盖心脏、眼底和前列腺分割的增量任务实验中，CGR 相较于现有的域增量和类增量方法展现出明显优势。
</p>

<!-- 核心亮点 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">核心亮点</h2>

<!-- 亮点 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; Bayesian Joint Diffusion (BJD)：结构真实的合成
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    与对图像和掩码同时添加噪声的朴素联合扩散方法不同（这种方法容易破坏两者的对应关系），BJD 利用贝叶斯框架，通过<strong>条件分布</strong>建模图像-掩码的对应关系。在条件图像去噪过程中使用无噪声掩码作为可靠参考，在条件掩码去噪过程中使用干净图像作为参考，从而使 BJD 能够保持外观与语义之间的精确对齐。这种条件去噪方法确保了图像-掩码对的结构真实合成，为不同分割目标保留了正常的解剖形状。
  </p>
</div>

<!-- 亮点 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; Task-Oriented Adapter (TOA)：可扩展的多任务重放
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    BJD 需要跨越先前任务的多样化数据分布进行扩展，以有效地模拟每个任务。然而，基于 CLIP 的提示嵌入是在自然语言-图像数据库上预训练的，可能与定制的医学任务不兼容。TOA 通过为每个任务使用一个任务特定的轻量级两层适配器来<strong>重新校准基于 CLIP 的嵌入</strong>，从而解决了这一问题。重新校准的嵌入通过交叉注意力机制调制去噪网络，增强了任务内分布的紧凑性和任务间分布的可分离性，实现了可扩展的数据合成。
  </p>
</div>

<!-- 亮点 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; 最优的任务增量性能
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    在心脏 MRI 分割（320 名受试者）、眼底分割（1060 名受试者）和前列腺 MRI 分割（116 名受试者）上的评估表明，CGR 取得了最接近联合训练（性能上界）的最佳表现。在 Cardiac&rarr;Fundus&rarr;Prostate 的学习顺序下，CGR 达到了 <strong>88.71%</strong> 的平均 DSC，而联合训练为 89.98%，显著超越了最佳域增量方法 GAR（86.94%）<strong>1.77%</strong> DSC，以及最佳类增量方法 HSI（85.72%）<strong>2.99%</strong> DSC。CGR 在正向和反向学习顺序下均展现出一致的鲁棒性。
  </p>
</div>

<!-- 结论 -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结论</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    CGR 提出了首个面向医学图像分割的任务增量学习范式，能够适应具有多样化目标的广泛任务范围。通过结合 Bayesian Joint Diffusion 和 Task-Oriented Adapter 合成图像-掩码对，CGR 全面克服了外观与语义的并发遗忘，达到了接近离线联合训练上界的性能。该工作更广泛的意义在于，为以隐私保护的方式积累通用分割能力提供了一条有前景的路径，这对于医学影像领域通用人工智能的发展具有重要价值。
  </p>
</div>

<!-- 核心贡献 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">核心贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>提出了 <strong>Comprehensive Generative Replay (CGR)</strong> &mdash; 首个面向医学图像分割的 TIL 框架，通过生成图像-掩码对来复现过去任务的数据，从而减轻跨多样化任务的外观与语义并发遗忘。</li>
  <li>设计了一种新颖的 <strong>Bayesian Joint Diffusion (BJD)</strong> 模型，用于结构真实的图像-掩码对合成，将其对应关系建模为条件分布，并通过条件去噪进行优化，以保持外观与语义之间的精确对齐。</li>
  <li>提出了 <strong>Task-Oriented Adapter (TOA)</strong>，通过重新校准基于 CLIP 的嵌入来调制扩散模型，促进面向多样化任务的合成可扩展性，并实现内存高效的任务特定适配。</li>
  <li>在心脏、眼底和前列腺分割任务上取得了<strong>最优性能</strong>，遗忘程度极小，在不同学习顺序下均明显优于域增量和类增量学习方法。</li>
</ul>

<!-- 作者 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Wei Li, Jingyang Zhang, Pheng-Ann Heng, Lixu Gu
</p>

<!-- 底部链接 -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/jingyzhang/CGR" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">← 返回项目列表</a>
</div>

</div>
