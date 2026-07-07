---
layout:    page
title:     "MedQ-Bench"
permalink: /zh/projects/medq-bench/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; 项目</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">医学基准与评估</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  MedQ-Bench：评估与探索多模态大语言模型的医学图像质量评估能力
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  首个建立感知&ndash;推理范式的综合性基准，利用多模态大语言模型对医学图像质量进行语言化评估
</p>

<!-- 机构条 -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">复旦大学与上海人工智能实验室</strong>联合帝国理工学院和剑桥大学共同研发。
</div>

<!-- 资源链接 -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/liujiyaoFDU/MedQ-Bench" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
</div>

<!-- 主图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/medq-bench/overview.jpg" alt="MedQ-Bench 概览：通过感知和推理任务评估 MLLMs 在 5 种模态下的医学图像质量评估能力" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    图 1. MedQ-Bench 概览，评估 MLLMs 在医学图像质量评估中的能力：(1) 全面覆盖：横跨 5 种模态的 3,308 个样本，涵盖 40+ 种退化类型。(2) 多维度评估：感知&ndash;推理范式。
  </figcaption>
</figure>

<!-- 引言 -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  医学图像质量评估（IQA）是临床 AI 的第一道安全关卡，然而现有方法仍受限于基于标量评分的度量体系，无法反映专家评估中核心的描述性、类人推理过程。为弥补这一不足，本工作提出了 <strong>MedQ-Bench</strong>，一个综合性基准，建立了利用多模态大语言模型（MLLMs）对医学图像质量进行语言化评估的感知&ndash;推理范式。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  MedQ-Bench 定义了两个互补任务：<strong>MedQ-Perception</strong> 通过人工策划的基础视觉属性问题考查低层级感知能力；<strong>MedQ-Reasoning</strong> 包含无参考推理和对比推理任务，使模型评估与人类对图像质量的类人推理过程保持一致。该基准涵盖 <strong>5 种成像模态</strong>（MRI、CT、内窥镜、组织病理学、眼底摄影）及超过 <strong>40 种质量属性</strong>，共计 2,600 个感知查询和 708 个推理评估。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  对 <strong>14 个前沿 MLLMs</strong> 的严格评估——包括开源模型、医学专用模型和商业系统——表明，模型展现出初步但不稳定的感知与推理能力，准确率尚不足以满足可靠的临床应用需求。表现最佳的 AI 模型（GPT-5）在感知任务上得分 <strong>68.97%</strong>，显著低于人类专家的 <strong>82.50%</strong>，凸显了针对医学 IQA 对 MLLMs 进行定向优化的迫切需要。
</p>

<!-- 核心亮点 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">核心亮点</h2>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; 感知&ndash;推理评估范式
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    MedQ-Bench 开创了一套系统性评估方法论，映射临床医师的认知工作流程：先感知质量相关属性，再推理其临床影响。<strong>MedQ-Perception</strong> 使用单图提示评估直接视觉感知，包含三种题型——是非题、What 题（退化识别）和 How 题（严重程度评估）——沿两个轴组织：退化严重程度等级以及通用与模态特定问题。<strong>MedQ-Reasoning</strong> 包含无参考推理任务（要求模型生成全面的质量分析）和对比推理任务（在粗粒度和细粒度难度级别上评估图像对之间的细致区分能力）。
  </p>
</div>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; 多维评判协议与人机对齐验证
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    为评估推理能力，本工作设计了多维评判协议，沿 <strong>四个互补维度</strong> 对模型输出进行评分：完整性（关键视觉信息的覆盖度）、精确性（与参考一致且无矛盾）、一致性（推理与结论之间的内在逻辑连贯性）和质量准确性（质量对比判断的正确性）。通过 <strong>200 个案例</strong> 由三位经认证的医学影像专家进行人机对齐验证，结果表明强一致性：完整性准确率 <strong>83.3%</strong>，精确性 <strong>87.0%</strong>，一致性 <strong>90.5%</strong>，加权二次 Cohen's kappa 值为 <strong>0.774&ndash;0.985</strong>。
  </p>
</div>

<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; 全面实证分析揭示关键差距
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    对 14 个 MLLMs 的评估揭示了清晰的性能层级：闭源前沿模型领先（GPT-5 感知得分 <strong>68.97%</strong>），其次是开源模型（Qwen2.5-VL-72B 得分 <strong>63.14%</strong>），而医学专用模型的表现出乎意料地低于预期（MedGemma-27B 得分 <strong>57.16%</strong>）。轻度退化是最具挑战性的检测场景，平均准确率降至 <strong>56%</strong>，而无退化情形为 72%。即使是最先进的 MLLMs 在推理任务的完整性和精确性上也未能取得优秀评分，最高分仅为完整性 <strong>1.195/2.0</strong> 和精确性 <strong>1.118/2.0</strong>。最佳 AI 模型与人类专家之间 <strong>13.53%</strong> 的显著差距表明定向改进的迫切性。
  </p>
</div>

<!-- 结论 -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结论</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    MedQ-Bench 建立了一个临床扎根且可解释的标准，用于衡量和推进医学图像质量评估。通过从高层诊断推理转向基础性的质量感知与推理能力，该基准揭示了当前 MLLMs——包括通用和医学专用系统——在这一关键临床任务上仅具备初步且不稳定的能力。该基准有望推动具有更强低层视觉理解和可信推理能力的 MLLMs 的发展，为自动化质量控制安全可靠地融入临床影像工作流铺平道路。
  </p>
</div>

<!-- 核心贡献 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">核心贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>提出 <strong>MedQ-Bench</strong>，首个通过感知&ndash;推理范式系统评估 MLLMs 医学 IQA 能力的综合性基准，涵盖 5 种模态和 40+ 种质量属性，共 3,308 个样本。</li>
  <li>设计了 <strong>多维评判协议</strong>，沿四个互补维度（完整性、精确性、一致性、质量准确性）对模型输出进行评分，并通过严格的人机对齐验证，准确率达 83.3&ndash;90.5%。</li>
  <li>构建了 <strong>临床代表性多源数据集</strong>，融合真实临床图像、基于物理重建的模拟退化图像和 AI 生成图像，实现了涵盖真实与可控场景的稳健评估。</li>
  <li>对 <strong>14 个前沿 MLLMs</strong> 进行了全面实证分析，揭示了与人类专家 13.53% 的性能差距，并发现医学专用模型意外地不及通用模型，对当前领域适配策略提出了质疑。</li>
</ul>

<!-- 作者 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Jiyao Liu*, Jinjie Wei*, Wanying Qu, Chenglong Ma, Junzhi Ning, Yunheng Li, Ying Chen, Xinzhe Luo, Pengcheng Chen, Xin Gao, Ming Hu, Huihui Xu, Xin Wang, Shujian Gao, Dingkang Yang, Zhongying Deng, Jin Ye, Lihao Liu, <strong>Junjun He</strong>, Ningsheng Xu
</p>

<!-- 底部链接 -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/liujiyaoFDU/MedQ-Bench" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">&larr; 返回项目列表</a>
</div>

</div>
