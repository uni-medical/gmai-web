---
layout:    page
title:     "SlideChat"
permalink: /projects/slide-chat/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← Projects</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">Clinical AI · Computational Pathology</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  SlideChat
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  A Large Vision-Language Assistant for Whole-Slide Pathology Image Understanding
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">Led by Shanghai Artificial Intelligence Laboratory</strong>, in collaboration with
  Xiamen University, East China Normal University, Stanford University, and Monash University.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/uni-medical/SlideChat" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://arxiv.org/abs/2410.11761" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv Paper</a>
  <a href="https://huggingface.co/General-Medical-AI/SlideChat_Weight" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 Model Weights</a>
  <a href="https://huggingface.co/datasets/General-Medical-AI/SlideChat" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 Dataset</a>
  <a href="https://uni-medical.github.io/SlideChat.github.io/" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🍎 Homepage</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/slide-chat/SlideChat2.png' | relative_url }}"
       alt="SlideChat architecture — WSI patching, CONCH patch encoder, LongNet slide encoder, multimodal projector, LLM, two-stage training"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    SlideChat overview: gigapixel WSIs are divided into 224×224 patches, encoded by CONCH (patch-level) and LongNet (slide-level), then projected into a LLM for conversational pathology understanding. Training uses two stages — domain alignment on 4.2K WSI captions, then visual instruction learning on 176K VQA pairs.
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Whole-slide images (WSIs) are the gold standard for digital pathology — gigapixel scans that can exceed 100,000 × 100,000 pixels and encode the full spatial context of tissue samples essential for clinical diagnosis. Yet existing multimodal large language models (MLLMs) are limited to patch-level analysis, discarding the global tissue architecture and cross-region relationships that pathologists rely on. SlideChat is the first vision-language assistant designed specifically to understand these gigapixel slides in their entirety, bridging this critical gap with a scalable, clinically grounded architecture. Accepted at <strong>CVPR 2025</strong>.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  To power SlideChat's development, the team created <strong>SlideInstruction</strong> — the largest instruction-following dataset for WSIs, containing 4.2K WSI captions and 176K VQA pairs derived from 4,915 TCGA pathology reports using GPT-4-guided curation. They further established <strong>SlideBench</strong>, a rigorous multi-modal evaluation benchmark covering captioning and visual question-answering across multiple cancer types, validated by expert pathologists. SlideChat achieves state-of-the-art performance on 18 of 22 tasks.
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">🌟 Core Highlights</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 — SlideInstruction: Largest WSI Instruction-Following Dataset
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    The team curated SlideInstruction from 4,915 WSI-report pairs in the TCGA database, covering 10 cancer types across 4,028 patients. GPT-4 was used to extract high-quality instruction data in three stages: report refinement to remove administrative noise, caption generation producing 4,181 concise clinical WSI descriptions, and VQA pair generation yielding 175,753 question-answer pairs. These span 13 narrow categories within three broad clinical domains — microscopy, diagnosis, and clinical considerations — mirroring the real pathology workflow.
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/slide-chat/SlideChat3.png' | relative_url }}"
       alt="SlideInstruction data generation pipeline: GPT-4 extracts WSI captions and VQA pairs from pathology reports"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    SlideInstruction generation pipeline: GPT-4 extracts WSI-caption pairs and structured VQA pairs (open-set and closed-set) from TCGA pathology reports, spanning microscopy, diagnosis, and clinical scenarios.
  </figcaption>
</figure>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 — Novel Four-Component Architecture for Gigapixel Understanding
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    SlideChat serializes each WSI into non-overlapping 224×224 patches at 20× magnification. A frozen CONCH patch-level encoder extracts fine-grained local features (cellular structures, nuclear morphology). A LongNet-based slide-level encoder with sparse attention then processes the full patch token sequence — handling sequences far longer than standard transformers — to generate contextual slide-level embeddings that capture global tissue architecture. A multimodal projector aligns visual features with the language model's embedding space, and Qwen2.5-7B-Instruct serves as the backbone LLM. Training uses two stages: Cross-Domain Alignment (projector + slide encoder only, using 4.2K captions), then Visual Instruction Learning (all components trainable, using 176K VQA pairs).
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/slide-chat/SlideChat2.png' | relative_url }}"
       alt="SlideChat architecture: patch-level encoder (CONCH), LongNet slide-level encoder, multimodal projector, and LLM"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    SlideChat architecture. WSI patches are encoded by CONCH (patch-level), processed by a LongNet slide-level encoder for global context, and projected into the LLM's embedding space for conversational reasoning.
  </figcaption>
</figure>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 — Benchmark Results: 81.17% Accuracy, SOTA on 18 of 22 Tasks
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    SlideChat achieves 81.17% overall accuracy on SlideBench-VQA (TCGA) — a 13.47% improvement over the second-best model — and 54.14% on the out-of-distribution SlideBench-VQA (BCNB) in zero-shot settings. Compared to general MLLMs (GPT-4o patch: 57.91%; thumbnail: 34.07%) and specialized models (MedDr: 67.70%), SlideChat's holistic WSI understanding enables performance that patch-based approaches cannot match. Results hold across all three clinical domains: microscopy (87.64%), diagnosis (73.27%), and clinical tasks (84.26%).
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/slide-chat/SlideChat6.png' | relative_url }}"
       alt="SlideBench performance radar charts: SlideChat vs GPT-4o, MedDr, LLaVA-Med, Quilt-LLaVA on TCGA and BCNB benchmarks"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Performance radar on SlideBench-VQA (TCGA, left) and (BCNB, right). SlideChat dominates across all categories — cytomorphological characteristics, disease detection, staging/grading, and zero-shot breast cancer classification — with consistent margins over all baselines.
  </figcaption>
</figure>

<!-- Highlight 04 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    04 — Clinical Conversational AI: Multi-Turn Diagnostic Reasoning
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    SlideChat supports multi-turn conversational reasoning over complete whole-slide images, enabling pathologists to ask follow-up questions about specific findings. Clinical examples include bladder tumor analysis (identifying lymphovascular invasion, cell differentiation grade, tumor type, anatomical invasion) and breast carcinoma assessment (lymph node metastasis status, prognosis prediction, staging by greatest dimension, treatment recommendation). The model provides clinically grounded, contextually accurate answers drawing on both local cellular detail and global tissue architecture — capabilities fundamentally unavailable to patch-only systems.
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/slide-chat/SlideChat7.png' | relative_url }}"
       alt="SlideChat clinical conversations: bladder tumor and breast carcinoma multi-turn diagnostic Q&A"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    SlideChat in action: (C) bladder tumor WSI — accurate identification of lymphovascular invasion, differentiation grade, tumor classification, and anatomical invasion layer; (D) breast carcinoma WSI — lymph node metastasis status, prognosis assessment, pT staging, and treatment selection.
  </figcaption>
</figure>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    SlideChat represents a landmark advance in computational pathology — the first system to achieve genuine gigapixel whole-slide image understanding through conversational AI. By combining patch-level cellular precision with slide-level contextual reasoning via LongNet, and grounding training on the large-scale SlideInstruction dataset, SlideChat bridges the critical gap between patch-based analysis and clinically meaningful whole-slide interpretation. Its CVPR 2025 acceptance and SOTA results on 18/22 benchmarks, together with the full open-source release of model, dataset, and benchmark, establish a new foundation for AI-assisted pathology diagnosis, research, and education.
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li><strong>SlideInstruction</strong>: Largest WSI instruction-following dataset — 4.2K WSI-caption pairs and 176K VQA pairs across 13 clinical categories, curated from 4,915 TCGA pathology reports via GPT-4.</li>
  <li><strong>SlideChat</strong>: First vision-language assistant for gigapixel WSI understanding — CONCH patch encoder + LongNet slide encoder + LLM, achieving SOTA on 18/22 tasks (CVPR 2025).</li>
  <li><strong>SlideBench</strong>: Comprehensive WSI multi-modal benchmark spanning captioning and VQA across TCGA (1,494 → 3,176 samples, 10 → 31 cancer types), BCNB, CPTAC, and HISTAI subsets, all expert-validated.</li>
  <li><strong>Open-source release</strong>: Full release of SlideChat model weights, SlideInstruction dataset, and SlideBench evaluation framework to accelerate computational pathology research.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Ying Chen*, Guoan Wang*, Yuanfeng Ji*†, Yanjun Li, Jin Ye, Tianbin Li, Ming Hu, Rongshan Yu, Yu Qiao, <strong>Junjun He</strong>†<br>
  <em>* Equal contribution &nbsp;· &nbsp;† Corresponding authors</em><br>
  Shanghai AI Laboratory · Xiamen University · East China Normal University · Stanford University · Monash University
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/uni-medical/SlideChat" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>
  <a href="https://arxiv.org/abs/2410.11761" target="_blank" rel="noopener" class="pub-btn">arXiv Paper</a>
  <a href="https://huggingface.co/General-Medical-AI/SlideChat_Weight" target="_blank" rel="noopener" class="pub-btn">🤗 Model</a>
  <a href="https://huggingface.co/datasets/General-Medical-AI/SlideChat" target="_blank" rel="noopener" class="pub-btn">🤗 Dataset</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">← Back to Projects</a>
</div>

</div>
