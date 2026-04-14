---
layout:    page
title:     "MedQ-Deg"
permalink: /projects/medq-deg/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<div style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; Projects</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">Medical AI Robustness &amp; Benchmarking</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  MedQ-Deg: A Multidimensional Benchmark for Evaluating MLLMs Across Medical Image Quality Degradations
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  Revealing the AI Dunning-Kruger Effect &mdash; Medical MLLMs Maintain Inappropriately High Confidence Despite Severe Accuracy Collapse Under Image Degradation
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">Led by Shanghai AI Lab and Fudan University</strong> in collaboration with
  Shanghai Jiao Tong University and Imperial College London.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://uni-medical.github.io/MedQ-Robust-web" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">Project Page</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/medq-deg/overview.jpg" alt="MedQ-Deg benchmark framework: capability hierarchy with 30 fine-grained skills across 6 tasks, degradation hierarchy covering 18 types across 7 modalities, and data pipeline with three severity degrees" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 1. Overview of the MedQ-Deg benchmark framework. Two orthogonal hierarchies structure the evaluation: a capability hierarchy decomposing clinical competence into 30 fine-grained skills across 6 tasks, and a degradation hierarchy covering 18 degradation types across 7 modalities, each instantiated at three expert-calibrated severity degrees (L0&ndash;L2).
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Multimodal Large Language Models (MLLMs) have demonstrated remarkable performance on medical vision-language benchmarks, in some cases approaching or even surpassing human experts. However, these impressive results largely rely on carefully curated high-quality medical images. In real clinical environments, medical images are frequently degraded due to noise, motion artifacts, or hardware limitations &mdash; raising a critical question: can MLLMs remain reliable under such imperfect conditions?
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  MedQ-Deg addresses this gap with a comprehensive benchmark providing multi-dimensional evaluation spanning <strong>18 distinct degradation types</strong>, <strong>30 fine-grained capability dimensions</strong>, and <strong>7 imaging modalities</strong>, with <strong>24,894 question-answer pairs</strong>. Each degradation is implemented at 3 severity degrees calibrated by expert radiologists. The benchmark also introduces the <strong>Calibration Shift</strong> metric, which quantifies the gap between a model's perceived confidence and actual performance to assess metacognitive reliability under degradation.
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">Core Highlights</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; The AI Dunning-Kruger Effect
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    The study provides large-scale empirical evidence of the <strong>AI Dunning-Kruger Effect</strong>: medical MLLMs remain markedly overconfident even as their true capabilities deteriorate. Models not only suffer accuracy drops under image degradation, but also exhibit a striking inability to recognize the boundaries of their own competence, maintaining inappropriately high confidence while giving erroneous predictions. This overconfidence systematically widens with increasing degradation severity &mdash; all <strong>40 evaluated models</strong> exhibit consistently positive and increasing calibration shift from L0 to L2. This metacognitive failure reveals that current models lack the self-awareness required for safe clinical deployment.
  </p>
</div>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; Comprehensive Hierarchical Evaluation Framework
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    MedQ-Deg features a three-tier capability hierarchy grounded in the cognitive workflow of a practising clinician. Tasks are sourced from three top-tier medical benchmarks &mdash; GMAI-MMBench, OmniMedVQA, and MedXpertQA &mdash; with redundant items merged and the task structure reorganized. The hierarchy spans two high-level capabilities (medical perception and clinical reasoning), six mid-level clinical tasks (anatomical recognition, imaging perception, clinical understanding, basic science reasoning, diagnostic reasoning, and treatment reasoning), and <strong>30 fine-grained skills</strong>. Degradations are organized into five physics-grounded categories (artifacts, intensity jitter, resolution &amp; blur, motion interference, and noise) with both general and modality-specific corruptions.
  </p>
</div>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; Critical Findings Across 40 MLLMs
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    The comprehensive evaluation of <strong>40 mainstream MLLMs</strong> &mdash; spanning 9 commercial models, 21 open-source general models, and 10 medical-specialized models &mdash; reveals several critical findings. Most models exhibit severe robustness deficiency with a nonlinear &ldquo;cliff effect&rdquo; where perception remains relatively stable until a threshold is reached, after which vision-language integration undergoes catastrophic collapse. Even the best-performing model (InternVL3-Instruct 78B) experiences substantial accuracy drops at L2 severity. Across all model groups, Clinical Understanding is the strongest capability, while reasoning dimensions (Basic Science, Diagnosis, Treatment) are critically weak, with Treatment planning being the most catastrophic where multiple open-source models collapse to near-zero accuracy.
  </p>
</div>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    MedQ-Deg establishes the most comprehensive characterization of medical MLLM behavior under image quality variations to date. By revealing the AI Dunning-Kruger Effect and providing multidimensional analysis across capability dimensions, degradation categories, and imaging modalities, MedQ-Deg drives progress toward medical MLLMs that are robust and trustworthy in real clinical practice. The benchmark demonstrates that current models universally fail to calibrate their confidence under degradation, posing severe risks for clinical deployment where overconfident erroneous inferences may prevent necessary human oversight.
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>Constructed <strong>MedQ-Deg</strong> &mdash; a systematic benchmark featuring a three-tier hierarchical evaluation framework with 24,894 QA pairs across 18 degradation types, 30 fine-grained capability dimensions, and 7 imaging modalities, with severity degrees calibrated by expert radiologists.</li>
  <li>Introduced <strong>Calibration Shift</strong>, a quantitative metric providing large-scale empirical evidence of the AI Dunning-Kruger Effect: medical MLLMs remain markedly overconfident even as their true capabilities deteriorate, and this overconfidence systematically widens with increasing degradation severity.</li>
  <li>Conducted extensive evaluation of <strong>40 mainstream MLLMs</strong> spanning commercial, open-source general, and medical-specialized models, providing the most comprehensive characterization of medical MLLM behavior under image quality variations across multiple capability dimensions and degradation categories.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Jiyao Liu*, Junzhi Ning*, Chenglong Ma*, Wanying Qu, Jianghan Shen, Siqi Luo, Jinjie Wei, Jin Ye, Pengze Li, Tianbin Li, Jiashi Lin, Hongming Shan, Xinzhe Luo, Xiaohong Liu, Lihao Liu, <strong>Junjun He</strong>&dagger;, Ningsheng Xu&dagger;
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://uni-medical.github.io/MedQ-Robust-web" target="_blank" rel="noopener" class="pub-btn">Project Page</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">&larr; Back to Projects</a>
</div>

</div>
