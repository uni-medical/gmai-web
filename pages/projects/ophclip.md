---
layout:    page
title:     "OphCLIP"
permalink: /projects/ophclip/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<div style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← Projects</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">Surgical AI · Ophthalmic Surgery</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  OphCLIP
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  Hierarchical Retrieval-Augmented Learning for Ophthalmic Surgical Video-Language Pretraining
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">Led by Shanghai AI Laboratory and Monash University</strong>, in collaboration with
  University of Strasbourg, TU München, University of Michigan, Hong Kong Polytechnic University,
  Shanghai Jiao Tong University, and Xiamen University.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:.75rem;">
  <a href="https://github.com/minghu0830/OphCLIP" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://arxiv.org/abs/2411.14522" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv Paper</a>
</div>

<!-- Venue badge -->
<div style="font-size:.75rem;font-weight:600;color:#059669;margin-bottom:2.5rem;">ICCV 2025</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/ophclip/ophclip1.png' | relative_url }}"
       alt="OphCLIP: dataset scale comparison and zero-shot accuracy gains over CLIP"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 1. Top: OphVL is 15× larger than existing surgical VLP datasets, with 375K clip-text pairs from 44K videos. Bottom: OphCLIP (dark blue) consistently outperforms vanilla CLIP and CLIP* (CLIP fine-tuned on OphVL) across phase recognition benchmarks.
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Vision-language pretraining (VLP) has enabled open-world generalisation beyond predefined labels — a critical capability in surgery, where the diversity of procedures, instruments, and patient anatomies makes fixed label sets impractical. However, applying VLP to ophthalmic surgery presents unique challenges: limited vision-language data, intricate procedural workflows spanning hours, and the need for hierarchical understanding from fine-grained surgical actions to global clinical reasoning.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  To address these challenges, we introduce <strong>OphVL</strong> — the first large-scale, hierarchically structured VLP dataset for ophthalmic surgery, containing over <strong>375K video-text pairs</strong> from 7.5K hours of surgical video. This makes OphVL 15× larger than existing surgical VLP datasets. It captures a diverse range of attributes: surgical phases, operations, instruments, medications, disease causes, surgical objectives, and postoperative care.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  Building on OphVL, we propose <strong>OphCLIP</strong>, a hierarchical retrieval-augmented VLP framework. OphCLIP learns short-term representations by aligning video clips with detailed narrations, and long-term representations by matching full videos with structured title summaries. It further leverages a knowledge base of silent surgical videos through retrieval-based supervision. Evaluations across <strong>11 benchmark datasets</strong> for phase recognition and multi-instrument identification demonstrate OphCLIP's robust zero-shot generalisation, establishing it as a foundation model for ophthalmic surgery.
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">🌟 Core Highlights</h2>

<!-- Highlight 01 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 — OphVL: The Largest Ophthalmic Surgical VLP Dataset
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    OphVL contains <strong>375K clip-text pairs</strong> extracted from 13,654 narrated videos and 30,636 silent videos (totalling 9,363 hours). In collaboration with three practising ophthalmologists, over 3,000 ophthalmic surgery terms were compiled to guide YouTube channel discovery and video collection. A rigorous curation pipeline — filtering for narrative style, ASR-based transcription with Whisper Large-V3, denoising via SurgicBERTa, and LLM-guided text rewriting — produces high-quality hierarchical video-text pairs.
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    OphVL captures tens of thousands of attribute combinations spanning surgeries, phases, instruments, medications, eye disease causes, surgical objectives, and postoperative care — making it the most comprehensive ophthalmic surgical dataset to date.
  </p>
</div>

<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/ophclip/ophclip3.png' | relative_url }}"
       alt="OphVL construction pipeline: video collection, filtering, ASR transcription, text denoising, and clip-text pairing"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 2. OphVL construction pipeline — from YouTube channel discovery and narrative-style filtering through ASR transcription, SurgicBERTa-based denoising, LLM text extraction, to hierarchical clip-text pair generation. The pyramid (left) shows the structured surgical concept hierarchy.
  </figcaption>
</figure>

<!-- Highlight 02 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 — Hierarchical Retrieval-Augmented Pretraining
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    OphCLIP performs vision-language pretraining at <strong>two hierarchical levels</strong>. At the <em>clip level</em>, short video segments are aligned with detailed narration texts via contrastive learning, capturing fine-grained surgical actions and instrument usage. At the <em>video level</em>, entire procedure videos are matched with high-level title summaries, building long-term procedural context and clinical reasoning.
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    The key innovation is <strong>silent-video retrieval augmentation</strong>: a dynamically updated memory bank stores multi-modal embeddings of 30K+ silent surgical videos. Using maximum inner product search (MIPS), the system retrieves the top-K most relevant silent videos for each narrative video, adding them as auxiliary supervisory signals. This facilitates knowledge transfer across narrated and silent procedure videos — mirroring how surgeons learn from both explained and unexplained surgical footage.
  </p>
</div>

<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/ophclip/ophclip4.png' | relative_url }}"
       alt="OphCLIP framework: clip-level and video-level pretraining with silent video knowledge base"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 3. OphCLIP framework. Narrative videos are processed at clip level (narration alignment) and video level (title alignment). Silent videos form a dynamically updated knowledge base; maximum inner product search retrieves top-K relevant entries to augment video-level pretraining.
  </figcaption>
</figure>

<!-- Highlight 03 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 — State-of-the-Art Zero-Shot Surgical Understanding
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    OphCLIP achieves strong zero-shot performance across 11 benchmark datasets covering phase recognition and multi-instrument identification. On Cataract-1K, OphCLIP reaches <strong>62.8% accuracy / 48.5% F1</strong> — vs. vanilla CLIP's 6.9%/2.0%. On Cat-21, it achieves <strong>41.4% / 28.8%</strong> — nearly tripling CLIP's performance. These gains hold across both fine-grained (operation-level) and coarse-grained (phase-level) tasks.
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    For multi-instrument recognition, OphCLIP dramatically reduces false positive rates from 100% (CLIP) to 45–51%, while improving mAP. In few-shot linear probing with 100% training data, OphCLIP reaches 72.1% accuracy on Cat-21 — demonstrating strong transferable visual representations.
  </p>
</div>

<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/ophclip/ophclip5.png' | relative_url }}"
       alt="Zero-shot performance comparison table across phase recognition and instrument identification tasks"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Table 1. Zero-shot comparison on phase recognition (accuracy/F1) and instrument identification (FPR/mAP). OphCLIP consistently outperforms CLIP, SLIP, and LaCLIP across all benchmarks.
  </figcaption>
</figure>

<!-- Highlight 04 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    04 — Clinically Meaningful Attention Patterns
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Attention map visualisations reveal that OphCLIP learns clinically meaningful focus patterns. For phase recognition (e.g., phacoemulsification), OphCLIP focuses on the relevant instruments and anatomical structures, while vanilla CLIP attends to irrelevant background regions. For instrument recognition, pretraining on OphVL enables both CLIP* and OphCLIP to consistently attend to domain-specific tools like the lens injector.
  </p>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    This cross-modal understanding — where the model prioritises clinically relevant regions in visual data that correspond to surgical concepts in text — demonstrates that OphCLIP has genuinely internalised ophthalmic surgical knowledge rather than relying on spurious visual correlations.
  </p>
</div>

<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/ophclip/ophclip6.png' | relative_url }}"
       alt="Attention map visualisations: CLIP vs CLIP* vs OphCLIP for phase and instrument recognition"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 4. Attention map comparison on unseen Cataract-1K dataset. Left: For phase recognition ("phacoemulsification"), OphCLIP attends to instruments and anatomy. Right: For instrument recognition, OphCLIP correctly focuses on the lens injector. Vanilla CLIP shows diffuse, non-specific attention.
  </figcaption>
</figure>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    OphCLIP establishes a new paradigm for ophthalmic surgical AI by combining the largest surgical VLP dataset (OphVL, 375K pairs) with a hierarchical retrieval-augmented framework that learns from both narrated and silent surgical videos. Its robust zero-shot performance across 11 benchmarks — coupled with clinically meaningful attention patterns — positions OphCLIP as a foundation model for ophthalmic surgical workflow understanding, opening avenues for more specialised and context-aware AI in eye surgery.
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>Constructed <strong>OphVL</strong> — the first large-scale ophthalmic surgical VLP dataset with 375K clip-text pairs from 7.5K hours of video, 15× larger than existing surgical VLP datasets.</li>
  <li>Proposed <strong>hierarchical vision-language pretraining</strong> that learns both fine-grained (clip-narration) and long-term (video-title) representations through an alternating training strategy.</li>
  <li>Introduced <strong>silent-video retrieval augmentation</strong> — a dynamically updated memory bank of 30K+ silent surgical videos that enriches multi-modal learning through cross-video knowledge transfer.</li>
  <li>Achieved <strong>state-of-the-art zero-shot performance</strong> on 11 benchmark datasets for surgical phase recognition and multi-instrument identification, establishing OphCLIP as a foundation model for ophthalmic surgery.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:.5rem;">
  Ming Hu, Kun Yuan, Yaling Shen, Feilong Tang, Xiaohao Xu, Lin Zhou, Wei Li, Ying Chen, Zhongxing Xu, Zelin Peng, Siyuan Yan, Vinkle Srivastav, Diping Song, Tianbin Li, Danli Shi, Jin Ye, Nicolas Padoy, Nassir Navab, <strong>Junjun He</strong>, Zongyuan Ge
</p>
<p style="font-size:.75rem;color:#64748b;margin-bottom:3rem;">ICCV 2025</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/minghu0830/OphCLIP" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>
  <a href="https://arxiv.org/abs/2411.14522" target="_blank" rel="noopener" class="pub-btn">arXiv Paper</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">← Back to Projects</a>
</div>

</div>
