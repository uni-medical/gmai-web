---
layout:    page
title:     "MedQ-Bench"
permalink: /projects/medq-bench/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<div style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; Projects</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">Medical Benchmarks &amp; Evaluation</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  MedQ-Bench: Evaluating and Exploring Medical Image Quality Assessment Abilities in MLLMs
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  The first comprehensive benchmark establishing a perception&ndash;reasoning paradigm for language-based evaluation of medical image quality with Multimodal LLMs
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">Fudan University &amp; Shanghai Artificial Intelligence Laboratory</strong> in collaboration with
  Imperial College London and University of Cambridge.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/liujiyaoFDU/MedQ-Bench" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/medq-bench/overview.jpg" alt="MedQ-Bench overview: evaluating MLLMs on medical image quality assessment with perception and reasoning tasks across 5 modalities" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 1. MedQ-Bench overview, evaluating MLLMs' abilities in medical image quality assessment with: (1) Comprehensive coverage: 3,308 samples across 5 modalities with 40+ degradation types. (2) Multi-faceted evaluation: perception&ndash;reasoning paradigm.
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Medical Image Quality Assessment (IQA) serves as the first-mile safety gate for clinical AI, yet existing approaches remain constrained by scalar, score-based metrics and fail to reflect the descriptive, human-like reasoning process central to expert evaluation. To address this gap, this work introduces <strong>MedQ-Bench</strong>, a comprehensive benchmark that establishes a perception&ndash;reasoning paradigm for language-based evaluation of medical image quality with Multi-modal Large Language Models (MLLMs).
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  MedQ-Bench defines two complementary tasks: <strong>MedQ-Perception</strong>, which probes low-level perceptual capability via human-curated questions on fundamental visual attributes, and <strong>MedQ-Reasoning</strong>, encompassing both no-reference and comparison reasoning tasks that align model evaluation with human-like reasoning on image quality. The benchmark spans <strong>5 imaging modalities</strong> (MRI, CT, endoscopy, histopathology, fundus photography) and over <strong>40 quality attributes</strong>, totaling 2,600 perceptual queries and 708 reasoning assessments.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  A rigorous evaluation of <strong>14 state-of-the-art MLLMs</strong> &mdash; including open-source, medical-specialized, and commercial systems &mdash; demonstrates that models exhibit preliminary but unstable perceptual and reasoning skills, with insufficient accuracy for reliable clinical use. The best AI model (GPT-5) scores <strong>68.97%</strong> on perception, significantly underperforming human experts at <strong>82.50%</strong>, highlighting the need for targeted optimization of MLLMs in medical IQA.
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">Core Highlights</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; Perception&ndash;Reasoning Evaluation Paradigm
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    MedQ-Bench pioneers a systematic evaluation methodology that mirrors clinicians' cognitive workflow: first perceiving quality-related attributes, then reasoning about their clinical impact. <strong>MedQ-Perception</strong> evaluates direct visual perception using single-image prompts with three question types &mdash; Yes-or-No, What (degradation identification), and How (severity assessment) &mdash; organized along two axes: degradation severity levels and general vs. modality-specific questions. <strong>MedQ-Reasoning</strong> encompasses no-reference reasoning tasks requiring models to generate comprehensive quality analyses, and comparison reasoning tasks evaluating fine-grained discrimination between image pairs at both coarse-grained and fine-grained difficulty levels.
  </p>
</div>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; Multi-Dimensional Judging Protocol with Human&ndash;AI Validation
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    To evaluate reasoning ability, a multi-dimensional judging protocol scores model outputs along <strong>four complementary axes</strong>: Completeness (coverage of key visual information), Preciseness (consistency with reference without contradictions), Consistency (internal logical coherence between reasoning and conclusions), and Quality Accuracy (correctness of quality comparison judgments). Human&ndash;AI alignment validation with <strong>200 cases</strong> evaluated by three board-certified medical imaging specialists demonstrates strong alignment: <strong>83.3% accuracy</strong> for completeness, <strong>87.0%</strong> for preciseness, and <strong>90.5%</strong> for consistency, with quadratic weighted Cohen's kappa values of <strong>0.774&ndash;0.985</strong>.
  </p>
</div>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; Comprehensive Empirical Analysis Reveals Critical Gaps
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Evaluation of 14 MLLMs reveals a clear performance hierarchy: closed-source frontier models lead (GPT-5 at <strong>68.97%</strong> perception), followed by open-source models (Qwen2.5-VL-72B at <strong>63.14%</strong>), while medical-specialized models unexpectedly underperform expectations (MedGemma-27B at <strong>57.16%</strong>). Mild degradation represents the most challenging detection scenario, with average accuracy dropping to <strong>56%</strong> compared to 72% for no degradation. Even the most advanced MLLMs fail to achieve excellent scores in completeness and preciseness for reasoning tasks, with the highest scores being only <strong>1.195/2.0</strong> for completeness and <strong>1.118/2.0</strong> for preciseness. The substantial <strong>13.53% gap</strong> between the best AI model and human experts underscores the need for targeted improvements.
  </p>
</div>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    MedQ-Bench establishes a clinically grounded and interpretable standard for measuring and advancing medical image quality assessment. By moving beyond high-level diagnostic reasoning toward foundational quality perceptual and reasoning skills, it reveals that current MLLMs &mdash; including both general-purpose and medical-specialized systems &mdash; possess only preliminary and unstable capabilities for this critical clinical task. The benchmark is expected to inform the development of MLLMs with stronger low-level visual understanding and trustworthy reasoning, paving the way for safe and reliable integration of automated quality control into clinical imaging workflows.
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>Introduced <strong>MedQ-Bench</strong>, the first comprehensive benchmark systematically evaluating medical IQA capabilities of MLLMs through a perception&ndash;reasoning paradigm spanning 5 modalities and 40+ quality attributes with 3,308 total samples.</li>
  <li>Designed a <strong>multi-dimensional judging protocol</strong> scoring model outputs along four complementary axes (completeness, preciseness, consistency, quality accuracy), validated through rigorous human&ndash;AI alignment achieving 83.3&ndash;90.5% accuracy.</li>
  <li>Constructed a <strong>clinically representative, multi-source dataset</strong> blending authentic clinical images, simulated degraded images via physics-based reconstruction, and AI-generated images for robust evaluation across realistic and controlled scenarios.</li>
  <li>Conducted <strong>comprehensive empirical analysis of 14 state-of-the-art MLLMs</strong>, revealing a 13.53% performance gap with human experts and that medical-specialized models unexpectedly underperform general-purpose ones, calling into question current domain adaptation strategies.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Jiyao Liu*, Jinjie Wei*, Wanying Qu, Chenglong Ma, Junzhi Ning, Yunheng Li, Ying Chen, Xinzhe Luo, Pengcheng Chen, Xin Gao, Ming Hu, Huihui Xu, Xin Wang, Shujian Gao, Dingkang Yang, Zhongying Deng, Jin Ye, Lihao Liu, <strong>Junjun He</strong>, Ningsheng Xu
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/liujiyaoFDU/MedQ-Bench" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">&larr; Back to Projects</a>
</div>

</div>
