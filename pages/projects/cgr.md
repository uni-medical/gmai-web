---
layout:    page
title:     "CGR"
permalink: /projects/cgr/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<div style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; Projects</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">Continual Learning for Medical Image Segmentation</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  Comprehensive Generative Replay for Task-Incremental Segmentation with Concurrent Appearance and Semantic Forgetting
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  A Novel Bayesian Joint Diffusion Framework That Synthesizes Image-Mask Pairs to Overcome Both Appearance and Semantic Forgetting in Task-Incremental Medical Segmentation
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">Led by Shanghai Jiao Tong University</strong> in collaboration with
  The Chinese University of Hong Kong, Institute of Medical Robotics (SJTU), and Southeast University.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/jingyzhang/CGR" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/cgr/overview.jpg" alt="CGR framework: Bayesian Joint Diffusion model with Task-Oriented Adapter for synthesizing image-mask pairs across cardiac, fundus, and prostate segmentation tasks" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 1. Illustration of the proposed Comprehensive Generative Replay (CGR) framework for task-incremental learning on prostate, fundus, and cardiac segmentation. A Bayesian Joint Diffusion (BJD) model preserves image-mask correspondence while a Task-Oriented Adapter (TOA) modulates the diffusion model for scalable data synthesis across diverse tasks.
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Generalist segmentation models are increasingly favored for diverse tasks involving various objects from different image sources. Task-Incremental Learning (TIL) offers a privacy-preserving training paradigm using tasks arriving sequentially, instead of gathering them due to strict data sharing policies. However, the task evolution can span a wide scope that involves shifts in both image appearance and segmentation semantics with intricate correlation, causing <strong>concurrent appearance and semantic forgetting</strong>.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  CGR addresses this challenge through a novel framework that restores appearance and semantic knowledge by synthesizing image-mask pairs to mimic past task data. The approach focuses on two key aspects: modeling image-mask correspondence using a <strong>Bayesian Joint Diffusion (BJD)</strong> model, and promoting scalability for diverse tasks through a <strong>Task-Oriented Adapter (TOA)</strong> that recalibrates prompt embeddings to modulate the diffusion model. Experiments on incremental tasks spanning cardiac, fundus, and prostate segmentation demonstrate clear advantages over existing domain-incremental and class-incremental approaches.
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">Core Highlights</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; Bayesian Joint Diffusion (BJD) for Structure-Realistic Synthesis
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Unlike naive joint diffusion that adds noise simultaneously to both images and masks (easily disrupting their correspondence), BJD leverages a Bayesian framework that models image-mask correspondence through <strong>conditional distributions</strong>. By using noise-free masks as reliable references during conditional image denoising, and clean images as references during conditional mask denoising, BJD preserves precise alignment between appearance and semantics. This conditional denoising approach ensures structure-realistic synthesis of image-mask pairs with normal anatomical shapes preserved for different segmentation objectives.
  </p>
</div>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; Task-Oriented Adapter (TOA) for Scalable Multi-Task Replay
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    BJD needs to scale across diverse data distributions of previous tasks to simulate each effectively. However, CLIP-based prompt embeddings are pretrained on natural language-image databases and may not be compatible with customized medical tasks. TOA addresses this by <strong>recalibrating the CLIP-based embedding</strong> with a task-specific, lightweight two-layer adapter for each task. The recalibrated embedding modulates the denoising network through cross-attention, enhancing inner-task distribution compactness and inter-task distribution separability for scalable data synthesis.
  </p>
</div>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; State-of-the-Art Task-Incremental Performance
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Evaluated across cardiac MRI segmentation (320 subjects), fundus segmentation (1060 subjects), and prostate MRI segmentation (116 subjects), CGR achieves the best performance closest to joint training (the upper bound). In the Cardiac&rarr;Fundus&rarr;Prostate learning order, CGR reaches a mean DSC of <strong>88.71%</strong> compared to 89.98% for joint training, substantially outperforming the best domain-incremental method GAR (86.94%) by <strong>1.77%</strong> DSC and the best class-incremental method HSI (85.72%) by <strong>2.99%</strong> DSC. CGR also demonstrates consistent robustness across both forward and reversed learning orders.
  </p>
</div>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    CGR presents the first Task-Incremental Learning paradigm for medical image segmentation that accommodates a wide task scope with diverse objectives. By synthesizing image-mask pairs through Bayesian Joint Diffusion with Task-Oriented Adapters, CGR comprehensively overcomes concurrent appearance and semantic forgetting, achieving performance close to the offline joint training upper bound. The broader significance of this work lies in providing a promising avenue for accumulating generalist segmentation skills in a privacy-preserving manner, relevant to the development of artificial general intelligence for medical imaging.
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>Proposed <strong>Comprehensive Generative Replay (CGR)</strong> &mdash; the first TIL framework for medical image segmentation that reduces concurrent appearance and semantic forgetting across diverse tasks by generating image-mask pairs to reproduce past task data.</li>
  <li>Designed a novel <strong>Bayesian Joint Diffusion (BJD)</strong> model for structure-realistic synthesis of image-mask pairs, formulating their correspondence as conditional distributions and optimizing through conditional denoising to preserve precise alignment between appearance and semantics.</li>
  <li>Proposed a <strong>Task-Oriented Adapter (TOA)</strong> that recalibrates CLIP-based embeddings to modulate the diffusion model, promoting synthesis scalability for diverse tasks and enabling memory-efficient task-specific adaptation.</li>
  <li>Demonstrated <strong>state-of-the-art performance</strong> on cardiac, fundus, and prostate segmentation tasks, with minimal forgetting and clear advantages over both domain-incremental and class-incremental learning methods across different learning orders.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Wei Li, Jingyang Zhang, Pheng-Ann Heng, Lixu Gu
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/jingyzhang/CGR" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">&larr; Back to Projects</a>
</div>

</div>
