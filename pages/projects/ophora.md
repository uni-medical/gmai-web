---
layout:    page
title:     "Ophora"
permalink: /projects/ophora/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<div style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; Projects</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">Ophthalmic Surgical AI</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  Ophora: A Large-Scale Data-Driven Text-Guided Ophthalmic Surgical Video Generation Model
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  A Pioneering Model That Generates Realistic Ophthalmic Surgical Videos Following Natural Language Instructions, Built on 160K+ Video-Instruction Pairs
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">Led by Shanghai Artificial Intelligence Laboratory</strong> in collaboration with
  Shanghai Jiao Tong University, Monash University, East China Normal University,
  Eye Hospital of Wenzhou Medical University, Shanghai Innovation Institute, and Imperial College London.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/mar-cry/Ophora" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/ophora/overview.jpg" alt="Ophora framework: Comprehensive Data Curation pipeline converting narrative videos into Ophora-160K, followed by Progressive Video-Instruction Tuning for privacy-preserved ophthalmic surgical video generation" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 1. Illustration of Ophora. A Comprehensive Data Curation pipeline constructs the large-scale Ophora-160K dataset from narrative videos. Progressive Video-Instruction Tuning transfers spatial-temporal knowledge from a T2V model pre-trained on natural video-text pairs for privacy-preserved ophthalmic surgical video generation.
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  In ophthalmic surgery, developing AI systems capable of interpreting surgical videos and predicting subsequent operations requires numerous ophthalmic surgical videos with high-quality annotations, which are difficult to collect due to privacy concerns and labor consumption. Text-guided video generation (T2V) emerges as a promising solution to overcome this issue by generating ophthalmic surgical videos based on surgeon instructions.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  Ophora is a pioneering model that can generate ophthalmic surgical videos following natural language instructions. The approach first proposes a <strong>Comprehensive Data Curation</strong> pipeline to convert narrative ophthalmic surgical videos into a large-scale, high-quality dataset comprising over <strong>160K video-instruction pairs</strong> (Ophora-160K). Then, a <strong>Progressive Video-Instruction Tuning</strong> scheme transfers rich spatial-temporal knowledge from a T2V model pre-trained on natural video-text datasets for privacy-preserved ophthalmic surgical video generation. Experiments demonstrate that Ophora generates realistic and reliable ophthalmic surgical videos, validated through both quantitative analysis and ophthalmologist feedback.
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">Core Highlights</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; Ophora-160K: Large-Scale Video-Instruction Dataset
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Ophora-160K contains <strong>162,185 video clip-instruction pairs</strong> extracted from 9,819 narrative videos of ophthalmic surgery, with an average clip duration of 5.54 seconds. The dataset is constructed through a Comprehensive Data Curation pipeline that includes <strong>Narrative Information Refining</strong> using Qwen2.5-72B to remove irrelevant information from captions and transform them into generation instructions, and <strong>Dynamics-Based Filtering</strong> using PySceneDetect to filter clips with extreme temporal dynamics. Low-resolution clips below 720&times;480 are further removed to ensure quality.
  </p>
</div>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; Progressive Video-Instruction Tuning with Privacy Preservation
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Built on CogVideoX-2b as the backbone, Ophora employs a two-stage training approach. <strong>Transfer Pre-training</strong> uses the entire Ophora-160K dataset for continual pre-training on the denoising network while keeping the T5 encoder and VAE frozen, with timestep sub-interval sampling across GPUs for training efficiency. <strong>Privacy-Preserving Fine-Tuning</strong> uses Qwen2.5-VL-72B to detect and filter videos containing sensitive information (subtitles, watermarks), resulting in <strong>Ophora-28K</strong> &mdash; a privacy-preserved subset of over 28K video-instruction pairs used for fine-tuning to enhance privacy while avoiding overwriting previously learned spatial-temporal knowledge.
  </p>
</div>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; Superior Generation Quality and Downstream Impact
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Ophora achieves the best performance across all metrics compared to state-of-the-art surgical video generation models Endora and Bora, with the lowest FID and FVD scores and the highest CLIPScore of <strong>39.19</strong> demonstrating superior video-text consistency. Ophthalmologist evaluation across seven criteria and 600 generated videos confirms realistic surgical scenes with proper instruments and coherent actions. As a data augmentation tool, Ophora-synthesized videos boost downstream ophthalmic surgical workflow classification on OphNet, with MViTv2 achieving the highest improvement in phase-level Top-1 accuracy on the test set from <strong>37.92% to 42.24%</strong>.
  </p>
</div>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    Ophora establishes a pioneering approach for text-guided ophthalmic surgical video generation, demonstrating significant potential for developing general surgical AI systems. By combining a comprehensive data curation pipeline with progressive video-instruction tuning, Ophora generates realistic and reliable ophthalmic videos based on surgeon instructions while preserving patient privacy. The generated videos serve as effective augmented data for improving downstream ophthalmic surgical workflow understanding, addressing the critical shortage of annotated surgical video data in ophthalmology.
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>Proposed a <strong>Comprehensive Data Curation</strong> pipeline to convert narrative ophthalmic surgical videos into Ophora-160K, a large-scale, high-quality dataset comprising over 162K video-instruction pairs from 9,819 source videos.</li>
  <li>Introduced <strong>Progressive Video-Instruction Tuning</strong>, a two-stage approach (transfer pre-training + privacy-preserving fine-tuning) that transfers spatial-temporal knowledge from a T2V model pre-trained on natural videos for privacy-preserved ophthalmic surgical video generation.</li>
  <li>Demonstrated <strong>state-of-the-art video generation quality</strong> with the best FID, FVD, and CLIPScore across all evaluated models, validated by both quantitative analysis and ophthalmologist feedback across seven realism criteria.</li>
  <li>Validated the <strong>downstream impact</strong> of synthesized videos on ophthalmic surgical workflow understanding, achieving the highest performance boost on OphNet phase and operation classification tasks.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Wei Li, Ming Hu, Guoan Wang, Lihao Liu, Kaijing Zhou, Junzhi Ning, Xin Guo, Zongyuan Ge, Lixu Gu, <strong>Junjun He</strong>
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/mar-cry/Ophora" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">&larr; Back to Projects</a>
</div>

</div>
