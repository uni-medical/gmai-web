---
layout:    page
title:     "MedSegAgent"
permalink: /projects/medsegagent/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<div style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; Projects</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">Medical Image Segmentation</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  MedSegAgent: A Universal and Scalable Multi-Agent System for Instructive Medical Image Segmentation
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  Orchestrating specialized segmentation models through natural language instructions, coarse-to-fine dataset matching, and multi-model result integration
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">Shanghai AI Laboratory</strong> in collaboration with Shanghai Jiao Tong University.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:1.25rem;">
  <a href="https://github.com/uni-medical/MedSegAgent" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://ieeexplore.ieee.org/document/11455620" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">IEEE Xplore</a>
</div>

<!-- Publication badge -->
<div style="font-size:.82rem;color:#065f46;padding:.75rem 1rem;border-left:3px solid #10b981;background:#ecfdf5;margin-bottom:1.5rem;line-height:1.7;">
  Published in <strong>IEEE Journal of Biomedical and Health Informatics (JBHI)</strong>, 2026.
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/medsegagent/medsegagent1.png' | relative_url }}"
       alt="MedSegAgent framework overview"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Overview of the MedSegAgent framework: natural language query parsing, coarse-to-fine dataset matching (modality &rarr; anatomy &rarr; label), and final segmentation with rank-aware ensemble integration.
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Medical image segmentation has seen remarkable advances with universal models like STU-Net and SAM-Med3D, yet no single model can cover the full diversity of clinical segmentation tasks across all modalities and anatomical targets. MedSegAgent takes a fundamentally different approach: instead of training one monolithic model, it orchestrates a library of specialized, dataset-specific models through a multi-agent system driven by natural language.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Given a free-form segmentation request such as <em>"Please help me segment liver in this MR image"</em>, MedSegAgent parses the query to extract modality and target information, then performs a three-stage coarse-to-fine filtering: modality filtering narrows candidates from the full library, anatomy filtering identifies the relevant body region, and label selection pinpoints the exact segmentation target. The matched models are executed in parallel, and their outputs are integrated via a rank-aware ensemble strategy.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  The current system integrates 23 datasets and supports 343 segmentation targets across CT, MRI, PET/CT, and ultrasound modalities. This architecture is inherently scalable: adding a new segmentation capability requires only registering a new dataset metadata entry and its trained model, with no retraining of the orchestration system.
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 2rem;">Key Features</h2>

<div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(260px,1fr));gap:1.5rem;margin-bottom:3rem;">
  <div style="padding:1.25rem;border:1px solid #e2e8f0;border-top:3px solid #1d4ed8;background:#fafbfc;">
    <h3 style="font-family:'IBM Plex Serif',serif;font-size:1rem;font-weight:600;color:#1d4ed8;margin:0 0 .6rem;">Universal &amp; Scalable</h3>
    <p style="font-size:.85rem;color:#475569;line-height:1.75;margin:0;">
      Handles diverse medical image segmentation tasks through natural language instructions. Adding new modalities or targets requires only a JSON metadata entry &mdash; no retraining of the core system.
    </p>
  </div>
  <div style="padding:1.25rem;border:1px solid #e2e8f0;border-top:3px solid #1d4ed8;background:#fafbfc;">
    <h3 style="font-family:'IBM Plex Serif',serif;font-size:1rem;font-weight:600;color:#1d4ed8;margin:0 0 .6rem;">Precise Automation</h3>
    <p style="font-size:.85rem;color:#475569;line-height:1.75;margin:0;">
      Coarse-to-fine filtering (modality &rarr; anatomy &rarr; label) automatically selects the most suitable segmentation model from the library, without manual intervention.
    </p>
  </div>
  <div style="padding:1.25rem;border:1px solid #e2e8f0;border-top:3px solid #1d4ed8;background:#fafbfc;">
    <h3 style="font-family:'IBM Plex Serif',serif;font-size:1rem;font-weight:600;color:#1d4ed8;margin:0 0 .6rem;">Enhanced Robustness</h3>
    <p style="font-size:.85rem;color:#475569;line-height:1.75;margin:0;">
      Multi-model integration and rank-aware ensemble improve reliability. When multiple candidate models match a query, their outputs are combined to reduce individual model failures.
    </p>
  </div>
</div>

<!-- Supported Datasets -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Supported Datasets (23 total)</h2>
<div style="overflow-x:auto;margin-bottom:3rem;">
<table style="width:100%;font-size:.8rem;border-collapse:collapse;color:#334155;">
  <thead>
    <tr style="border-bottom:2px solid #1d4ed8;text-align:left;">
      <th style="padding:.5rem .75rem;font-weight:600;">Dataset</th>
      <th style="padding:.5rem .75rem;font-weight:600;">Modalities</th>
      <th style="padding:.5rem .75rem;font-weight:600;">Body Region</th>
      <th style="padding:.5rem .75rem;font-weight:600;">Representative Targets</th>
    </tr>
  </thead>
  <tbody>
    <tr style="border-bottom:1px solid #e2e8f0;background:#fafbfc;">
      <td style="padding:.45rem .75rem;">TotalSegmentator v2</td>
      <td style="padding:.45rem .75rem;">CT</td>
      <td style="padding:.45rem .75rem;">Whole-body</td>
      <td style="padding:.45rem .75rem;">117 structures (organs, vessels, bones, brain)</td>
    </tr>
    <tr style="border-bottom:1px solid #e2e8f0;">
      <td style="padding:.45rem .75rem;">TotalSegmentator MRI</td>
      <td style="padding:.45rem .75rem;">MRI</td>
      <td style="padding:.45rem .75rem;">Whole-body</td>
      <td style="padding:.45rem .75rem;">56 structures (organs, vessels, spine, muscles)</td>
    </tr>
    <tr style="border-bottom:1px solid #e2e8f0;background:#fafbfc;">
      <td style="padding:.45rem .75rem;">AutoPET</td>
      <td style="padding:.45rem .75rem;">PET/CT</td>
      <td style="padding:.45rem .75rem;">Whole-body</td>
      <td style="padding:.45rem .75rem;">Whole-body tumor sites</td>
    </tr>
    <tr style="border-bottom:1px solid #e2e8f0;">
      <td style="padding:.45rem .75rem;">SegRap2023</td>
      <td style="padding:.45rem .75rem;">CT</td>
      <td style="padding:.45rem .75rem;">Head &amp; neck</td>
      <td style="padding:.45rem .75rem;">45 OAR structures, GTVp, GTVnd</td>
    </tr>
    <tr style="border-bottom:1px solid #e2e8f0;background:#fafbfc;">
      <td style="padding:.45rem .75rem;">BraTS21</td>
      <td style="padding:.45rem .75rem;">MRI</td>
      <td style="padding:.45rem .75rem;">Head &amp; neck</td>
      <td style="padding:.45rem .75rem;">Whole tumor, tumor core, enhancing tumor</td>
    </tr>
    <tr style="border-bottom:1px solid #e2e8f0;">
      <td style="padding:.45rem .75rem;">AMOS22</td>
      <td style="padding:.45rem .75rem;">MRI, CT</td>
      <td style="padding:.45rem .75rem;">Abdomen</td>
      <td style="padding:.45rem .75rem;">15 abdominal and pelvic structures</td>
    </tr>
    <tr style="border-bottom:1px solid #e2e8f0;background:#fafbfc;">
      <td style="padding:.45rem .75rem;">MM-WHS</td>
      <td style="padding:.45rem .75rem;">MRI, CT</td>
      <td style="padding:.45rem .75rem;">Heart</td>
      <td style="padding:.45rem .75rem;">Cardiac chambers, myocardium, great vessels</td>
    </tr>
    <tr style="border-bottom:1px solid #e2e8f0;">
      <td style="padding:.45rem .75rem;">KiTS23</td>
      <td style="padding:.45rem .75rem;">CT</td>
      <td style="padding:.45rem .75rem;">Abdomen</td>
      <td style="padding:.45rem .75rem;">Kidneys, renal tumors, renal cysts</td>
    </tr>
    <tr>
      <td style="padding:.45rem .75rem;color:#64748b;" colspan="4"><em>+ 15 more datasets covering thorax, abdomen, head &amp; neck regions&hellip;</em></td>
    </tr>
  </tbody>
</table>
</div>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    MedSegAgent demonstrates that multi-agent orchestration offers a practical and scalable alternative to training ever-larger monolithic segmentation models. By decoupling language understanding from segmentation execution, it turns the growing ecosystem of specialized medical models into a unified, language-driven segmentation service. The system currently supports 23 datasets and 343 targets, and is designed so that every new trained model immediately expands the system's capabilities without retraining.
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>Proposed MedSegAgent, the first multi-agent system for instructive medical image segmentation driven by natural language, integrating 23 datasets and 343 segmentation targets.</li>
  <li>Designed a coarse-to-fine dataset matching pipeline (modality &rarr; anatomy &rarr; label) that automatically selects the best segmentation model for any given query.</li>
  <li>Introduced rank-aware ensemble integration that combines outputs from multiple matched models to improve segmentation robustness and reliability.</li>
  <li>Built an extensible architecture where new segmentation capabilities can be added via a single JSON metadata entry, requiring no retraining of the orchestration system.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:.5rem;">
  Ziyan Huang, Haoyu Wang, Jin Ye, Yuanfeng Ji, Xiaowei Hu, Lihao Liu, Zhikai Yang, Wei Li, Ming Hu, Yanzhou Su, Tianbin Li, Yun Gu, Shaoting Zhang, Yu Qiao, Lixu Gu, <strong>Junjun He</strong>
</p>
<p style="font-size:.75rem;color:#64748b;margin-bottom:3rem;">IEEE Journal of Biomedical and Health Informatics (JBHI), 2026</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/uni-medical/MedSegAgent" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>
  <a href="https://ieeexplore.ieee.org/document/11455620" target="_blank" rel="noopener" class="pub-btn">IEEE Xplore Paper</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">&larr; Back to Projects</a>
</div>

</div>
