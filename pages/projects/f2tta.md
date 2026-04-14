---
layout:    page
title:     "F²TTA"
permalink: /projects/f2tta/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<div style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; Projects</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">Domain Adaptation &amp; Robustness</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  F<sup>2</sup>TTA: Free-Form Test-Time Adaptation on Cross-Domain Medical Image Classification via Image-Level Disentangled Prompt Tuning
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  The first framework to tackle free-form test-time adaptation where clinical data arrives in random domain fragments with unpredictable shifts
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">Shanghai Jiao Tong University &amp; Shanghai Artificial Intelligence Laboratory</strong> in collaboration with
  Southeast University and Stevens Institute of Technology.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/mar-cry/F2TTA" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/f2tta/overview.jpg" alt="F2TTA: Image-level Disentangled Prompt Tuning framework for free-form test-time adaptation with uncertainty-oriented masking and parallel graph distillation" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 1. Overview of the proposed Image-level Disentangled Prompt Tuning (I-DiPT) framework for Free-Form Test-Time Adaptation. For each incoming image, an image-specific prompt adapts the source model while an image-invariant prompt learns domain-invariant representations to mitigate unpredictable shifts, enhanced by Uncertainty-oriented Masking (UoM) and Parallel Graph Distillation (PGD).
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Test-Time Adaptation (TTA) has emerged as a promising solution for adapting a source model to unseen medical sites using unlabeled test data, due to the high cost of data annotation. Existing TTA methods consider scenarios where data from one or multiple domains arrives in complete domain units. However, in clinical practice, data usually arrives in domain fragments of arbitrary lengths and in random arrival orders, due to resource constraints and patient variability.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  This paper investigates a practical <strong>Free-Form Test-Time Adaptation (F<sup>2</sup>TTA)</strong> task, where a source model is adapted to such free-form domain fragments, with shifts occurring between fragments unpredictably. To address this problem, the authors propose a novel <strong>Image-level Disentangled Prompt Tuning (I-DiPT)</strong> framework. I-DiPT employs an image-invariant prompt to explore domain-invariant representations for mitigating the unpredictable shifts, and an image-specific prompt to adapt the source model to each test image from the incoming fragments.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  To overcome the limitation that only one image is available for training each prompt, the work introduces <strong>Uncertainty-oriented Masking (UoM)</strong>, which encourages the prompts to extract sufficient information from the incoming image via masked consistency learning driven by the uncertainty of the source model representations, and <strong>Parallel Graph Distillation (PGD)</strong>, which reuses knowledge from historical image-specific and image-invariant prompts through parallel graph networks.
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">Core Highlights</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; Image-level Disentangled Prompt Tuning (I-DiPT)
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Unlike existing domain-level disentangled prompt tuning methods that require complete domain data, I-DiPT operates at the <strong>image level</strong> &mdash; making it practical for the F<sup>2</sup>TTA setting where domain identity of incoming fragments is unknown. The framework employs an image-specific prompt to adapt the source model to each test image and maintains an image-invariant prompt to learn domain-invariant representations, thereby mitigating the unpredictable shifts between free-form fragments. The prompts are inserted into the multi-head self-attention (MSA) layers of a ViT-B/16 backbone, updating only <strong>~0.9M parameters (about 1% of the model)</strong> during adaptation.
  </p>
</div>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; Uncertainty-oriented Masking and Parallel Graph Distillation
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    <strong>UoM</strong> masks image patches based on representation uncertainty and enforces the prompts to make consistent predictions between unmasked patches and the full image, encouraging the image-invariant prompt to focus on stable local contents (e.g., cancer cells) and the image-specific prompt on high-level textures. <strong>PGD</strong> constructs two parallel prompt graphs to distill knowledge from historical image-specific and image-invariant prompts separately, injecting prior knowledge into prompts for incoming images. Ablation studies confirm that the full I-DiPT framework achieves <strong>83.79% overall accuracy</strong> on breast cancer classification, compared to 72.64% for SourceOnly and 67.80% for naive I-DiPT without UoM or PGD.
  </p>
</div>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; Superior Performance on Cross-Domain Medical Classification
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Experiments on the <strong>Camelyon17</strong> breast cancer histology dataset (450K+ patches from 5 medical sites) and the <strong>SMCDG</strong> glaucoma fundus dataset (12K+ images from 11 datasets across 6 domains) demonstrate the superiority of I-DiPT over seven state-of-the-art TTA methods. On glaucoma classification, I-DiPT achieves <strong>73.17% overall accuracy</strong> across all domains (vs. 69.41% for SourceOnly) with an AUC of <strong>72.49%</strong>. I-DiPT demonstrates <strong>steadily increasing accuracy over time</strong>, reaching 88.88% on the final segment of test data streams while other methods experience performance oscillations or declines. The method also exhibits excellent robustness across varying data stream stability levels.
  </p>
</div>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    F<sup>2</sup>TTA establishes a novel and practical test-time adaptation paradigm for real-world clinical deployment, where data arrives in random domain fragments with unpredictable shifts. The proposed I-DiPT framework, enhanced by UoM and PGD, achieves the best trade-off between adaptation performance and computational cost, updating only ~1% of model parameters while outperforming all competing TTA methods. This work demonstrates that image-level disentangled prompts can effectively learn domain-invariant representations from free-form fragments, enabling robust and stable adaptation for cross-domain medical image classification.
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>Studied a novel and practical <strong>Free-Form Test-Time Adaptation (F<sup>2</sup>TTA)</strong> task and proposed <strong>I-DiPT</strong>, the first framework to adapt a classification model to free-form domain fragments under unpredictable domain shifts.</li>
  <li>Proposed <strong>Uncertainty-oriented Masking (UoM)</strong> to encourage image-level prompts to harvest sufficient information from a single incoming image through uncertainty-driven masked consistency learning.</li>
  <li>Developed <strong>Parallel Graph Distillation (PGD)</strong> to retain and distill historical knowledge from previous prompts for effective adaptation through parallel customized graph networks.</li>
  <li>Demonstrated <strong>superiority over state-of-the-art</strong> STTA and CTTA methods on breast cancer histology and glaucoma fundus image classification benchmarks, with steadily improving accuracy over time and robustness across varying instability levels.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Wei Li, Jingyang Zhang, Lihao Liu, Guoan Wang, <strong>Junjun He</strong>, Yang Chen, Lixu Gu
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/mar-cry/F2TTA" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">&larr; Back to Projects</a>
</div>

</div>
