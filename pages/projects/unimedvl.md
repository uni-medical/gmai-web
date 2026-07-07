---
layout:    page
title:     "UniMedVL"
permalink: /projects/unimedvl/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<div style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← Projects</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">Medical AI · Unified Multimodal Modeling · ICML 2026</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  UniMedVL
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  Unifying Medical Multimodal Understanding and Generation through Observation–Knowledge–Analysis
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">A unified medical multimodal AI project</strong> for jointly learning image understanding, medical image generation, and interleaved visual-textual reasoning within a single model. Developed by the UniMedVL authors across collaborating research and academic institutions.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/uni-medical/UniMedVL" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://arxiv.org/abs/2510.15710" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv Paper</a>
  <a href="https://huggingface.co/datasets/General-Medical-AI/UniMedVL-5M" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 Dataset</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/overview-tasks.png" alt="UniMedVL task overview across understanding, generation, interleaved, and traditional medical imaging tasks" class="" loading="eager" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    UniMedVL overview. The model covers understanding tasks, image generation tasks, and interleaved medical workflows across 5.6M samples, 8 imaging modalities, 5 understanding benchmarks, and 8 medical imaging modalities.
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Medical AI systems increasingly need to do more than classify an image or answer a single question. A realistic diagnostic workflow often requires a model to read medical images, integrate domain knowledge, explain findings in text, localize abnormalities, compare modalities, and sometimes generate clinically meaningful visual outputs. Existing medical multimodal systems usually divide these capabilities across separate models: one model for visual question answering, another for report generation, another for segmentation, and another for image synthesis. This fragmentation creates a mismatch with clinical workflows, where reasoning and output generation are tightly coupled.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  <strong>UniMedVL</strong> (accepted at <strong>ICML 2026</strong>) addresses this gap by treating medical understanding and generation as mutually reinforcing capabilities rather than isolated tasks. The project introduces a unified medical vision-language model trained with one set of parameters, together with <strong>UniMedVL-5M</strong>, a large-scale multimodal medical corpus containing more than <strong>5.6 million</strong> instances across <strong>8 medical imaging modalities</strong>. Through an <strong>Observation–Knowledge–Analysis</strong> framework and a three-stage progressive curriculum, UniMedVL learns to process multimodal medical inputs and produce textual, visual, and interleaved multimodal outputs in a single inference framework.
</p>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/unified-representation.png" alt="Comparison between task-specific medical AI systems and UniMedVL shared multimodal representation" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Motivation. Conventional medical AI pipelines decouple VQA, reporting, segmentation, and generation, while UniMedVL uses a shared multimodal representation for unified medical understanding and generation.
  </figcaption>
</figure>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">Core Highlights</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 — UniMedVL-5M: A Large-Scale Medical Multimodal Corpus
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    UniMedVL-5M reformulates fragmented medical resources into standardized multimodal input-output pairs. Instead of treating image-caption data, medical VQA data, image generation data, and image translation data as separate silos, the dataset organizes them into a unified training substrate for understanding, generation, and interleaved multimodal tasks. It covers eight major medical imaging modalities, including color fundus photography, chest X-ray, CT, histopathology, MRI, OCT, ultrasound, and endoscopy, allowing the model to learn broad cross-modal medical correspondences rather than overfitting to a single modality.
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    The curation pipeline combines coarse modality-specific filtering, text-length and image-resolution checks, medical image-text alignment scoring, and expert audit. For alignment, candidate captions are generated for each image and compared with original text through semantic embeddings and medical-specific MedSigLIP similarity. The retained high-quality subset is then further enriched with interleaved task supervision, including medical prompt segmentation, super-resolution, counterfactual generation, virtual immunohistochemistry staining, and cross-modal synthesis.
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/oka-framework.png" alt="Observation-Knowledge-Analysis framework for UniMedVL data curation and progressive curriculum training" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Observation and Knowledge levels. UniMedVL-5M is built from heterogeneous medical data through quality filtering, alignment scoring, and interleaved-task construction; training then proceeds through foundation training, instruction tuning, and unified multimodal training.
  </figcaption>
</figure>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 — Observation–Knowledge–Analysis: A Framework for Medical Unification
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    The central design of UniMedVL is the Observation–Knowledge–Analysis framework. At the <strong>Observation</strong> level, diverse medical datasets are converted into aligned multimodal samples. At the <strong>Knowledge</strong> level, the model is trained through progressive curriculum learning: foundation training establishes basic medical vision-language alignment; instruction tuning improves task following with high-quality medical instructions; and unified multimodal training couples understanding and generation through interleaved inputs and outputs. At the <strong>Analysis</strong> level, the resulting model performs both comprehension and generation with a single parameter set.
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    This design is important because naive multitask training can easily cause task interference. UniMedVL instead stages the learning process so that low-level cross-modal alignment is learned before more complex instruction following and interleaved reasoning. The final stage exposes the model to tasks where textual and visual outputs must be produced together, encouraging the model to learn shared representations useful for both diagnostic reasoning and visual synthesis.
  </p>
</div>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 — One Model for Understanding, Generation, and Interleaved Outputs
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    UniMedVL adopts a unified architecture with dual visual encoders and a Transformer backbone. A semantic vision encoder extracts tokens for medical image understanding, while a VAE-based visual pathway supports image generation. These visual tokens are integrated with text tokens inside a shared sequence modeling framework. Specialized feed-forward layers handle understanding and generation-specific representations, while shared self-attention layers allow cross-task information exchange. Text outputs are optimized with next-token prediction, and visual outputs are optimized with rectified flow matching in the VAE latent space.
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    The resulting system supports three families of tasks: <strong>understanding</strong> tasks such as medical VQA, image captioning, diagnostic reasoning, and report generation; <strong>generation</strong> tasks such as text-guided medical image synthesis; and <strong>interleaved</strong> tasks such as virtual staining, super-resolution, counterfactual generation, and cross-modal image synthesis where the model must jointly produce visual and textual outputs.
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/qualitative-capabilities.png" alt="Qualitative UniMedVL examples for text-driven generation, virtual staining, super-resolution, counterfactual generation, and cross-modal synthesis" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Qualitative capability overview. UniMedVL supports text-to-image generation, virtual staining, super-resolution, counterfactual generation, and cross-modal synthesis under one unified medical multimodal framework.
  </figcaption>
</figure>

<!-- Highlight 04 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    04 — Competitive Understanding and Strong Multi-Modality Generation
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    UniMedVL is evaluated on five medical visual understanding benchmarks: VQA-RAD, SLAKE, PathVQA, OmniMedVQA, and GMAI-MMBench. Despite being a unified understanding-and-generation model rather than an understanding-only specialist, UniMedVL reaches a <strong>67.47 average score</strong> across these benchmarks and achieves strong results on challenging settings such as OmniMedVQA and GMAI-MMBench. Compared with prior unified medical models that rely on task-specific checkpoints, UniMedVL keeps inference unified under a single model.
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    On generation, UniMedVL reports an average <strong>FID of 96.29</strong> across eight medical imaging modalities, improving over the generation-only variant and general unified baselines. The model also achieves an average <strong>BioMedCLIP Score of 0.706</strong>, indicating stronger semantic alignment between medical prompts and generated images. External held-out generation evaluation further suggests that the gains are not limited to the training distribution.
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/understanding-benchmarks.png" alt="Comparison table of UniMedVL against LVLMs and unified multimodal models on medical visual understanding tasks" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Medical visual understanding benchmarks. UniMedVL reaches a 67.47 average score across VQA-RAD, SLAKE, PathVQA, OmniMedVQA, and GMAI-MMBench while preserving a unified understanding-and-generation architecture.
  </figcaption>
</figure>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/biomedclip-radar.png" alt="BioMedCLIP score radar chart across eight medical imaging modalities" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Multi-modality generation performance. UniMedVL achieves strong BioMedCLIP alignment across eight medical imaging modalities, showing that unified training can improve generation fidelity rather than degrade it.
  </figcaption>
</figure>

<!-- Highlight 05 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    05 — Evidence of Bidirectional Transfer between Understanding and Generation
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    A key empirical finding is that medical understanding and medical generation do not necessarily compete. Ablation studies show that adding generation training improves understanding performance, while adding understanding supervision improves generation fidelity. In the foundation stage, joint training lifts GMAI-MMBench accuracy from 0.505 to 0.593 compared with the understanding-only variant. Across generation experiments, incorporating understanding supervision reduces average FID compared with generation-only training.
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    The interleaved task results further support this conclusion. UniMedVL achieves <strong>20.27 PSNR</strong> for H&amp;E-to-IHC virtual staining, <strong>27.29 PSNR / 0.890 SSIM</strong> for MRI super-resolution, and <strong>25.07 PSNR / 0.882 SSIM</strong> on average for bidirectional T2-FLAIR MRI translation. These results suggest that unified multimodal training can preserve task-specific utility while enabling broader medical workflow coverage.
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/bidirectional-transfer.png" alt="Bidirectional transfer and progressive curriculum trajectory in UniMedVL" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Bidirectional transfer. Ablations show that generation supervision can improve understanding, while understanding supervision can improve generation quality; progressive curriculum learning further strengthens this cross-task synergy.
  </figcaption>
</figure>

<!-- Additional Results -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Additional Results and Ablations</h2>
<figure style="margin:0 0 2rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/training-stage-ablation.png" alt="Ablation tables for understanding-generation synergy and progressive training stages" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Training-stage ablations. Joint training outperforms single-task variants, and the progressive stages bring cumulative gains across understanding and generation metrics.
  </figcaption>
</figure>
<figure style="margin:0 0 2rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/understanding-augmentation-ablation.png" alt="Ablation table on data augmentation for medical understanding tasks" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Understanding-task augmentation. Interleaved supervision improves medical visual understanding scores across the reported benchmarks.
  </figcaption>
</figure>
<figure style="margin:0 0 2rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/generation-augmentation-ablation.png" alt="Ablation table on data augmentation for generation quality" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Generation augmentation. Caption-augmented and interleaved data improve generation quality, reducing gFID while increasing BioMedCLIP score.
  </figcaption>
</figure>
<figure style="margin:0 0 2rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/interleaved-performance-tables.png" alt="External generation, modality-specialized generator, virtual staining, and super-resolution result tables" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Interleaved and generation results. UniMedVL is evaluated on held-out generation datasets, modality-specialized generation, virtual staining, and MRI super-resolution.
  </figcaption>
</figure>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/unimedvl/translation-counterfactual-results.png" alt="Medical image translation and counterfactual generation result tables" class="" loading="lazy" style="width:100%;display:block;" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Medical image translation and counterfactual generation results. UniMedVL reports competitive bidirectional MRI translation and counterfactual generation performance.
  </figcaption>
</figure>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    UniMedVL is a step toward unified medical multimodal modeling: a single model that can understand medical images, generate medical images, and handle interleaved visual-textual workflows. Its main message is not merely that one model can cover many tasks, but that carefully aligned data, progressive curriculum design, and joint objectives can make understanding and generation reinforce each other. The current system remains a research model rather than a deployable clinical solution: it focuses on 2D medical imaging, relies on automatic evaluation metrics, and still requires further clinical validation before real-world use. Nevertheless, UniMedVL provides a reusable dataset, training recipe, and model design for future work on general-purpose medical multimodal AI.
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li><strong>UniMedVL-5M</strong>: A 5.6M-sample multimodal medical corpus covering eight imaging modalities and supporting understanding, generation, and interleaved multimodal tasks.</li>
  <li><strong>Observation–Knowledge–Analysis framework</strong>: A three-level formulation that maps medical multimodal unification to data alignment, curriculum learning, and unified model analysis.</li>
  <li><strong>Progressive Curriculum Learning</strong>: A three-stage training pipeline combining foundation training, instruction tuning with enhanced medical supervision, and unified multimodal training.</li>
  <li><strong>Unified medical vision-language model</strong>: A single-parameter model that performs medical image understanding and generation without switching checkpoints.</li>
  <li><strong>Empirical evidence of task synergy</strong>: Benchmark and ablation results show bidirectional transfer between understanding and generation across medical tasks.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Junzhi Ning*, Wei Li*, Cheng Tang*, Jiashi Lin, Chenglong Ma, Chaoyang Zhang, Jiyao Liu, Ying Chen, Shujian Gao, Yuandong Pu, Huihui Xu, Chenhui Gou, Ziyan Huang, Yi Xin, Qi Qin, Diping Song, Bin Fu, Guang Yang, Yuanfeng Ji, Tianbin Li, Yanzhou Su†, Jin Ye, Shixiang Tang, Zhongying Deng, Lihao Liu, Ming Hu, <strong>Junjun He</strong>†<br>
  <em>* Equal contribution &nbsp;· &nbsp;† Corresponding authors</em>
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/uni-medical/UniMedVL" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>
  <a href="https://arxiv.org/abs/2510.15710" target="_blank" rel="noopener" class="pub-btn">arXiv Paper</a>
  <a href="https://huggingface.co/datasets/General-Medical-AI/UniMedVL-5M" target="_blank" rel="noopener" class="pub-btn">🤗 Dataset</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">← Back to Projects</a>
</div>

</div>
