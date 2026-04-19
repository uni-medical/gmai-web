---
layout:    page
title:     "GMAI-VL"
permalink: /projects/gmai-vl/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<div style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← Projects</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">Medical Multimodal Large Models</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  GMAI-VL &amp; GMAI-VL-5.5M
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  A General Medical Vision-Language Model Trained on 5.5 Million Image-Text Pairs from 219 Specialised Datasets
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">Led by Shanghai Artificial Intelligence Laboratory</strong> in collaboration with
  Shenzhen Institute of Advanced Technology (SIAT, CAS) and Shanghai Jiao Tong University.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/uni-medical/GMAI-VL" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://arxiv.org/abs/2411.14522" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv Paper</a>
  <a href="https://huggingface.co/papers/2411.14522" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 HuggingFace Paper</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/gmai-vl/gmai_vl1.png' | relative_url }}"
       alt="GMAI-VL: data pipeline, model architecture, and three-stage training overview"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 1. Overview of GMAI-VL and GMAI-VL-5.5M. (a) Data sources, departments, modalities, task types, and instruction formats of GMAI-VL-5.5M. (b) Architecture of GMAI-VL: Vision Encoder + Projector + Large Language Model. (c) Three-stage training process — shallow alignment, deep alignment, and instruction tuning.
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Despite remarkable progress in general AI, its application to clinical medicine remains constrained by the absence of domain-specific medical knowledge and the scarcity of large-scale, high-quality multimodal training data. Existing medical datasets are narrow in scope, limited to specific imaging modalities or clinical tasks, and rarely provide the breadth needed to train a truly general model.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  GMAI-VL addresses this challenge end-to-end. We first construct <strong>GMAI-VL-5.5M</strong> — the largest and most diverse multimodal medical dataset, assembling 5.5 million image-text pairs from 219 specialised medical datasets across 18 clinical departments and 10+ imaging modalities in both English and Chinese — then train <strong>GMAI-VL</strong>, a state-of-the-art general medical vision-language model, on this foundation using a progressive three-stage training strategy that deepens visual-linguistic alignment at each stage.
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">🌟 Core Highlights</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 — GMAI-VL-5.5M: Unprecedented Scale &amp; Diversity
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    GMAI-VL-5.5M is built by aggregating <strong>219 specialised medical imaging datasets</strong> into a unified corpus of <strong>5.5 million</strong> high-quality image-text pairs. The dataset spans <strong>18 clinical departments</strong> — from radiology and pathology to ophthalmology and endoscopy — and covers 10+ imaging modalities including CT, MRI, X-ray, ultrasound, fundus photography, and microscopy. Critically, all data is fully traceable to source institutions and the dataset is bilingual (EN &amp; CN), making it the most comprehensive foundation for training general medical AI to date.
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/gmai-vl/gmai_vl6.png' | relative_url }}"
       alt="Distribution of GMAI-VL-5.5M across modalities, departments, original tasks, and clinical tasks"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 3. Distribution of GMAI-VL-5.5M across imaging modalities (top-left), original ML task types (top-right), clinical departments (bottom-left), and clinical task categories (bottom-right) — illustrating the unprecedented breadth of anatomical, modal, and task coverage.
  </figcaption>
</figure>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 — Leading the Medical Multimodal Dataset Landscape
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Compared to all prior medical multimodal datasets, GMAI-VL-5.5M stands alone in four critical dimensions: <strong>scale</strong> (5.5M pairs — far exceeding any competitor), <strong>source diversity</strong> (219 specialised datasets vs. a handful for others), <strong>bilingual support</strong> (EN &amp; CN), and <strong>full source traceability</strong>. This combination makes GMAI-VL-5.5M not just quantitatively larger, but qualitatively superior — enabling generalisation across clinical contexts that no previous dataset could support.
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/gmai-vl/gmai_vl2.png' | relative_url }}"
       alt="Comparison table of multimodal medical datasets by size, modality, language, traceability, and source"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Table 1. Comparison of multimodal medical datasets across size, modality, language, traceability, and data source. GMAI-VL-5.5M (ours) — with 5.5M samples from 219 specialised medical imaging datasets — leads on every dimension.
  </figcaption>
</figure>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 — Three-Stage Progressive Training Strategy
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    GMAI-VL is trained on a carefully curated corpus spanning medical-caption data (33.7%), medical instruction data (31.8%), general text (13.2%), report generation (4.6%), and general instruction and caption data. Training proceeds in three stages: <strong>Stage 1 — Shallow Alignment</strong> (11.7M pairs) trains only the projector to align visual and textual representations while keeping the vision encoder and LLM frozen; <strong>Stage 2 — Deep Alignment</strong> (11.7M pairs) fine-tunes both the projector and LLM for deeper cross-modal fusion; <strong>Stage 3 — Instruction Tuning</strong> (10.0M pairs) specialises the model for clinical instruction-following and nuanced medical reasoning across diverse task formats.
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/gmai-vl/gmai_vl7.png' | relative_url }}"
       alt="Distribution of GMAI-VL training data by category and subcategory"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 4. Distribution of the GMAI-VL training dataset. The inner ring represents major categories (Medical-Caption, Medical-Instruct, General-Text, etc.); the outer ring shows specific constituent datasets with data volume — illustrating the comprehensive, multi-source training corpus assembled for the three-stage curriculum.
  </figcaption>
</figure>

<!-- Highlight 04 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    04 — State-of-the-Art Multimodal Medical Performance
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    GMAI-VL demonstrates strong performance across a wide range of clinical multimodal tasks: detailed image captioning from chest X-rays and CT scans, visual question answering from endoscopy and fundus images, multi-choice clinical reasoning (identifying artifact types, lesion characteristics, and differential diagnoses), and cross-modal medical inference. The model handles English and Chinese prompts, radiology and pathology images, and both structured (multiple-choice) and open-ended (free-text) instruction formats — validating the generality promised by its training corpus. Experiments confirm state-of-the-art performance across medical VQA and diagnostic reasoning benchmarks.
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/gmai-vl/gmai_vl5.png' | relative_url }}"
       alt="Example outputs of GMAI-VL across five clinical tasks"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 2. Example outputs of GMAI-VL across five clinical tasks: (a) chest X-ray captioning, (b) endoscopy VQA with multiple-choice reasoning, (c) lung nodule identification, (d) COVID-19 CT diagnostic reasoning, (e) diabetic retinopathy severity grading — demonstrating generalisation across modalities, languages, and instruction formats. Case (e) illustrates a failure mode still under investigation.
  </figcaption>
</figure>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    GMAI-VL establishes a new paradigm for general medical AI by simultaneously solving the twin challenges of data scarcity and model generality. By unifying 219 specialised medical datasets into a single 5.5M-pair corpus and training through a principled three-stage curriculum, GMAI-VL achieves state-of-the-art results on diverse medical VQA and diagnostic reasoning benchmarks. It marks a step-change from narrow, task-specific medical AI towards truly general models capable of assisting clinicians across departments, modalities, and languages.
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>Constructed <strong>GMAI-VL-5.5M</strong> — the largest and most diverse multimodal medical dataset: 5.5M image-text pairs from 219 specialised datasets, covering 18 clinical departments, 10+ imaging modalities, and bilingual EN &amp; CN with full source traceability.</li>
  <li>Developed <strong>GMAI-VL</strong>, a state-of-the-art general medical vision-language model, via a three-stage progressive training strategy (shallow alignment → deep alignment → instruction tuning) that systematically strengthens cross-modal clinical reasoning.</li>
  <li>Achieved <strong>state-of-the-art performance</strong> on multiple medical multimodal VQA and diagnostic reasoning benchmarks, outperforming prior medical-specific and general-purpose vision-language models.</li>
  <li>Fully <strong>open-sourced</strong> model weights and training code, enabling the community to reproduce, fine-tune, and build upon GMAI-VL for clinical and research applications.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Tianbin Li, Yanzhou Su, Wei Li, Bin Fu, Zhe Chen, Ziyan Huang, Guoan Wang, Chenglong Ma, Ying Chen, Ming Hu, Yanjun Li, Pengcheng Chen, Xiaowei Hu, Zhongying Deng, Yuanfeng Ji, Jin Ye, Yu Qiao, <strong>Junjun He</strong>
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/uni-medical/GMAI-VL" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>
  <a href="https://arxiv.org/abs/2411.14522" target="_blank" rel="noopener" class="pub-btn">arXiv Paper</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">← Back to Projects</a>
</div>

</div>
