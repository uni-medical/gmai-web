---
layout:    page
title:     "UniMedVL"
permalink: /projects/unimedvl/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<div style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; Projects</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">Medical Multimodal Large Models</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  UniMedVL: Unifying Medical Multimodal Understanding and Generation
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  The First Unified Medical Model That Couples Image Understanding and Generation within a Single Architecture via Observation-Knowledge-Analysis
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">Led by Shanghai Artificial Intelligence Laboratory</strong> in collaboration with
  Fudan University, Shanghai Innovation Institute, Stanford University, and ByteDance Seed.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://arxiv.org/abs/2505.21899" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv Paper</a>
  <a href="https://github.com/uni-medical/UniMedVL" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/overview.jpg" alt="UniMedVL: Observation-Knowledge-Analysis framework unifying medical image understanding and generation" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 1. Overview of UniMedVL and the Observation-Knowledge-Analysis (OKA) framework. Unlike single-capability models that either generate images without diagnostic explanations or provide text interpretations without visual outputs, UniMedVL couples understanding and generation for mutual enhancement.
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Medical diagnosis fundamentally requires models that can process multimodal medical inputs &mdash; images, patient histories, symptom descriptions &mdash; and produce diverse outputs including textual reports and visual content such as annotations or segmentation masks. However, existing medical AI models fragment this unified process: image understanding models interpret images without producing visual outputs, while image generation models produce visual outputs but cannot provide textual explanations.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  UniMedVL addresses this gap through a multi-level framework called <strong>Observation-Knowledge-Analysis (OKA)</strong>. At the observation level, we construct <strong>UniMed-5M</strong>, a dataset comprising over 5.6 million samples that reformat diverse unimodal data into multimodal pairs across 8 imaging modalities. At the knowledge level, we propose <strong>Progressive Curriculum Learning</strong>, where models simultaneously learn medical multimodal understanding and generation knowledge. At the analysis level, we introduce <strong>UniMedVL</strong> &mdash; the first medical unified model that handles both image understanding and generation within a single architecture without manually reloading model checkpoints.
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">Core Highlights</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; UniMed-5M: Large-Scale Multimodal Medical Dataset
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    UniMed-5M contains over <strong>5.6 million</strong> multimodal medical samples spanning <strong>8 primary imaging modalities</strong>, constructed through a rigorous quality control pipeline. Raw datasets undergo coarse filtering for resolution and text quality, followed by medical alignment scoring using MedGemma-27b and MedSigLIP to ensure clinical relevance. Expert validation by five medical professionals confirms data quality with strong inter-rater agreement (&kappa; > 0.80). The dataset reformats diverse unimodal data into unified multimodal input-output pairs, including 5 interleaved tasks: medical image prompt segmentation, super-resolution, counterfactual generation, virtual immunohistochemistry staining, and cross-modal synthesis.
  </p>
</div>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; Progressive Curriculum Learning
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    UniMedVL is trained through a principled three-stage curriculum that progressively builds from basic medical pattern recognition to sophisticated multimodal capabilities. <strong>Stage 1 &mdash; Foundation Training</strong> establishes basic medical image understanding and generation capabilities on the entire UniMed-5M dataset. <strong>Stage 2 &mdash; Instruction Tuning</strong> improves instruction-following via Distilled Chain of Thought (DCOT) for understanding tasks and Caption Augmented Generation (CAG) for generation tasks. <strong>Stage 3 &mdash; Unified Multimodal Training</strong> fine-tunes on complex interleaved tasks that combine understanding and generation within unified sequences, enabling bidirectional knowledge sharing between the two pathways.
  </p>
</div>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; State-of-the-Art Unified Performance
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    With 14B total parameters (7B activated during inference), UniMedVL achieves <strong>superior performance on 5 medical image understanding benchmarks</strong> among unified models &mdash; scoring 85.8% on OmniMedVQA (vs. 74.4% for HealthGPT-L14) and 60.75% on GMAI-MMBench &mdash; while simultaneously matching specialised models in generation quality across <strong>8 medical imaging modalities</strong> with an average gFID of 96.29 and a BioMedCLIP score of 0.706. Crucially, ablation studies confirm that joint training consistently outperforms single-task variants, validating that understanding and generation capabilities reinforce each other through the unified architecture.
  </p>
</div>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    UniMedVL establishes a new paradigm for unified medical AI by simultaneously performing image understanding and generation within a single model. Validated through extensive experiments on over 5 million medical samples, UniMedVL demonstrates that the OKA framework &mdash; combining large-scale multimodal data construction, progressive curriculum learning, and a unified architecture &mdash; enables bidirectional knowledge sharing that improves both comprehension and generation quality. This work represents a critical step toward truly integrated medical AI systems where understanding and generation capabilities synergistically enhance clinical workflows.
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>Constructed <strong>UniMed-5M</strong> &mdash; a large-scale dataset with over 5.6M multimodal medical samples spanning 8 imaging modalities, reformatting diverse unimodal datasets into unified multimodal input-output pairs with rigorous quality control.</li>
  <li>Devised <strong>Progressive Curriculum Learning</strong>, a three-stage training paradigm (foundation training &rarr; instruction tuning &rarr; unified multimodal training) that systematically builds cross-modal understanding-generation capabilities with bidirectional knowledge transfer.</li>
  <li>Introduced <strong>UniMedVL</strong>, the first medical unified multimodal model that processes multimodal inputs and generates both textual and visual outputs within a single architecture &mdash; without requiring separate model checkpoints for different task types.</li>
  <li>Achieved <strong>state-of-the-art performance</strong> on medical VQA benchmarks among unified models while matching specialised generation models across 8 imaging modalities, demonstrating that joint training yields mutual enhancement rather than compromise.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Junzhi Ning*, Wei Li*, Cheng Tang*, Jiashi Lin, Chenglong Ma, Chaoyang Zhang, Jiyao Liu, Ying Chen, Shujian Gao, Lihao Liu, Yuandong Pu, Huihui Xu, Chenhui Gou, Ziyan Huang, Yi Xin, Qi Qin, Zhongying Deng, Diping Song, Bin Fu, Guang Yang, Yuanfeng Ji, Tianbin Li, Yanzhou Su, Jin Ye, Shixiang Tang, Ming Hu, <strong>Junjun He</strong>
  <br><span style="font-size:.75rem;color:#94a3b8;">* Equal contribution (co-first authors)</span>
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://arxiv.org/abs/2505.21899" target="_blank" rel="noopener" class="pub-btn">arXiv Paper</a>
  <a href="https://github.com/uni-medical/UniMedVL" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">&larr; Back to Projects</a>
</div>

</div>
