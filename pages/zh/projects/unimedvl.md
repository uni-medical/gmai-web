---
layout:    page
title:     "UniMedVL"
permalink: /zh/projects/unimedvl/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<div style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← 项目</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">医学 AI · 统一多模态建模 · ICML 2026</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  UniMedVL
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  基于 Observation–Knowledge–Analysis 的统一医学多模态理解与生成模型
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">面向统一医学多模态 AI 的研究项目</strong>，目标是在单一模型中联合学习医学图像理解、医学图像生成，以及视觉-文本交错推理能力。该项目由 UniMedVL 作者团队及其合作科研与高校机构共同完成。
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/uni-medical/UniMedVL" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://arxiv.org/abs/2510.15710" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv 论文</a>
  <a href="https://huggingface.co/datasets/General-Medical-AI/UniMedVL-5M" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 数据集</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/overview-tasks.png" alt="UniMedVL 在理解、生成、交错任务和传统医学影像任务上的能力总览" class="" loading="eager" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    UniMedVL 总览：模型覆盖医学图像理解、图像生成、传统任务与交错医学工作流，涉及 560 万样本、8 种影像模态、5 个理解基准和 8 类医学生成模态。
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  医学 AI 系统需要处理的不只是单张图像分类或单轮问题回答。真实诊疗流程通常要求模型读取医学影像、整合医学知识、用文本解释发现、定位异常区域、进行跨模态比较，并在某些场景下生成具有医学语义的视觉输出。现有医学多模态系统往往把这些能力拆分到不同模型中：一个模型负责视觉问答，一个模型负责报告生成，一个模型负责分割，另一个模型负责图像生成。这种碎片化设计与临床工作流并不匹配，因为医学推理与输出生成本身通常是紧密耦合的。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  <strong>UniMedVL</strong>（<strong>ICML 2026</strong> 接收）将医学理解与医学生成视为可以相互增强的能力，而不是彼此割裂的任务。该项目提出了一个使用单一参数集合进行推理的统一医学视觉语言模型，并构建了 <strong>UniMedVL-5M</strong>：一个包含超过 <strong>560 万</strong> 样本、覆盖 <strong>8 种医学影像模态</strong> 的大规模医学多模态数据集。通过 <strong>Observation–Knowledge–Analysis</strong> 框架和三阶段 progressive curriculum，UniMedVL 学习从多模态医学输入中生成文本、图像以及视觉-文本交错输出。
</p>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/unified-representation.png" alt="任务专用医学 AI 系统与 UniMedVL 共享多模态表征的对比" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    研究动机：传统医学 AI 流程通常将 VQA、报告生成、分割和图像生成拆分为不同模型，而 UniMedVL 通过共享多模态表征统一医学理解与生成。
  </figcaption>
</figure>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">核心亮点</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 — UniMedVL-5M：大规模医学多模态训练语料
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    UniMedVL-5M 将原本分散的医学数据资源重新组织为标准化的 multimodal input-output pairs。它不是把 image-caption、medical VQA、image generation 和 image translation 数据分别作为独立孤岛处理，而是将它们统一为服务于理解、生成和交错多模态任务的训练基底。该数据集覆盖 8 类主要医学影像模态，包括 color fundus photography、chest X-ray、CT、histopathology、MRI、OCT、ultrasound 和 endoscopy，使模型能够学习跨模态医学对应关系，而不是只适配单一模态。
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    数据构建流程包括模态相关的 coarse filtering、文本长度与图像分辨率检查、医学图文对齐打分，以及专家抽样审查。对齐阶段会为每张图像生成候选 caption，并通过 semantic embedding 与 MedSigLIP 的医学相似度评估原始图文对的质量。最终保留的高质量子集进一步加入交错任务监督，包括 medical prompt segmentation、super-resolution、counterfactual generation、virtual immunohistochemistry staining 和 cross-modal synthesis。
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/oka-framework.png" alt="UniMedVL 的 Observation-Knowledge-Analysis 框架、数据构建和渐进式课程训练流程" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Observation 与 Knowledge 层设计。UniMedVL-5M 通过质量过滤、对齐评分和交错任务构建整合异构医学数据；模型训练随后经过 foundation training、instruction tuning 和 unified multimodal training 三个阶段。
  </figcaption>
</figure>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 — Observation–Knowledge–Analysis：面向医学统一建模的框架
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    UniMedVL 的核心设计是 Observation–Knowledge–Analysis 框架。在 <strong>Observation</strong> 层，不同来源的医学数据被转换为对齐的多模态样本；在 <strong>Knowledge</strong> 层，模型通过 progressive curriculum learning 逐步训练：foundation training 建立基础医学视觉-语言对齐，instruction tuning 增强高质量医学指令跟随能力，unified multimodal training 则通过交错输入输出将理解与生成能力耦合起来；在 <strong>Analysis</strong> 层，最终模型使用同一套参数同时执行医学图像理解与医学图像生成。
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    这个设计的关键在于避免简单 multitask training 造成的 task interference。UniMedVL 不是直接把所有任务混在一起训练，而是先学习底层 cross-modal alignment，再进入更复杂的 instruction following 和 interleaved reasoning。最后阶段让模型接触需要同时生成文本与图像的任务，从而鼓励模型学习对诊断推理和视觉合成都有用的共享表征。
  </p>
</div>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 — 一个模型同时支持理解、生成与交错输出
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    UniMedVL 采用包含 dual visual encoders 与 Transformer backbone 的统一架构。语义视觉编码器负责提取用于医学图像理解的 token，VAE 视觉路径负责支持图像生成。视觉 token 与文本 token 被整合进共享的序列建模框架中。专门的 feed-forward layers 处理理解与生成相关表征，共享 self-attention layers 则促进跨任务信息交换。文本输出通过 next-token prediction 优化，视觉输出则在 VAE latent space 中通过 rectified flow matching 优化。
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    因此，系统可以覆盖三类任务：<strong>understanding</strong> 任务，例如 medical VQA、image captioning、diagnostic reasoning 和 report generation；<strong>generation</strong> 任务，例如 text-guided medical image synthesis；以及 <strong>interleaved</strong> 任务，例如 virtual staining、super-resolution、counterfactual generation 和 cross-modal image synthesis，这些任务要求模型联合产生视觉与文本输出。
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/qualitative-capabilities.png" alt="UniMedVL 在文本驱动生成、虚拟染色、超分辨率、反事实生成和跨模态合成上的定性示例" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    定性能力展示。UniMedVL 在统一医学多模态框架下支持 text-to-image generation、virtual staining、super-resolution、counterfactual generation 和 cross-modal synthesis。
  </figcaption>
</figure>

<!-- Highlight 04 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    04 — 兼顾医学图像理解与多模态生成质量
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    UniMedVL 在五个医学视觉理解基准上进行评估：VQA-RAD、SLAKE、PathVQA、OmniMedVQA 和 GMAI-MMBench。尽管它不是一个只针对理解任务优化的 specialist model，而是同时支持理解与生成的统一模型，UniMedVL 仍然在这些 benchmark 上达到 <strong>67.47 average score</strong>，并在 OmniMedVQA 和 GMAI-MMBench 等更复杂设置中取得较强结果。相比需要根据任务切换 checkpoint 的统一医学模型，UniMedVL 的推理过程始终保持在单一模型内完成。
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    在生成任务上，UniMedVL 在 8 种医学影像模态上的平均 <strong>FID 为 96.29</strong>，优于 generation-only variant 和通用统一多模态 baseline。模型还达到平均 <strong>BioMedCLIP Score 0.706</strong>，表明医学文本 prompt 与生成图像之间具有更强语义一致性。外部 held-out generation evaluation 进一步说明，这种提升并不局限于训练分布内部。
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/understanding-benchmarks.png" alt="UniMedVL 与 LVLM 和统一多模态模型在医学视觉理解任务上的 benchmark 对比表" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    医学视觉理解 benchmark。UniMedVL 在 VQA-RAD、SLAKE、PathVQA、OmniMedVQA 和 GMAI-MMBench 上达到 67.47 平均分，同时保持统一的理解-生成架构。
  </figcaption>
</figure>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/biomedclip-radar.png" alt="八种医学影像模态下的 BioMedCLIP 雷达图" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    多模态生成性能。UniMedVL 在 8 种医学影像模态上获得较强 BioMedCLIP alignment，说明统一训练并不必然损害生成质量，反而可以提升医学语义一致性。
  </figcaption>
</figure>

<!-- Highlight 05 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    05 — 理解与生成之间的双向迁移证据
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    UniMedVL 的一个关键经验发现是：医学理解和医学生成并不必然相互竞争。消融实验显示，加入 generation training 可以提升 understanding performance，而加入 understanding supervision 也可以改善 generation fidelity。在 foundation stage 中，相比 understanding-only variant，joint training 将 GMAI-MMBench accuracy 从 0.505 提升到 0.593；在生成实验中，引入理解监督后，平均 FID 相比 generation-only training 进一步下降。
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    交错任务结果也支持这一结论。UniMedVL 在 H&amp;E-to-IHC virtual staining 中达到 <strong>20.27 PSNR</strong>，在 MRI super-resolution 中达到 <strong>27.29 PSNR / 0.890 SSIM</strong>，并在双向 T2-FLAIR MRI translation 中达到平均 <strong>25.07 PSNR / 0.882 SSIM</strong>。这些结果说明，统一医学多模态训练可以在保留具体任务能力的同时，扩展模型对复杂医学工作流的覆盖范围。
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/bidirectional-transfer.png" alt="UniMedVL 中理解与生成双向迁移以及渐进式课程学习轨迹" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    双向迁移证据。消融实验显示，生成监督能够提升理解能力，理解监督也能改善生成质量；progressive curriculum learning 进一步增强这种跨任务协同。
  </figcaption>
</figure>

<!-- Additional Results -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">更多结果与消融实验</h2>
<figure style="margin:0 0 2rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/training-stage-ablation.png" alt="理解-生成协同和渐进式训练阶段的消融实验表" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    训练阶段消融。联合训练优于单任务变体，渐进式训练阶段在理解与生成指标上带来累积提升。
  </figcaption>
</figure>
<figure style="margin:0 0 2rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/understanding-augmentation-ablation.png" alt="医学理解任务数据增强消融实验表" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    理解任务增强。交错监督进一步提升多个医学视觉理解 benchmark 的表现。
  </figcaption>
</figure>
<figure style="margin:0 0 2rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/generation-augmentation-ablation.png" alt="生成质量数据增强消融实验表" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    生成任务增强。Caption-augmented 与 interleaved 数据降低 gFID，并提升 BioMedCLIP Score。
  </figcaption>
</figure>
<figure style="margin:0 0 2rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/interleaved-performance-tables.png" alt="外部生成、模态专用生成器、虚拟染色和超分辨率结果表" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    交错任务与生成结果。UniMedVL 在 held-out 生成数据、模态专用生成、虚拟染色和 MRI 超分辨率任务上进行评估。
  </figcaption>
</figure>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/translation-counterfactual-results.png" alt="医学图像翻译与反事实生成结果表" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    医学图像翻译与反事实生成结果。UniMedVL 在双向 MRI 翻译和反事实生成任务上取得有竞争力的性能。
  </figcaption>
</figure>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结论</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    UniMedVL 是面向统一医学多模态建模的一步：它尝试用一个模型同时完成医学图像理解、医学图像生成和视觉-文本交错工作流。它的核心意义不只是"一个模型覆盖多个任务"，而是说明经过对齐的数据构建、渐进式课程训练和联合目标设计后，理解与生成可以互相增强。当前系统仍然是研究模型而不是可直接部署的临床方案：它主要关注 2D 医学影像，评估仍依赖自动指标，真实临床使用前还需要进一步临床验证。尽管如此，UniMedVL 提供了可复用的数据集、训练范式和模型设计，为 general-purpose medical multimodal AI 的后续研究提供了基础。
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">核心贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li><strong>UniMedVL-5M</strong>：包含 560 万样本的大规模医学多模态语料，覆盖 8 种影像模态，并支持理解、生成和交错多模态任务。</li>
  <li><strong>Observation–Knowledge–Analysis framework</strong>：将医学多模态统一建模拆解为数据对齐、课程学习和统一模型分析三个层面。</li>
  <li><strong>Progressive Curriculum Learning</strong>：包含 foundation training、带医学增强监督的 instruction tuning，以及 unified multimodal training 的三阶段训练流程。</li>
  <li><strong>Unified medical vision-language model</strong>：一个无需切换 checkpoint、使用单一参数集合同时执行医学图像理解与生成的模型。</li>
  <li><strong>Empirical evidence of task synergy</strong>：benchmark 与消融实验显示，医学理解与医学生成之间存在双向迁移和协同增益。</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Junzhi Ning*, Wei Li*, Cheng Tang*, Jiashi Lin, Chenglong Ma, Chaoyang Zhang, Jiyao Liu, Ying Chen, Shujian Gao, Yuandong Pu, Huihui Xu, Chenhui Gou, Ziyan Huang, Yi Xin, Qi Qin, Diping Song, Bin Fu, Guang Yang, Yuanfeng Ji, Tianbin Li, Yanzhou Su†, Jin Ye, Shixiang Tang, Zhongying Deng, Lihao Liu, Ming Hu, <strong>Junjun He</strong>†<br>
  <em>* 同等贡献 &nbsp;· &nbsp;† 通讯作者</em>
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/uni-medical/UniMedVL" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>
  <a href="https://arxiv.org/abs/2510.15710" target="_blank" rel="noopener" class="pub-btn">arXiv 论文</a>
  <a href="https://huggingface.co/datasets/General-Medical-AI/UniMedVL-5M" target="_blank" rel="noopener" class="pub-btn">🤗 数据集</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">← 返回项目列表</a>
</div>

</div>
