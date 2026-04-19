---
layout:    page
title:     "Survey: Scientific LLMs"
permalink: /projects/survey-scillm/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<div style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">&larr; Projects</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">AI for Science</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  A Survey of Scientific Large Language Models: From Data Foundations to Agent Frontiers
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  A comprehensive, data-centric synthesis reviewing 270+ pre-/post-training datasets and 190+ benchmarks across all major scientific disciplines
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">Led by Shanghai Artificial Intelligence Laboratory</strong> in collaboration with
  Monash University, Fudan University, Shanghai Jiao Tong University, The Chinese University of Hong Kong,
  University College London, Stanford University, Virginia Tech, Johns Hopkins University, University of Cambridge,
  The University of Hong Kong, Caltech, and 15+ additional global institutions.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/open-sciencelab/Awesome-Scientific-Datasets-and-LLMs" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub Repository</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  {% include picture.html src="/assets/images/projects/survey-scillm/overview.jpg" alt="Survey of Scientific LLMs: continuum of scientific inquiry from subatomic particles to cosmological phenomena" class="" loading="eager" %}
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 1. The continuum of scientific inquiry spanning from subatomic particles through atomic and molecular structures, cellular and organismal biology, ecological systems, planetary sciences, to cosmological phenomena &mdash; illustrating the nested hierarchy of natural phenomena and the corresponding disciplinary frameworks that Scientific LLMs must encompass.
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Scientific Large Language Models (Sci-LLMs) are transforming how knowledge is represented, integrated, and applied in scientific research, yet their progress is shaped by the complex nature of scientific data. This survey presents a comprehensive, data-centric synthesis that reframes the development of Sci-LLMs as a co-evolution between models and their underlying data substrate. It formulates a unified taxonomy of scientific data and a hierarchical model of scientific knowledge, emphasizing the multimodal, cross-scale, and domain-specific challenges that differentiate scientific corpora from general natural language processing datasets.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  The survey systematically reviews recent Sci-LLMs &mdash; from general-purpose foundations to specialized models across diverse scientific disciplines &mdash; alongside an extensive analysis of over <strong>270 pre-/post-training datasets</strong> and over <strong>190 benchmark datasets</strong>. It demonstrates why Sci-LLMs pose distinct demands: heterogeneous, multi-scale, uncertainty-laden corpora that require representations preserving domain invariance and enabling cross-modal reasoning.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  On evaluation, the survey traces a shift from static exams toward process- and discovery-oriented assessments with advanced evaluation protocols. These data-centric analyses highlight persistent issues in scientific data development and discuss emerging solutions involving semi-automated annotation pipelines and expert validation. Finally, the work outlines a paradigm shift toward closed-loop systems where autonomous agents based on Sci-LLMs actively experiment, validate, and contribute to a living, evolving knowledge base.
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">Core Highlights</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 &mdash; Unified Data Taxonomy and Knowledge Hierarchy
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    The survey formulates a unified taxonomy of scientific data spanning <strong>six major categories</strong>: textual formats, visual data, symbolic representations, structured data, time-series data, and multi-omics integration. Complementing this is a hierarchical structure of scientific knowledge organized across five levels &mdash; factual, theoretical, methodological and technological, modeling and simulation, and insight &mdash; with dynamic interactions and evolution between them. This framework provides a principled lens for understanding why scientific corpora demand fundamentally different treatment than general NLP datasets.
  </p>
</div>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 &mdash; Comprehensive Model and Dataset Analysis Across Disciplines
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    The work provides the most extensive survey to date of Sci-LLMs across <strong>physics, chemistry, materials science, life sciences, astronomy, and earth science</strong>. It systematically catalogues over <strong>270 pre-/post-training datasets</strong> and reviews both general-purpose Sci-LLMs and domain-specific models. The analysis reveals that Sci-LLMs pose distinct demands &mdash; heterogeneous, multi-scale, uncertainty-laden corpora &mdash; that require representations preserving domain invariance and enabling cross-modal reasoning across diverse scientific modalities.
  </p>
</div>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 &mdash; From Static Benchmarks to Agent-Driven Scientific Discovery
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Examining over <strong>190 evaluation benchmarks</strong>, the survey traces a paradigm shift from static exam-style assessments toward process- and discovery-oriented evaluations with advanced protocols, including LLM/Agent-as-a-Judge and test-time learning approaches. Crucially, the work outlines a new paradigm of closed-loop systems where autonomous scientific agents based on Sci-LLMs actively experiment, validate, and contribute to living knowledge bases &mdash; encompassing multi-agent collaboration, tool use, self-evolving agents, and autonomous scientific discovery.
  </p>
</div>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    This survey provides a roadmap for building trustworthy, continually evolving artificial intelligence systems that function as a true partner in accelerating scientific discovery. By reframing Sci-LLM development as a co-evolution between models and their data substrate, the work highlights persistent issues in scientific data development &mdash; including data traceability crises, scientific data latency, and the lack of AI-readiness &mdash; while pointing toward emerging solutions involving semi-automated annotation pipelines, expert validation, and operating system-level interaction protocols for scientific data ecosystems.
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>Presented a <strong>data-centric synthesis</strong> that reframes Sci-LLM development as a co-evolution between models and their underlying data substrate, with a unified taxonomy of scientific data and a hierarchical model of scientific knowledge.</li>
  <li>Systematically reviewed Sci-LLMs across six major scientific disciplines (physics, chemistry, materials science, life sciences, astronomy, earth science), cataloguing <strong>270+ pre-/post-training datasets</strong> and analyzing their distinctive demands.</li>
  <li>Examined <strong>190+ evaluation benchmarks</strong> and traced the shift from static exams toward process- and discovery-oriented assessments, including LLM/Agent-as-a-Judge evaluation protocols.</li>
  <li>Outlined a <strong>paradigm shift toward closed-loop scientific agents</strong> that actively experiment, validate, and contribute to living knowledge bases, providing a comprehensive roadmap for trustworthy AI-driven scientific discovery.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:.5rem;">
  Ming Hu, Chenglong Ma, Wei Li, Wanghan Xu, Jiamin Wu, Jucheng Hu, Tianbin Li, Guohang Zhuang, Jiaqi Liu, Yingzhou Lu, Ying Chen, Chaoyang Zhang, Cheng Tan, Jie Ying, Guocheng Wu, et al.
</p>
<p style="font-size:.75rem;color:#94a3b8;line-height:1.7;margin-bottom:3rem;">
  In collaboration with 80+ researchers from 20+ global institutions including Shanghai AI Laboratory, Monash University, Fudan University, Shanghai Jiao Tong University, CUHK, UCL, Stanford, Virginia Tech, Johns Hopkins, University of Cambridge, HKU, Caltech, and others.<br>
  Corresponding authors: Zongyuan Ge, Shixiang Tang, <strong style="color:#64748b;">Junjun He</strong>, Chunfeng Song, Lei Bai, Bowen Zhou.
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/open-sciencelab/Awesome-Scientific-Datasets-and-LLMs" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">&larr; Back to Projects</a>
</div>

</div>
