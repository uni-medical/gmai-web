---
layout:    page
title:     "UniMedVL"
permalink: /zh/projects/unimedvl/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; 项目</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">医学多模态大模型</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  UniMedVL：统一医学多模态理解与生成
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  首个通过"观察-知识-分析"框架在单一架构内耦合图像理解与生成的统一医学模型
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">由上海人工智能实验室主导</strong>，联合复旦大学、上海创新研究院、斯坦福大学和字节跳动 Seed 共同研究。
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://arxiv.org/abs/2505.21899" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv 论文</a>
  <a href="https://github.com/uni-medical/UniMedVL" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/overview.jpg" alt="UniMedVL：观察-知识-分析框架统一医学图像理解与生成" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图1. UniMedVL 与观察-知识-分析（OKA）框架总览。与仅能生成图像而无法提供诊断解释的模型或仅能提供文本解读而无法输出视觉内容的单一能力模型不同，UniMedVL 将理解与生成耦合，实现相互增强。
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  医学诊断从根本上要求模型能够处理多模态医学输入——影像、病史、症状描述——并产生包括文本报告和标注或分割掩码等视觉内容在内的多样化输出。然而，现有的医学AI模型将这一本应统一的流程割裂开来：图像理解模型能解读影像却无法产生视觉输出，而图像生成模型能产生视觉输出却无法提供文本解释。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  UniMedVL 通过名为<strong>观察-知识-分析（OKA）</strong>的多层级框架解决了这一问题。在观察层面，我们构建了 <strong>UniMed-5M</strong>，一个包含超过560万样本的数据集，将多样化的单模态数据重新组织为跨8种影像模态的多模态配对。在知识层面，我们提出了<strong>渐进式课程学习</strong>策略，使模型同步学习医学多模态理解与生成知识。在分析层面，我们推出了 <strong>UniMedVL</strong>——首个在单一架构内同时处理图像理解与生成任务的医学统一模型，无需手动重载模型检查点。
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">核心亮点</h2>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; UniMed-5M：大规模多模态医学数据集
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    UniMed-5M 包含超过 <strong>560万</strong> 个多模态医学样本，覆盖 <strong>8种主要影像模态</strong>，通过严格的质量控制流程构建。原始数据集经过分辨率和文本质量的粗筛，随后利用 MedGemma-27b 和 MedSigLIP 进行医学对齐评分以确保临床相关性。由五位医学专家进行验证，评分者间一致性良好（&kappa; > 0.80）。该数据集将多样化的单模态数据重新组织为统一的多模态输入-输出配对，包含5种交错任务：医学图像提示分割、超分辨率、反事实生成、虚拟免疫组化染色和跨模态合成。
  </p>
</div>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; 渐进式课程学习
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    UniMedVL 通过精心设计的三阶段课程进行训练，逐步从基础医学模式识别提升至复杂的多模态能力。<strong>第一阶段——基础训练</strong>在完整的 UniMed-5M 数据集上建立基本的医学图像理解与生成能力。<strong>第二阶段——指令微调</strong>通过蒸馏思维链（DCOT）改善理解任务的指令遵循能力，并通过描述增强生成（CAG）提升生成任务的表现。<strong>第三阶段——统一多模态训练</strong>在结合理解与生成的复杂交错任务上进行微调，使两条通路之间实现双向知识共享。
  </p>
</div>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; 最先进的统一性能
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    UniMedVL 总参数量为14B（推理时激活7B），在统一模型中取得了 <strong>5项医学图像理解基准上的最优性能</strong>——在 OmniMedVQA 上得分85.8%（对比 HealthGPT-L14 的74.4%），在 GMAI-MMBench 上达到60.75%——同时在 <strong>8种医学影像模态</strong>的生成质量上匹配专用模型，平均 gFID 为96.29，BioMedCLIP 得分为0.706。关键的消融实验证实，联合训练始终优于单任务变体，验证了理解与生成能力在统一架构中相互增强。
  </p>
</div>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结论</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    UniMedVL 为统一医学AI建立了新范式，在单一模型中同时执行图像理解与生成。通过在超过500万医学样本上的广泛实验验证，UniMedVL 证明了 OKA 框架——结合大规模多模态数据构建、渐进式课程学习和统一架构——能够实现双向知识共享，同时提升理解和生成质量。这项工作代表着迈向真正集成化医学AI系统的关键一步，其中理解与生成能力协同增强临床工作流程。
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">核心贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>构建了 <strong>UniMed-5M</strong>——一个包含超过560万多模态医学样本、覆盖8种影像模态的大规模数据集，通过严格的质量控制将多样化的单模态数据集重新组织为统一的多模态输入-输出配对。</li>
  <li>设计了<strong>渐进式课程学习</strong>，一种三阶段训练范式（基础训练 &rarr; 指令微调 &rarr; 统一多模态训练），系统性地构建跨模态理解-生成能力，并实现双向知识迁移。</li>
  <li>提出了 <strong>UniMedVL</strong>，首个在单一架构内处理多模态输入并同时生成文本和视觉输出的医学统一多模态模型——无需为不同任务类型加载独立的模型检查点。</li>
  <li>在统一模型中取得了医学 VQA 基准上的<strong>最先进性能</strong>，同时在8种影像模态的生成质量上匹配专用模型，证明联合训练带来的是相互增强而非性能折衷。</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Junzhi Ning*, Wei Li*, Cheng Tang*, Jiashi Lin, Chenglong Ma, Chaoyang Zhang, Jiyao Liu, Ying Chen, Shujian Gao, Lihao Liu, Yuandong Pu, Huihui Xu, Chenhui Gou, Ziyan Huang, Yi Xin, Qi Qin, Zhongying Deng, Diping Song, Bin Fu, Guang Yang, Yuanfeng Ji, Tianbin Li, Yanzhou Su, Jin Ye, Shixiang Tang, Ming Hu, <strong>Junjun He</strong>
  <br><span style="font-size:.75rem;color:#94a3b8;">* 同等贡献（共同第一作者）</span>
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://arxiv.org/abs/2505.21899" target="_blank" rel="noopener" class="pub-btn">arXiv 论文</a>
  <a href="https://github.com/uni-medical/UniMedVL" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">&larr; 返回项目列表</a>
</div>

</div>
