---
layout:    page
title:     "MedSegAgent"
permalink: /zh/projects/medsegagent/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; 项目</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">医学图像分割</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  MedSegAgent：通用可扩展多智能体医学图像分割系统
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  通过自然语言指令调度专用分割模型，结合从粗到精的数据集匹配与多模型结果集成
</p>

<!-- 机构条 -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">上海人工智能实验室</strong>，联合上海交通大学。
</div>

<!-- 资源链接 -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:1.25rem;">
  <a href="https://github.com/uni-medical/MedSegAgent" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://ieeexplore.ieee.org/document/11455620" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">IEEE Xplore</a>
</div>

<!-- 发表信息 -->
<div style="font-size:.82rem;color:#065f46;padding:.75rem 1rem;border-left:3px solid #10b981;background:#ecfdf5;margin-bottom:1.5rem;line-height:1.7;">
  发表于 <strong>IEEE Journal of Biomedical and Health Informatics (JBHI)</strong>，2026。
</div>

<!-- 主图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/medsegagent/medsegagent1.png' | relative_url }}"
       alt="MedSegAgent 框架总览"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    MedSegAgent 框架总览：自然语言查询解析、从粗到精的数据集匹配（模态 &rarr; 解剖区域 &rarr; 标签）、以及基于排名感知集成的最终分割结果。
  </figcaption>
</figure>

<!-- 引言 -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  医学图像分割领域已取得显著进展，STU-Net 和 SAM-Med3D 等通用模型不断涌现。然而，单一模型难以覆盖所有模态和解剖目标的临床分割任务。MedSegAgent 采取了根本性不同的策略：它不训练一个庞大的单体模型，而是通过多智能体系统调度一组专用的、针对特定数据集训练的分割模型，整个过程由自然语言驱动。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  给定一个自由文本分割请求，如<em>"请帮我分割这张 MR 图像中的肝脏"</em>，MedSegAgent 首先解析查询以提取模态和目标信息，然后执行三级从粗到精的过滤：模态过滤缩小候选范围、解剖区域过滤确定相关身体部位、标签选择精确定位分割目标。匹配的模型并行执行，其输出通过排名感知集成策略进行融合。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  当前系统集成了 23 个数据集，支持覆盖 CT、MRI、PET/CT 和超声模态的 343 个分割目标。这一架构具有天然的可扩展性：添加新的分割能力仅需注册一条数据集元数据条目和对应的训练模型，无需重新训练调度系统。
</p>

<!-- 核心特性 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 2rem;">核心特性</h2>

<div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(260px,1fr));gap:1.5rem;margin-bottom:3rem;">
  <div style="padding:1.25rem;border:1px solid #e2e8f0;border-top:3px solid #1d4ed8;background:#fafbfc;">
    <h3 style="font-family:'IBM Plex Serif',serif;font-size:1rem;font-weight:600;color:#1d4ed8;margin:0 0 .6rem;">通用且可扩展</h3>
    <p style="font-size:.85rem;color:#475569;line-height:1.75;margin:0;">
      通过自然语言指令处理多样化的医学图像分割任务。添加新模态或目标仅需一条 JSON 元数据 &mdash; 无需重新训练核心系统。
    </p>
  </div>
  <div style="padding:1.25rem;border:1px solid #e2e8f0;border-top:3px solid #1d4ed8;background:#fafbfc;">
    <h3 style="font-family:'IBM Plex Serif',serif;font-size:1rem;font-weight:600;color:#1d4ed8;margin:0 0 .6rem;">精准自动化</h3>
    <p style="font-size:.85rem;color:#475569;line-height:1.75;margin:0;">
      从粗到精的过滤（模态 &rarr; 解剖区域 &rarr; 标签）自动从模型库中选择最合适的分割模型，无需人工干预。
    </p>
  </div>
  <div style="padding:1.25rem;border:1px solid #e2e8f0;border-top:3px solid #1d4ed8;background:#fafbfc;">
    <h3 style="font-family:'IBM Plex Serif',serif;font-size:1rem;font-weight:600;color:#1d4ed8;margin:0 0 .6rem;">增强鲁棒性</h3>
    <p style="font-size:.85rem;color:#475569;line-height:1.75;margin:0;">
      多模型集成与排名感知融合提升可靠性。当多个候选模型匹配同一查询时，通过输出融合降低单一模型的失败风险。
    </p>
  </div>
</div>

<!-- 支持的数据集 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">支持的数据集（共 23 个）</h2>
<div style="overflow-x:auto;margin-bottom:3rem;">
<table style="width:100%;font-size:.8rem;border-collapse:collapse;color:#334155;">
  <thead>
    <tr style="border-bottom:2px solid #1d4ed8;text-align:left;">
      <th style="padding:.5rem .75rem;font-weight:600;">数据集</th>
      <th style="padding:.5rem .75rem;font-weight:600;">模态</th>
      <th style="padding:.5rem .75rem;font-weight:600;">身体区域</th>
      <th style="padding:.5rem .75rem;font-weight:600;">代表性目标</th>
    </tr>
  </thead>
  <tbody>
    <tr style="border-bottom:1px solid #e2e8f0;background:#fafbfc;">
      <td style="padding:.45rem .75rem;">TotalSegmentator v2</td>
      <td style="padding:.45rem .75rem;">CT</td>
      <td style="padding:.45rem .75rem;">全身</td>
      <td style="padding:.45rem .75rem;">117 个结构（器官、血管、骨骼、脑）</td>
    </tr>
    <tr style="border-bottom:1px solid #e2e8f0;">
      <td style="padding:.45rem .75rem;">TotalSegmentator MRI</td>
      <td style="padding:.45rem .75rem;">MRI</td>
      <td style="padding:.45rem .75rem;">全身</td>
      <td style="padding:.45rem .75rem;">56 个结构（器官、血管、脊柱、肌肉）</td>
    </tr>
    <tr style="border-bottom:1px solid #e2e8f0;background:#fafbfc;">
      <td style="padding:.45rem .75rem;">AutoPET</td>
      <td style="padding:.45rem .75rem;">PET/CT</td>
      <td style="padding:.45rem .75rem;">全身</td>
      <td style="padding:.45rem .75rem;">全身肿瘤部位</td>
    </tr>
    <tr style="border-bottom:1px solid #e2e8f0;">
      <td style="padding:.45rem .75rem;">SegRap2023</td>
      <td style="padding:.45rem .75rem;">CT</td>
      <td style="padding:.45rem .75rem;">头颈部</td>
      <td style="padding:.45rem .75rem;">45 个 OAR 结构、GTVp、GTVnd</td>
    </tr>
    <tr style="border-bottom:1px solid #e2e8f0;background:#fafbfc;">
      <td style="padding:.45rem .75rem;">BraTS21</td>
      <td style="padding:.45rem .75rem;">MRI</td>
      <td style="padding:.45rem .75rem;">头颈部</td>
      <td style="padding:.45rem .75rem;">全肿瘤、肿瘤核心、增强肿瘤</td>
    </tr>
    <tr style="border-bottom:1px solid #e2e8f0;">
      <td style="padding:.45rem .75rem;">AMOS22</td>
      <td style="padding:.45rem .75rem;">MRI, CT</td>
      <td style="padding:.45rem .75rem;">腹部</td>
      <td style="padding:.45rem .75rem;">15 个腹部和盆腔结构</td>
    </tr>
    <tr style="border-bottom:1px solid #e2e8f0;background:#fafbfc;">
      <td style="padding:.45rem .75rem;">MM-WHS</td>
      <td style="padding:.45rem .75rem;">MRI, CT</td>
      <td style="padding:.45rem .75rem;">心脏</td>
      <td style="padding:.45rem .75rem;">心腔、心肌、大血管</td>
    </tr>
    <tr style="border-bottom:1px solid #e2e8f0;">
      <td style="padding:.45rem .75rem;">KiTS23</td>
      <td style="padding:.45rem .75rem;">CT</td>
      <td style="padding:.45rem .75rem;">腹部</td>
      <td style="padding:.45rem .75rem;">肾脏、肾肿瘤、肾囊肿</td>
    </tr>
    <tr>
      <td style="padding:.45rem .75rem;color:#64748b;" colspan="4"><em>+ 另外 15 个数据集覆盖胸部、腹部、头颈部区域&hellip;</em></td>
    </tr>
  </tbody>
</table>
</div>

<!-- 结论 -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结论</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    MedSegAgent 证明了多智能体调度为训练越来越大的单体分割模型提供了一种实用且可扩展的替代方案。通过将语言理解与分割执行解耦，它将日益丰富的专用医学模型生态系统转化为统一的、语言驱动的分割服务。系统当前支持 23 个数据集和 343 个目标，其架构设计使每个新训练的模型都能立即扩展系统的能力而无需重新训练。
  </p>
</div>

<!-- 核心贡献 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">核心贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>提出 MedSegAgent，首个由自然语言驱动的多智能体医学图像分割系统，集成 23 个数据集和 343 个分割目标。</li>
  <li>设计了从粗到精的数据集匹配流水线（模态 &rarr; 解剖区域 &rarr; 标签），自动为任意查询选择最佳分割模型。</li>
  <li>引入排名感知集成策略，融合多个匹配模型的输出以提升分割鲁棒性和可靠性。</li>
  <li>构建可扩展架构，添加新分割能力仅需一条 JSON 元数据条目，无需重新训练调度系统。</li>
</ul>

<!-- 作者 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:.5rem;">
  Ziyan Huang, Haoyu Wang, Jin Ye, Yuanfeng Ji, Xiaowei Hu, Lihao Liu, Zhikai Yang, Wei Li, Ming Hu, Yanzhou Su, Tianbin Li, Yun Gu, Shaoting Zhang, Yu Qiao, Lixu Gu, <strong>Junjun He</strong>
</p>
<p style="font-size:.75rem;color:#64748b;margin-bottom:3rem;">IEEE Journal of Biomedical and Health Informatics (JBHI), 2026</p>

<!-- 底部链接 -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/uni-medical/MedSegAgent" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>
  <a href="https://ieeexplore.ieee.org/document/11455620" target="_blank" rel="noopener" class="pub-btn">IEEE Xplore 论文</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">&larr; 返回项目列表</a>
</div>

</div>
