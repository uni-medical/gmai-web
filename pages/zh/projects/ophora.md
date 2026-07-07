---
layout:    page
title:     "Ophora"
permalink: /zh/projects/ophora/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; 项目</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">眼科手术 AI</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  Ophora：大规模数据驱动的文本引导眼科手术视频生成模型
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  首个根据自然语言指令生成逼真眼科手术视频的开创性模型，基于 160K+ 视频-指令对构建
</p>

<!-- 机构条 -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">上海人工智能实验室主导</strong>，携手上海交通大学、蒙纳士大学、华东师范大学、温州医科大学附属眼视光医院、上海创新研究院及帝国理工学院合作完成。
</div>

<!-- 资源链接 -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/uni-medical/Ophora" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
</div>

<!-- 主图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/ophora/overview.jpg" alt="Ophora 框架：从叙述视频到 Ophora-160K 的综合数据整理流程，以及面向隐私保护的渐进式视频-指令微调眼科手术视频生成" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图 1. Ophora 概览。综合数据整理流程从叙述视频中构建大规模 Ophora-160K 数据集。渐进式视频-指令微调将在自然视频-文本对上预训练的 T2V 模型中的时空知识迁移至隐私保护的眼科手术视频生成任务。
  </figcaption>
</figure>

<!-- 引言 -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  在眼科手术领域，开发能够理解手术视频并预测后续操作的 AI 系统需要大量高质量标注的眼科手术视频，而此类数据因隐私问题和标注成本难以获取。文本引导的视频生成（T2V）通过根据医生指令生成眼科手术视频，为解决这一问题提供了一条有前景的路径。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  Ophora 是首个能够根据自然语言指令生成眼科手术视频的开创性模型。该方法首先提出了一套<strong>综合数据整理</strong>流程，将叙述性眼科手术视频转换为包含超过 <strong>160K 视频-指令对</strong>的大规模高质量数据集（Ophora-160K）。随后，通过<strong>渐进式视频-指令微调</strong>方案，将在自然视频-文本数据集上预训练的 T2V 模型中丰富的时空知识迁移至隐私保护的眼科手术视频生成任务。实验表明，Ophora 能够生成逼真且可靠的眼科手术视频，并通过定量分析与眼科医生反馈双重验证。
</p>

<!-- 核心亮点 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">核心亮点</h2>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; Ophora-160K：大规模视频-指令数据集
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Ophora-160K 包含从 9,819 个叙述性眼科手术视频中提取的 <strong>162,185 个视频片段-指令对</strong>，平均片段时长为 5.54 秒。该数据集通过综合数据整理流程构建，包括利用 Qwen2.5-72B 进行<strong>叙述信息精炼</strong>以去除字幕中的无关信息并将其转化为生成指令，以及利用 PySceneDetect 进行<strong>基于动态特性的过滤</strong>以剔除时间动态异常的片段。分辨率低于 720&times;480 的片段被进一步移除以确保质量。
  </p>
</div>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; 渐进式视频-指令微调与隐私保护
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Ophora 以 CogVideoX-2b 为骨干网络，采用两阶段训练策略。<strong>迁移预训练</strong>阶段使用完整的 Ophora-160K 数据集对去噪网络进行持续预训练，同时保持 T5 编码器与 VAE 冻结不变，并在多 GPU 间采用时间步子区间采样以提升训练效率。<strong>隐私保护微调</strong>阶段利用 Qwen2.5-VL-72B 检测并过滤含有敏感信息（字幕、水印）的视频，构建包含超过 28K 视频-指令对的隐私保护子集 <strong>Ophora-28K</strong>，用于微调以增强隐私保护同时避免覆盖先前习得的时空知识。
  </p>
</div>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; 卓越的生成质量与下游影响
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    与当前最先进的手术视频生成模型 Endora 和 Bora 相比，Ophora 在所有指标上均取得最优性能，FID 和 FVD 分数最低，CLIPScore 达到 <strong>39.19</strong>（最高），充分证明了优异的视频-文本一致性。眼科医生基于七项标准对 600 个生成视频的评估证实，生成场景具有逼真的手术环境、合理的器械使用和连贯的操作流程。作为数据增强工具，Ophora 合成的视频有效提升了下游 OphNet 眼科手术工作流分类性能，其中 MViTv2 在测试集上的阶段级 Top-1 准确率从 <strong>37.92% 提升至 42.24%</strong>，取得最大幅度的提升。
  </p>
</div>

<!-- 结论 -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结论</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    Ophora 为文本引导的眼科手术视频生成开创了一条全新路径，展现了发展通用手术 AI 系统的巨大潜力。通过将综合数据整理流程与渐进式视频-指令微调相结合，Ophora 能够依据医生指令生成逼真且可靠的眼科手术视频，同时保护患者隐私。所生成的视频可作为有效的增强数据，用于提升下游眼科手术工作流理解，解决了眼科领域标注手术视频数据严重不足的关键难题。
  </p>
</div>

<!-- 核心贡献 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">核心贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>提出了一套<strong>综合数据整理</strong>流程，将叙述性眼科手术视频转化为 Ophora-160K 数据集——一个包含来自 9,819 个源视频、超过 162K 视频-指令对的大规模高质量数据集。</li>
  <li>提出了<strong>渐进式视频-指令微调</strong>方案，通过两阶段策略（迁移预训练 + 隐私保护微调），将在自然视频上预训练的 T2V 模型中的时空知识迁移至隐私保护的眼科手术视频生成任务。</li>
  <li>在所有评估模型中取得了<strong>最优的视频生成质量</strong>，FID、FVD 和 CLIPScore 全面领先，并通过定量分析和眼科医生在七项逼真度标准上的反馈双重验证。</li>
  <li>验证了合成视频对眼科手术工作流理解的<strong>下游促进作用</strong>，在 OphNet 阶段和操作分类任务上取得了最大性能提升。</li>
</ul>

<!-- 作者 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Wei Li, Ming Hu, Guoan Wang, Lihao Liu, Kaijing Zhou, Junzhi Ning, Xin Guo, Zongyuan Ge, Lixu Gu, <strong>Junjun He</strong>
</p>

<!-- 底部链接 -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/uni-medical/Ophora" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">&larr; 返回项目列表</a>
</div>

</div>
