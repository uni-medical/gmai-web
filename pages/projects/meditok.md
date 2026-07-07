---
layout:    page
title:     "MedITok"
permalink: /projects/meditok/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<div style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; Projects</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">Medical Foundation Models</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  MedITok: Unified Medical Image Tokenizer
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  The First Unified Medical Image Tokenizer for Autoregressive Synthesis and Understanding &mdash; Trained on 33M+ Images across 9 Modalities with SOTA on 30+ Benchmarks
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">Led by Fudan University and Shanghai AI Laboratory</strong> in collaboration with
  Shanghai Innovation Institute and Stanford University.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/Masaaki-75/meditok" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://arxiv.org/abs/2505.19225" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv Paper</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/meditok/overview.jpg" alt="MedITok: two-stage training framework with visual representation alignment and textual semantic alignment" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 1. Overview of MedITok. (a) Architecture with encoder, quantizer, and decoder. (b) Two-stage training: visual representation alignment with pretrained visual semantics on 33M+ unpaired images, followed by textual semantic alignment using 2M+ clinical image-text pairs. (c) Training data statistics across imaging modalities.
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Autoregressive modelling has driven major advances in multimodal AI, yet its application to medical imaging remains constrained by the absence of a unified image tokenizer that simultaneously preserves fine-grained anatomical structures and rich clinical semantics across heterogeneous modalities. Existing approaches either optimise for pixel-level reconstruction (e.g., VQGAN) without encoding discriminative features, or capture high-level textual semantics (e.g., CLIP) while failing to retain spatial structures and textures &mdash; leaving either synthesis or understanding under-served.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  <strong>MedITok</strong> is the first unified medical image tokenizer that encodes both low-level structural information &mdash; supporting faithful image reconstruction and realistic synthesis &mdash; and high-level clinical semantics, enabling multimodal medical image comprehension. Built on a principled <strong>two-stage training framework</strong> that uses visual representation as a bridge, MedITok is trained on over <strong>33 million medical images</strong> spanning 9 modalities and <strong>2 million image-text pairs</strong>, achieving state-of-the-art performance on <strong>30+ benchmarks</strong> across 4 task families: reconstruction, classification, generation, and visual question answering.
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">Core Highlights</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; Two-Stage Training: Visual Then Textual Alignment
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Rather than jointly optimising reconstruction and semantic objectives in a single pass &mdash; which risks gradient interference and representation collapse &mdash; MedITok introduces a principled two-stage approach. <strong>Stage 1 (Visual Representation Alignment)</strong> trains the encoder and decoder on <strong>33.4 million unpaired medical images</strong>, focusing on reconstruction fidelity with a light semantic constraint from a pretrained vision encoder (BioMed-CLIP). This stage exploits the abundance of unlabelled medical images that existing methods ignore. <strong>Stage 2 (Textual Semantic Alignment)</strong> refines the encoder on <strong>2.4 million image-text pairs</strong>, aligning the learned tokens with fine-grained clinical captions to inject rich semantic information. This progressive strategy avoids the conflicts inherent in naive joint training while building a truly unified latent space.
  </p>
</div>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; Unprecedented Scale and Modality Coverage
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    MedITok is trained on a meticulously curated corpus spanning <strong>9 imaging modalities</strong>: CT, dermoscopy, endoscopy, fundus photography, MRI, pathology, ultrasound, X-ray, and OCT. The dataset undergoes rigorous quality control &mdash; automated filtering for resolution, intensity range, information content, and clinical relevance, plus manual review to exclude non-clinical content such as tables and plots. This breadth ensures that MedITok learns robust representations across diverse clinical contexts, from chest radiographs to histopathology slides, rather than specialising in a narrow subset of medical imaging.
  </p>
</div>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; SOTA across 30+ Benchmarks and 4 Task Families
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    MedITok achieves <strong>rank 1.0 average</strong> in reconstruction fidelity (rFID) across 8 modalities despite using a 16&times; downsampling factor &mdash; outperforming tokenizers with only 8&times; downsampling. Beyond pixel-level metrics, MedITok achieves the highest diagnostic information preservation scores (mAP and AUC) on classification proxy tasks across dermoscopy, fundus, pathology, ultrasound, and X-ray. In linear-probing evaluations for high-level semantic encoding, MedITok consistently outperforms both general-domain and medical-specific tokenizers. When integrated into autoregressive pipelines, MedITok enables competitive medical image synthesis and visual question answering, serving as a scalable foundation component for next-generation multimodal medical models.
  </p>
</div>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    MedITok establishes the first unified foundation tokenizer for medical images, demonstrating that a principled two-stage training strategy &mdash; leveraging visual representation as a bridge between reconstruction fidelity and semantic richness &mdash; can simultaneously excel at low-level encoding, high-level understanding, image synthesis, and visual comprehension. By unlocking the vast pool of unpaired medical images alongside curated image-text pairs, MedITok provides a scalable, modality-agnostic building block for the next generation of autoregressive medical AI models.
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>Proposed a novel <strong>two-stage training framework</strong> that uses visual representation alignment as a bridge, effectively scaling up with medical image data and progressively building a unified latent space without gradient interference.</li>
  <li>Introduced <strong>MedITok</strong>, the first Medical Image Tokenizer that unifies the encoding of low-level structural details and high-level clinical semantics within a single model.</li>
  <li>Achieved <strong>state-of-the-art performance</strong> on over 30 datasets spanning 9 imaging modalities across 4 task families (reconstruction, classification, generation, and VQA), outperforming both general-domain and medical-specific tokenizers.</li>
  <li>Curated a large-scale training corpus of <strong>33M+ medical images</strong> and <strong>2M+ image-text pairs</strong> with rigorous quality control, with open-source model, code, and data access provided.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Chenglong Ma, Yuanfeng Ji, Jin Ye, Zilong Li, Chenhui Wang, Junzhi Ning, Wei Li, Lihao Liu, Qiushan Guo, Tianbin Li, <strong>Junjun He</strong>, Hongming Shan
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/Masaaki-75/meditok" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>
  <a href="https://arxiv.org/abs/2505.19225" target="_blank" rel="noopener" class="pub-btn">arXiv Paper</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">&larr; Back to Projects</a>
</div>

</div>
