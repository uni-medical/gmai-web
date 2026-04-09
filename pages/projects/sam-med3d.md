---
layout:    page
title:     "SAM-Med3D"
permalink: /projects/sam-med3d/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← Projects</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">Medical Image Analysis</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  SAM-Med3D
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  Towards General-purpose Segmentation Models for Volumetric Medical Images
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">Led by Shanghai Artificial Intelligence Laboratory (Shanghai AI Lab) and Chinese Academy of Sciences</strong>, in collaboration with
  Shanghai Jiao Tong University and international partners.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:.75rem;">
  <a href="https://github.com/uni-medical/SAM-Med3D" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://arxiv.org/abs/2310.15161" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv Paper</a>
  <a href="https://huggingface.co/datasets/blueyo0/SA-Med3D-140K" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 Dataset (SA-Med3D-140K)</a>
</div>

<!-- Venue badge -->
<div style="font-size:.75rem;font-weight:600;color:#059669;margin-bottom:2.5rem;">ECCV BIC 2024 Oral</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/sam-med3d/sam_med3d1.png' | relative_url }}"
       alt="SAM-Med3D qualitative comparison with 2D methods"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Qualitative comparison: SAM-Med3D achieves superior 3D segmentation with just 1 point prompt in volumetric space, while 2D methods (SAM, SAM-Med2D) require multiple points per slice and produce inconsistent inter-slice results.
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Medical image segmentation is critical for precise identification of anatomical structures and pathological regions. Current methods are mostly task-specific, requiring specialised models for specific organs, lesions, or imaging modalities. Foundation models like SAM revolutionised 2D segmentation, but applying them to 3D medical volumes poses major challenges — existing approaches either process volumes slice-by-slice (losing spatial context) or use adapter-based methods that cannot fully capture 3D information.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  SAM-Med3D addresses these limitations with a fully learnable 3D architecture trained from scratch on SA-Med3D-140K — the largest volumetric medical image segmentation dataset to date, containing <strong>22,000 3D images</strong> and <strong>143,000 corresponding 3D masks</strong> across 28 imaging modalities, 245+ anatomical target types, and 6 major anatomical categories. The result is a general-purpose model that segments diverse structures and lesions across modalities with just a few 3D prompt points, achieving a <strong>60.12% Dice score improvement</strong> over SAM.
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">🌟 Core Highlights</h2>

<!-- Highlight 1 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 — Fully Native 3D Architecture
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Unlike adapter-based approaches that bolt 3D capability onto frozen 2D backbones, SAM-Med3D is built from the ground up with three fully 3D components: a 3D image encoder, a 3D prompt encoder, and a 3D mask decoder. Initial experiments compared three strategies — 3D adapters on frozen SAM, 2D-to-3D weight transfer with fine-tuning, and training from scratch — and the fully 3D approach clearly won on both seen and unseen targets, avoiding the inherent 2D bias of adapter methods.
  </p>
</div>

<!-- Architecture figure -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/sam-med3d/sam_med3d4.png' | relative_url }}"
       alt="SAM-Med3D fully 3D architecture diagram"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    The fully 3D architecture of SAM-Med3D: a dedicated 3D image encoder with 3D multi-head self-attention, a 3D prompt encoder processing point coordinates (x, y, z), and a 3D mask decoder generating volumetric segmentation predictions.
  </figcaption>
</figure>

<!-- Model comparison figure -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/sam-med3d/sam_med3d2.png' | relative_url }}"
       alt="Comparison of SAM-based models for volumetric medical images"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Comparison of SAM-based models for volumetric medical images. SAM-Med3D is the only model with fully learnable 3D components across image encoder, prompt encoder, and mask decoder — trained on the largest dataset (143K masks, 245 categories).
  </figcaption>
</figure>

<!-- Highlight 2 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 — SA-Med3D-140K: Unprecedented Training Scale
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    The foundation of SAM-Med3D is SA-Med3D-140K, an unprecedented dataset aggregating 70 public and 24 licensed private datasets, spanning CT, ultrasound, and 26 MR sequences across 6 major anatomical categories. A rigorous four-step cleaning pipeline ensures quality: target shape cleaning (removing masks &lt;1cm³), volume size cleaning (excluding &gt;99% background), denoising (eliminating small connected domains), and disambiguation (separating symmetric structures like "kidney" into "left kidney" and "right kidney"). Training uses 131K masks; validation reserves 12 datasets from completely unseen sources plus all ultrasound data to test cross-modal generalisation.
  </p>
</div>

<!-- Dataset overview figure -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/sam-med3d/sam_med3d3.png' | relative_url }}"
       alt="Overview of SA-Med3D-140K dataset"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Overview of SA-Med3D-140K: (a) Word cloud visualisation of 245 anatomical target categories. (b) Dataset scale comparison — SA-Med3D-140K contains 22K 3D images with 143K masks, dwarfing existing datasets like AMOS, BraTS21, and TotalSegmentator.
  </figcaption>
</figure>

<!-- Highlight 3 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 — State-of-the-Art Performance Across Modalities
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    SAM-Med3D achieves 60.12% overall Dice improvement over SAM, with inference time just 1–26% of SAM's depending on target size. Performance is consistent across CT, MR, and ultrasound modalities — notably, despite never being trained on ultrasound data, SAM-Med3D still shows competitive performance on US images. Across 44 major organs and 5 lesion types, SAM-Med3D outperforms SAM-Med2D by up to 68.2% Dice improvement. A two-stage training paradigm (800-epoch pre-training on 131K masks, then fine-tuning on 75K high-quality filtered masks) builds robust general segmentation capability.
  </p>
</div>

<!-- Performance figure -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/sam-med3d/sam_med3d5.png' | relative_url }}"
       alt="SAM-Med3D performance analysis across modalities"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Performance analysis: (a–c) SAM-Med3D consistently outperforms SAM and SAM-Med2D across CT, MR, and ultrasound modalities with varying prompt points. (d) Detailed Dice score improvements over SAM-Med2D across 44 organs and 5 lesion types, with gains up to +68.2%.
  </figcaption>
</figure>

<!-- Highlight 4 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    04 — Transferability and Clinical Impact
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Beyond direct segmentation, SAM-Med3D serves as a powerful pre-trained backbone. When its image encoder is used as a feature extractor for UNETR, downstream semantic segmentation Dice scores improve by up to 5.63% — including on previously unseen challenge datasets. The model requires dramatically fewer prompts than 2D methods (1 point per volume vs. multiple points per slice), with significantly better inter-slice consistency, producing clinically meaningful 3D masks. SAM-Med3D-turbo, a refined version fine-tuned on 44 datasets, further pushes practical performance.
  </p>
</div>

<!-- Qualitative visualisation figure -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/sam-med3d/sam_med3d6.png' | relative_url }}"
       alt="SAM-Med3D qualitative visualisation across anatomical structures"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Qualitative visualisation across diverse anatomical structures (liver, vertebrae): SAM-Med3D produces superior segmentation quality and inter-slice consistency compared to SAM and SAM-Med2D, shown in both axial, coronal, and sagittal views.
  </figcaption>
</figure>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    SAM-Med3D demonstrates that a single, fully 3D model can effectively segment diverse anatomical structures and lesions across multiple imaging modalities with minimal user interaction. By training from scratch on the largest volumetric medical dataset (SA-Med3D-140K), the model achieves a paradigm shift from task-specific segmentation to general-purpose medical AI — offering both a powerful standalone tool and a transferable foundation for future research. The open-source release of dataset, code, and models accelerates collective progress toward more universal and accessible medical AI.
  </p>
</div>

<!-- Key Contributions Summary -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>Introduced a <strong>fully native 3D architecture</strong> for promptable medical image segmentation, outperforming all adapter-based approaches that bolt 3D onto frozen 2D backbones.</li>
  <li>Created <strong>SA-Med3D-140K</strong> — 22K 3D images with 143K masks across 28 modalities and 245+ categories — the largest volumetric medical segmentation dataset to date.</li>
  <li>Achieved <strong>60.12% Dice improvement</strong> over SAM with inference 1–26× faster, demonstrating strong generalisation across CT, MR, ultrasound, and unseen modalities.</li>
  <li>Open-sourced dataset, code, and model weights (including SAM-Med3D-turbo fine-tuned on 44 datasets) as a reusable foundation for future 3D medical AI research.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Haoyu Wang, Sizheng Guo, Jin Ye, Zhongying Deng, Junlong Cheng, Tianbin Li, Jianpin Chen, Yanzhou Su, Ziyan Huang, Yiqing Shen, Bin Fu, Shaoting Zhang, <strong>Junjun He</strong>, Yu Qiao
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/uni-medical/SAM-Med3D" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>
  <a href="https://arxiv.org/abs/2310.15161" target="_blank" rel="noopener" class="pub-btn">arXiv Paper</a>
  <a href="https://huggingface.co/datasets/blueyo0/SA-Med3D-140K" target="_blank" rel="noopener" class="pub-btn">🤗 Dataset</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">← Back to Projects</a>
</div>

</div>
