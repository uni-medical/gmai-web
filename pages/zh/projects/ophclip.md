---
layout:    page
title:     "OphCLIP"
permalink: /zh/projects/ophclip/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← 项目</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">手术 AI · 眼科手术</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  OphCLIP：眼科手术视频-语言分层检索增强预训练
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  面向眼科手术工作流理解的分层检索增强视觉-语言预训练框架，构建于迄今最大规模眼科手术视频-文本数据集 OphVL
</p>

<!-- 机构条 -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">上海人工智能实验室与蒙纳士大学联合主导</strong>，携手斯特拉斯堡大学、慕尼黑工业大学、密歇根大学、香港理工大学、上海交通大学、厦门大学等合作完成。
</div>

<!-- 资源链接 -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:.75rem;">
  <a href="https://github.com/minghu0830/OphCLIP" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://arxiv.org/abs/2411.14522" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv 论文</a>
</div>

<!-- 会议标识 -->
<div style="font-size:.75rem;font-weight:600;color:#059669;margin-bottom:2.5rem;">ICCV 2025</div>

<!-- 主图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/ophclip/ophclip1.png' | relative_url }}"
       alt="OphCLIP：数据集规模对比与零样本准确率增益"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图 1. 上：OphVL 规模是现有手术 VLP 数据集的 15 倍，包含 375K 视频-文本对。下：OphCLIP（深蓝）在相位识别基准上持续超越 CLIP 和 CLIP*。
  </figcaption>
</figure>

<!-- 引言 -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  视觉-语言预训练（VLP）使模型具备了超越预定义标签的开放世界泛化能力——这在手术场景中至关重要，因为手术操作、器械和患者解剖的多样性使得固定标签集难以胜任。然而，将 VLP 应用于眼科手术面临独特挑战：视觉-语言数据有限、手术工作流复杂且耗时数小时，且需要从精细手术动作到全局临床推理的层次化理解。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  为解决这些挑战，我们推出了 <strong>OphVL</strong>——首个面向眼科手术的大规模层次化 VLP 数据集，包含超过 <strong>37.5 万视频-文本对</strong>，来自 7,500 小时手术视频。这使 OphVL 的规模达到现有手术 VLP 数据集的 15 倍。数据集涵盖丰富的属性维度：手术阶段、操作步骤、器械使用、用药、疾病病因、手术目标及术后护理。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  基于 OphVL，我们提出 <strong>OphCLIP</strong>——一个分层检索增强 VLP 框架。OphCLIP 通过对齐视频片段与详细解说学习短期表征，通过匹配完整视频与结构化标题摘要学习长期表征，并进一步利用静默手术视频知识库实现基于检索的监督增强。在 <strong>11 个基准数据集</strong>上的评估表明，OphCLIP 具备稳健的零样本泛化能力，确立了其作为眼科手术基础模型的地位。
</p>

<!-- 核心亮点 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">🌟 核心亮点</h2>

<!-- 亮点 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 — OphVL：最大规模眼科手术 VLP 数据集
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    OphVL 包含 <strong>37.5 万视频-文本对</strong>，提取自 13,654 个解说视频和 30,636 个静默视频（总计 9,363 小时）。在三位执业眼科医师的协助下，团队整理了超过 3,000 个眼科手术术语，用于指导 YouTube 频道发现和视频采集。严格的数据清洗流水线——解说风格过滤、基于 Whisper Large-V3 的 ASR 转录、SurgicBERTa 去噪及 LLM 引导的文本改写——产出高质量层次化视频-文本对。
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    OphVL 涵盖数以万计的属性组合，包括手术类型、阶段/操作/动作、器械、用药、眼疾病因、手术目标和术后护理建议——是迄今最全面的眼科手术数据集。
  </p>
</div>

<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/ophclip/ophclip3.png' | relative_url }}"
       alt="OphVL 数据构建流水线"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图 2. OphVL 构建流水线——从 YouTube 频道发现、解说风格过滤，到 ASR 转录、SurgicBERTa 去噪、LLM 文本提取，最终生成层次化视频-文本对。左侧金字塔展示了结构化手术概念层次。
  </figcaption>
</figure>

<!-- 亮点 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 — 分层检索增强预训练
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    OphCLIP 在<strong>两个层次</strong>上进行视觉-语言预训练。在<em>片段级</em>，短视频片段通过对比学习与详细解说文本对齐，捕捉精细的手术动作和器械使用。在<em>视频级</em>，完整手术视频与高层标题摘要匹配，构建长期手术流程上下文和临床推理能力。
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    核心创新是<strong>静默视频检索增强</strong>：一个动态更新的记忆库存储 3 万余个静默手术视频的多模态嵌入。系统使用最大内积搜索（MIPS）为每个解说视频检索最相关的 top-K 静默视频，将其作为辅助监督信号。这促进了解说视频与静默视频之间的知识迁移——模拟外科医生同时从有讲解和无讲解手术录像中学习的过程。
  </p>
</div>

<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/ophclip/ophclip4.png' | relative_url }}"
       alt="OphCLIP 框架：片段级和视频级预训练，结合静默视频知识库"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图 3. OphCLIP 框架。解说视频在片段级（解说对齐）和视频级（标题对齐）处理。静默视频构成动态更新的知识库，通过最大内积搜索检索 top-K 相关条目以增强视频级预训练。
  </figcaption>
</figure>

<!-- 亮点 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 — 最优零样本手术理解性能
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    OphCLIP 在 11 个基准数据集上取得了强劲的零样本性能，覆盖手术阶段识别和多器械识别任务。在 Cataract-1K 上，OphCLIP 达到 <strong>62.8% 准确率 / 48.5% F1</strong>——对比 CLIP 的 6.9%/2.0%。在 Cat-21 上达到 <strong>41.4% / 28.8%</strong>——将 CLIP 的性能提升近三倍。这些增益在细粒度（操作级）和粗粒度（阶段级）任务上均保持一致。
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    在多器械识别方面，OphCLIP 将假阳性率从 100%（CLIP）大幅降至 45-51%，同时提升 mAP。在使用 100% 训练数据的少样本线性探测中，OphCLIP 在 Cat-21 上达到 72.1% 准确率——展示了强大的可迁移视觉表征。
  </p>
</div>

<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/ophclip/ophclip5.png' | relative_url }}"
       alt="零样本性能对比表"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    表 1. 阶段识别（准确率/F1）和器械识别（FPR/mAP）零样本对比。OphCLIP 在所有基准上持续超越 CLIP、SLIP 和 LaCLIP。
  </figcaption>
</figure>

<!-- 亮点 04 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    04 — 具有临床意义的注意力模式
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    注意力图可视化表明 OphCLIP 学会了具有临床意义的关注模式。在阶段识别（如超声乳化）中，OphCLIP 聚焦于相关器械和解剖结构，而原始 CLIP 则关注无关背景区域。在器械识别中，OphVL 预训练使 CLIP* 和 OphCLIP 能够一致地关注领域特定工具（如晶体注入器）。
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    这种跨模态理解——模型在视觉数据中优先关注与文本中手术概念对应的临床相关区域——表明 OphCLIP 真正内化了眼科手术知识，而非依赖虚假视觉关联。
  </p>
</div>

<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/ophclip/ophclip6.png' | relative_url }}"
       alt="注意力图可视化对比"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图 4. 在未见 Cataract-1K 数据集上的注意力图对比。左：阶段识别（"超声乳化"），OphCLIP 聚焦于器械和解剖结构。右：器械识别中，OphCLIP 正确关注晶体注入器。原始 CLIP 显示弥散的非特异性注意力。
  </figcaption>
</figure>

<!-- 结语 -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结语</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    OphCLIP 开创了眼科手术 AI 的新范式：结合最大规模手术 VLP 数据集（OphVL, 37.5 万对）与分层检索增强框架，同时从解说视频和静默视频中学习。在 11 个基准上的稳健零样本性能与具有临床意义的注意力模式，共同奠定了 OphCLIP 作为眼科手术工作流理解基础模型的地位，为更专业化、情境感知的眼科手术 AI 应用开辟了新方向。
  </p>
</div>

<!-- 主要贡献 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">主要贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>构建了 <strong>OphVL</strong>——首个大规模眼科手术 VLP 数据集，包含 37.5 万视频-文本对和 7,500 小时视频，规模达现有手术 VLP 数据集的 15 倍。</li>
  <li>提出<strong>分层视觉-语言预训练</strong>，通过交替训练策略同时学习细粒度（片段-解说）和长期（视频-标题）表征。</li>
  <li>引入<strong>静默视频检索增强</strong>——一个包含 3 万余静默手术视频的动态更新记忆库，通过跨视频知识迁移丰富多模态学习。</li>
  <li>在 11 个基准数据集上取得<strong>最优零样本性能</strong>，覆盖手术阶段识别和多器械识别，确立 OphCLIP 为眼科手术基础模型。</li>
</ul>

<!-- 作者团队 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者团队</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:.5rem;">
  Ming Hu, Kun Yuan, Yaling Shen, Feilong Tang, Xiaohao Xu, Lin Zhou, Wei Li, Ying Chen, Zhongxing Xu, Zelin Peng, Siyuan Yan, Vinkle Srivastav, Diping Song, Tianbin Li, Danli Shi, Jin Ye, Nicolas Padoy, Nassir Navab, <strong>Junjun He</strong>, Zongyuan Ge
</p>
<p style="font-size:.75rem;color:#64748b;margin-bottom:3rem;">ICCV 2025</p>

<!-- 底部链接 -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/minghu0830/OphCLIP" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>
  <a href="https://arxiv.org/abs/2411.14522" target="_blank" rel="noopener" class="pub-btn">arXiv 论文</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">← 返回项目列表</a>
</div>

</div>
