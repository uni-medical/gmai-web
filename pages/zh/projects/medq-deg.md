---
layout:    page
title:     "MedQ-Deg"
permalink: /zh/projects/medq-deg/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; 项目</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">医学 AI 鲁棒性与基准测试</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  MedQ-Deg: 面向医学图像质量退化的多维度 MLLMs 评估基准
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  揭示 AI Dunning-Kruger 效应 &mdash; 医学 MLLMs 在图像退化导致准确率严重下降时仍保持不当的高置信度
</p>

<!-- 机构条 -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">由上海人工智能实验室与复旦大学牵头</strong>，联合上海交通大学和帝国理工学院共同研发。
</div>

<!-- 资源链接 -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://uni-medical.github.io/MedQ-Robust-web" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">项目主页</a>
</div>

<!-- 主图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/medq-deg/overview.jpg" alt="MedQ-Deg 基准框架：包含 6 个任务 30 项细粒度技能的能力层级体系、覆盖 7 种模态 18 种退化类型的退化层级体系，以及三个严重程度的数据管线" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图 1. MedQ-Deg 基准框架概览。评估由两个正交层级体系构成：能力层级将临床能力分解为 6 个任务下的 30 项细粒度技能；退化层级覆盖 7 种模态下的 18 种退化类型，每种退化在专家校准的三个严重程度（L0&ndash;L2）下实例化。
  </figcaption>
</figure>

<!-- 引言 -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  多模态大语言模型 (MLLMs) 在医学视觉-语言基准测试中展现了出色的性能，在某些情况下已接近甚至超越人类专家。然而，这些令人印象深刻的成果在很大程度上依赖于精心筛选的高质量医学图像。在真实临床环境中，医学图像常因噪声、运动伪影或硬件限制而发生退化 &mdash; 这引出了一个关键问题：MLLMs 在这些不完美条件下是否依然可靠？
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  MedQ-Deg 通过构建全面的基准来弥合这一空白，提供跨越 <strong>18 种不同退化类型</strong>、<strong>30 个细粒度能力维度</strong>和 <strong>7 种成像模态</strong>的多维评估，共包含 <strong>24,894 个问答对</strong>。每种退化在放射科专家校准下设置了 3 个严重程度。该基准还引入了 <strong>Calibration Shift</strong> 指标，用于量化模型感知置信度与实际性能之间的差距，以评估模型在退化条件下的元认知可靠性。
</p>

<!-- 核心亮点 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">核心亮点</h2>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; AI Dunning-Kruger 效应
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    本研究提供了大规模的实证证据，揭示了 <strong>AI Dunning-Kruger 效应</strong>：医学 MLLMs 即使在真实能力显著下降时仍表现出明显的过度自信。模型不仅在图像退化下遭受准确率下降，还表现出无法识别自身能力边界的显著缺陷 &mdash; 在给出错误预测的同时维持不当的高置信度。这种过度自信随退化严重程度的增加而系统性加剧 &mdash; 全部 <strong>40 个评估模型</strong>从 L0 到 L2 均呈现出持续为正且不断增大的 Calibration Shift。这一元认知失败表明，当前模型缺乏安全临床部署所需的自我感知能力。
  </p>
</div>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; 全面的层级评估框架
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    MedQ-Deg 采用三层能力层级体系，以临床医师的认知工作流程为基础。任务来源于三个顶级医学基准 &mdash; GMAI-MMBench、OmniMedVQA 和 MedXpertQA &mdash; 冗余条目经过合并，任务结构重新组织。该层级涵盖两个高层能力（医学感知与临床推理）、六个中层临床任务（解剖结构识别、影像感知、临床理解、基础科学推理、诊断推理和治疗推理）以及 <strong>30 项细粒度技能</strong>。退化类型被组织为五个基于物理机制的类别（伪影、强度抖动、分辨率与模糊、运动干扰和噪声），包含通用退化和模态特异性退化。
  </p>
</div>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; 40 个 MLLMs 的关键发现
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    对 <strong>40 个主流 MLLMs</strong> &mdash; 涵盖 9 个商用模型、21 个开源通用模型和 10 个医学专用模型 &mdash; 的全面评估揭示了若干关键发现。大多数模型存在严重的鲁棒性缺陷，表现为非线性的"悬崖效应"：感知能力在达到阈值前保持相对稳定，但一旦超过阈值，视觉-语言整合便发生灾难性崩溃。即使是表现最佳的模型（InternVL3-Instruct 78B），在 L2 严重程度下也经历了显著的准确率下降。在所有模型组中，临床理解是最强的能力维度，而推理维度（基础科学、诊断、治疗）则严重薄弱，其中治疗规划最为灾难性 &mdash; 多个开源模型的准确率骤降至接近零。
  </p>
</div>

<!-- 结论 -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结论</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    MedQ-Deg 建立了迄今为止对医学 MLLMs 在图像质量变化下行为表现最全面的刻画。通过揭示 AI Dunning-Kruger 效应，并提供跨能力维度、退化类别和成像模态的多维分析，MedQ-Deg 推动了医学 MLLMs 向真实临床实践中鲁棒且可信赖的方向发展。该基准证明，当前模型在退化条件下普遍无法校准其置信度，这对临床部署构成严重风险 &mdash; 过度自信的错误推断可能妨碍必要的人工审核。
  </p>
</div>

<!-- 核心贡献 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">核心贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>构建了 <strong>MedQ-Deg</strong> &mdash; 一个系统性基准，提供三层层级评估框架，涵盖 18 种退化类型、30 个细粒度能力维度和 7 种成像模态下的 24,894 个问答对，严重程度由放射科专家校准。</li>
  <li>引入了 <strong>Calibration Shift</strong> 定量指标，为 AI Dunning-Kruger 效应提供了大规模实证证据：医学 MLLMs 即使在真实能力下降时仍保持显著的过度自信，且这种过度自信随退化严重程度的增加而系统性加剧。</li>
  <li>对 <strong>40 个主流 MLLMs</strong>（涵盖商用、开源通用和医学专用模型）进行了广泛评估，提供了迄今为止对医学 MLLMs 在图像质量变化下跨多个能力维度和退化类别行为表现最全面的刻画。</li>
</ul>

<!-- 作者 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Jiyao Liu*, Junzhi Ning*, Chenglong Ma*, Wanying Qu, Jianghan Shen, Siqi Luo, Jinjie Wei, Jin Ye, Pengze Li, Tianbin Li, Jiashi Lin, Hongming Shan, Xinzhe Luo, Xiaohong Liu, Lihao Liu, <strong>Junjun He</strong>&dagger;, Ningsheng Xu&dagger;
</p>

<!-- 页脚链接 -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://uni-medical.github.io/MedQ-Robust-web" target="_blank" rel="noopener" class="pub-btn">项目主页</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">&larr; 返回项目列表</a>
</div>

</div>
