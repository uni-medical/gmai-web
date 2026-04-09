---
layout:    page
title:     "SlideChat — GMAI Lab"
permalink: /zh/projects/slide-chat/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← 项目</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">临床 AI · 计算病理学</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  SlideChat
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  面向全切片病理图像理解的大型视觉语言助手
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">上海人工智能实验室主导</strong>，联合厦门大学、华东师范大学、斯坦福大学、莫纳什大学共同研发。
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/uni-medical/SlideChat" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://arxiv.org/abs/2410.11761" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv 论文</a>
  <a href="https://huggingface.co/General-Medical-AI/SlideChat_Weight" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 模型权重</a>
  <a href="https://huggingface.co/datasets/General-Medical-AI/SlideChat" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 数据集</a>
  <a href="https://uni-medical.github.io/SlideChat.github.io/" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🍎 项目主页</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/slide-chat/SlideChat1.png' | relative_url }}"
       alt="SlideChat 概览 — 首个面向全切片病理图像理解的视觉语言助手"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    SlideChat：首个能够理解 Gigapixel 全切片病理图像的视觉语言助手，支持全面的病理描述生成和多场景对话问答。
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  全切片图像（WSI）是数字病理学的金标准，单张扫描可超过 100,000 × 100,000 像素，完整保留了临床诊断所需的组织空间上下文。然而，现有多模态大语言模型（MLLMs）普遍局限于图像块级别（patch-level）分析，丢失了病理医生赖以判断的全局组织结构与跨区域关联信息。SlideChat 是首个专为 Gigapixel 全切片图像整体理解而设计的视觉语言助手，以可扩展的临床级架构填补了这一关键空白。论文已被 <strong>CVPR 2025</strong> 接收。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  为支撑 SlideChat 的训练，研究团队构建了 <strong>SlideInstruction</strong>——迄今最大的 WSI 指令跟随数据集，包含 4.2K 张 WSI 配对描述和 176K 条视觉问答对，源自 4,915 份 TCGA 病理报告，通过 GPT-4 引导的自动化流程精心筛选。此外，团队还构建了 <strong>SlideBench</strong>——一个覆盖多种癌症类型、经病理专家审核的多模态 WSI 评测基准。SlideChat 在 22 个评测任务中的 18 个取得当前最优性能。
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">🌟 核心亮点</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 — SlideInstruction：最大规模 WSI 指令跟随数据集
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    研究团队从 TCGA 数据库的 4,915 份 WSI-报告对中精心筛选，覆盖 4,028 名患者、10 种癌症类型。借助 GPT-4 分三阶段生成高质量指令数据：报告净化（去除行政信息与技术噪声）、描述生成（4,181 条简洁的临床 WSI 描述）、问答对生成（175,753 条覆盖 13 个细分类别的问答对）。这 13 个细分类别分属三大临床领域——显微形态、病理诊断与临床指导，完整映射真实病理工作流程。
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/slide-chat/SlideChat3.png' | relative_url }}"
       alt="SlideInstruction 数据生成流程：GPT-4 从病理报告中提取 WSI 描述与问答对"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    SlideInstruction 生成流程：利用 GPT-4 从 TCGA 病理报告中提取 WSI-描述对及结构化问答对（开放式与封闭式），涵盖显微形态、诊断与临床三大场景。
  </figcaption>
</figure>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 — 面向 Gigapixel 全切片理解的四组件架构
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    SlideChat 将每张 WSI 在 20× 放大倍数下切割为不重叠的 224×224 图像块。冻结的 CONCH 块级编码器提取细粒度局部特征（细胞结构、核形态）；基于 LongNet 稀疏注意力机制的切片级编码器处理完整 patch token 序列——支持远超标准 Transformer 的序列长度——生成捕获全局组织结构的上下文嵌入；多模态投影器将视觉特征对齐至语言模型的嵌入空间；Qwen2.5-7B-Instruct 作为骨干 LLM。训练分两阶段进行：跨域对齐（仅更新投影器与切片编码器，使用 4.2K 描述数据），再到视觉指令学习（全组件可训练，使用 176K 问答对）。
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/slide-chat/SlideChat2.png' | relative_url }}"
       alt="SlideChat 架构：块级编码器（CONCH）+ LongNet 切片级编码器 + 多模态投影器 + LLM"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    SlideChat 整体架构。WSI 图像块由 CONCH 编码（块级），经 LongNet 切片级编码器捕获全局上下文，再投影至 LLM 嵌入空间以支持对话推理。
  </figcaption>
</figure>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 — SlideBench：严格的多模态临床评测基准
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    SlideBench 是首个针对 WSI 理解的综合评测基准，涵盖描述生成（SlideBench-Caption：TCGA、CPTAC、HISTAI）和封闭式问答任务（SlideBench-VQA：TCGA、BCNB、CPTAC、HISTAI）。TCGA VQA 子集经病理专家审核，后从 10 种癌症（1,494 个样本）扩展至 31 种（3,176 个样本）。独立的 BCNB 泛化测试集（7,247 条问答、1,058 名患者、7 项分类任务）专门用于评估模型在真实临床场景中的零样本泛化能力——这是实际部署的关键要求。
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/slide-chat/SlideChat4.png' | relative_url }}"
       alt="SlideBench 评测结果：SlideChat 在描述生成与问答任务中均达到最优性能"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    SlideBench 综合性能对比。SlideChat 在 22 个任务中的 18 个达到最优，显著优于通用 MLLMs（GPT-4o、LLaVA）和专用计算病理学模型。
  </figcaption>
</figure>

<!-- Highlight 04 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    04 — CVPR 2025：18/22 任务 SOTA 与临床可解释性
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    SlideChat 在 SlideBench-VQA（TCGA）上以 81.17% 的综合准确率排名第一，超越第二名 13.47 个百分点；在零样本泛化测试 SlideBench-VQA（BCNB）上达到 54.15%。三大临床领域表现均衡：显微形态（87.64%）、病理诊断（73.27%）、临床应用（84.26%）。模型还提供通过注意力分数可视化实现的可解释性，注意力图能准确定位核质比异常增大、致密胶原沉积等具有病理意义的组织区域，使临床医生能够追溯模型推理依据。
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/slide-chat/SlideChat5.png' | relative_url }}"
       alt="SlideChat 临床演示：综合病理报告生成与注意力可解释性示例"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    SlideChat 能力展示：模型可生成包含肿瘤特征、浸润模式、分期信息和治疗建议的完整病理报告，并通过注意力图高亮标注诊断相关的关键组织区域。
  </figcaption>
</figure>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结语</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    SlideChat 代表计算病理学的里程碑式突破——首个通过对话式 AI 实现真正 Gigapixel 全切片图像理解的系统。通过将 CONCH 块级细胞精度与 LongNet 切片级上下文推理相结合，并以大规模 SlideInstruction 数据集为训练基础，SlideChat 填补了图像块分析与临床意义全切片解读之间的关键鸿沟。CVPR 2025 收录与 18/22 任务的 SOTA 成绩，加之模型、数据集、评测基准的全面开源，为 AI 辅助病理诊断、科研探索与医学教育奠定了全新基础。
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">主要贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li><strong>SlideInstruction</strong>：最大规模 WSI 指令跟随数据集，含 4.2K WSI-描述对与 176K 视觉问答对，跨 13 个临床类别，源自 4,915 份 TCGA 病理报告，GPT-4 辅助生成。</li>
  <li><strong>SlideChat</strong>：首个面向 Gigapixel WSI 理解的视觉语言助手——CONCH 块级编码器 + LongNet 切片编码器 + LLM，在 22 个任务中 18 个达 SOTA（CVPR 2025）。</li>
  <li><strong>SlideBench</strong>：综合性 WSI 多模态评测基准，涵盖 TCGA（10 → 31 种癌症）、BCNB、CPTAC、HISTAI 子集的描述与问答评测，全部经病理专家审核。</li>
  <li><strong>全面开源</strong>：SlideChat 模型权重、SlideInstruction 数据集与 SlideBench 评测框架全部公开，推动计算病理学研究生态建设。</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者团队</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Ying Chen*、Guoan Wang*、Yuanfeng Ji*†、Yanjun Li、Jin Ye、Tianbin Li、Ming Hu、Rongshan Yu、Yu Qiao、<strong>Junjun He</strong>†<br>
  <em>* 同等贡献 &nbsp;· &nbsp;† 通讯作者</em><br>
  上海人工智能实验室 · 厦门大学 · 华东师范大学 · 斯坦福大学 · 莫纳什大学
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/uni-medical/SlideChat" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>
  <a href="https://arxiv.org/abs/2410.11761" target="_blank" rel="noopener" class="pub-btn">arXiv 论文</a>
  <a href="https://huggingface.co/General-Medical-AI/SlideChat_Weight" target="_blank" rel="noopener" class="pub-btn">🤗 模型</a>
  <a href="https://huggingface.co/datasets/General-Medical-AI/SlideChat" target="_blank" rel="noopener" class="pub-btn">🤗 数据集</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">← 返回项目列表</a>
</div>

</div>
