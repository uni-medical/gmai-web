---
layout:    page
title:     "STU-Net"
permalink: /projects/stu-net/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← Projects</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">Medical Image Segmentation</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  STU-Net: Scalable and Transferable Medical Image Segmentation Models
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  A family of scalable U-Net models ranging from 14M to 1.4B parameters, pre-trained on TotalSegmentator for universal medical image segmentation
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">Led by Shanghai AI Laboratory</strong> in collaboration with Shanghai Jiao Tong University.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:1.25rem;">
  <a href="https://github.com/uni-medical/STU-Net" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="https://arxiv.org/abs/2304.06716" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv Paper</a>
</div>

<!-- Awards strip -->
<div style="font-size:.82rem;color:#92400e;padding:.75rem 1rem;border-left:3px solid #f59e0b;background:#fffbeb;margin-bottom:1.5rem;line-height:1.9;">
  🏆 MICCAI 2023 ATLAS Challenge — Champion<br>
  🏆 MICCAI 2023 SPPIN Challenge — Champion<br>
  🥈 MICCAI 2023 AutoPET II Challenge — Runner-up (Highest DSC)<br>
  🥈 MICCAI 2023 BraTS2023 — Runner-up (+ two 3rd-place finishes)<br>
  🥉 FLARE 2023 — 3rd Place
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/stu-net/stu_net2.png' | relative_url }}"
       alt="STU-Net architecture overview"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Figure 1. STU-Net architecture overview. (a) Encoder-decoder structure with residual blocks. (b) Residual block design. (c) Downsampling block with dual-branch shortcut. (d) Stem module for input channel conversion. (e) Segmentation head. (f) Nearest-interpolation upsampling block for transferable weights.
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  Large-scale pre-trained models have transformed natural language processing and computer vision — yet medical image segmentation has remained dominated by small-scale models with only tens of millions of parameters. Scaling these models to higher orders of magnitude, and establishing whether larger models actually transfer better across clinical tasks, was an open question before STU-Net.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  We designed a series of Scalable and Transferable U-Net (STU-Net) models with parameter counts ranging from 14M (STU-Net-S) to 1.4B (STU-Net-H). STU-Net-H is the largest medical image segmentation model to date. All variants are built on the nnU-Net framework with key architectural refinements: residual connections for deep scalability, and weight-free interpolation-based upsampling to eliminate the weight-mismatch problem during transfer learning.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  Pre-trained on TotalSegmentator — 1,204 CT volumes covering 104 anatomical structures — STU-Net demonstrates that scaling consistently improves segmentation accuracy. On the TotalSegmentator benchmark, STU-Net-H achieves 90.06% mean DSC, outperforming all CNN and Transformer competitors. Its transferability extends to 14 downstream datasets for direct inference and 3 datasets for fine-tuning, covering diverse modalities (CT, MRI, PET) and segmentation targets.
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 2rem;">🌟 Core Highlights</h2>

<!-- Highlight 01 — figure LEFT, text RIGHT -->
<div style="display:flex;gap:2rem;align-items:flex-start;margin-bottom:3rem;flex-wrap:wrap;">
  <figure style="flex:1 1 320px;min-width:0;margin:0;border:1px solid #e2e8f0;overflow:hidden;">
    <img src="{{ '/assets/images/projects/stu-net/stu_net1.png' | relative_url }}"
         alt="Segmentation performance vs FLOPs on TotalSegmentator"
         style="width:100%;display:block;" loading="eager" />
    <figcaption style="padding:.6rem .85rem;font-size:.75rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;line-height:1.6;">
      Figure 2. Segmentation performance vs. computational cost (FLOPs) on TotalSegmentator. Bubble area is proportional to FLOPs. STU-Net consistently outperforms nnU-Net, nnFormer, UNETR, and SwinUNETR at every scale.
    </figcaption>
  </figure>
  <div style="flex:1 1 280px;min-width:0;">
    <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
      01 — Scalability: Four Model Sizes from 14M to 1.4B Parameters
    </h3>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:.75rem;">
      STU-Net comes in four sizes — S (14.6M), B (58.3M), L (440M), and H (1.46B parameters). The scaling strategy jointly increases network depth and width, which outperforms scaling either dimension alone. STU-Net-B already surpasses nnU-Net by 0.36% and SwinUNETR-B by 4.48% in mean DSC on TotalSegmentator. STU-Net-H achieves 90.06% mean DSC — the highest ever reported on this benchmark.
    </p>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin:0;">
      The architectural refinements make scaling possible: residual connections in each block prevent gradient diffusion in very deep networks, while the fixed 6-stage, isotropic-kernel configuration ensures that pre-trained weights are reusable across tasks without shape mismatch.
    </p>
  </div>
</div>

<!-- Highlight 02 — figure RIGHT, text LEFT -->
<div style="display:flex;gap:2rem;align-items:flex-start;margin-bottom:3rem;flex-wrap:wrap;">
  <div style="flex:1 1 280px;min-width:0;order:1;">
    <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
      02 — Transferability: Strong Zero-Shot and Fine-tuned Performance Across 17 Datasets
    </h3>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:.75rem;">
      Pre-trained on TotalSegmentator, STU-Net can directly infer on 14 downstream CT datasets containing a subset of the 104 pre-training classes — no additional training required. Across these 14 datasets (2,494 cases total), STU-Net-H achieves 84.02% mean DSC vs. nnU-Net's 76.37%, a gain of 7.65%.
    </p>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin:0;">
      For fine-tuning on three challenging downstream datasets — FLARE22, AMOS22 (CT + MR), and AutoPET22 (CT + PET) — STU-Net-H-ft reaches 80.69% mean DSC vs. nnU-Net's 77.06%. Remarkably, fine-tuning on non-CT modalities (MRI, PET) also benefits from CT pre-training, suggesting the model captures fundamental anatomical structures that generalise beyond modality-specific features.
    </p>
  </div>
  <figure style="flex:1 1 320px;min-width:0;margin:0;border:1px solid #e2e8f0;overflow:hidden;order:2;">
    <img src="{{ '/assets/images/projects/stu-net/stu_net7.png' | relative_url }}"
         alt="Qualitative segmentation results across FLARE22, AMOS-CT, AMOS-MR, AutoPET"
         style="width:100%;display:block;" loading="lazy" />
    <figcaption style="padding:.6rem .85rem;font-size:.75rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;line-height:1.6;">
      Figure 3. Qualitative segmentation results on FLARE22 (Row 1), AMOS-CT (Row 2), AMOS-MR (Row 3), AutoPET-CT (Row 4), and AutoPET-PET (Row 5). Larger STU-Net models produce cleaner boundaries and fewer missed structures.
    </figcaption>
  </figure>
</div>

<!-- Highlight 03 — figure LEFT, text RIGHT -->
<div style="display:flex;gap:2rem;align-items:flex-start;margin-bottom:3rem;flex-wrap:wrap;">
  <figure style="flex:1 1 320px;min-width:0;margin:0;border:1px solid #e2e8f0;overflow:hidden;">
    <img src="{{ '/assets/images/projects/stu-net/stu_net3.png' | relative_url }}"
         alt="TotalSegmentator validation results table across 5 anatomical sub-groups"
         style="width:100%;display:block;" loading="lazy" />
    <figcaption style="padding:.6rem .85rem;font-size:.75rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;line-height:1.6;">
      Table 1. Segmentation results on TotalSegmentator validation set across 5 anatomical sub-groups and all 104 classes. STU-Net-H achieves the best results in every category.
    </figcaption>
  </figure>
  <div style="flex:1 1 280px;min-width:0;">
    <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
      03 — State-of-the-Art Performance on TotalSegmentator
    </h3>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:.75rem;">
      On the TotalSegmentator validation set — the largest publicly available CT segmentation benchmark with 104 structure annotations across organs, vertebrae, cardiac structures, muscles, and ribs — STU-Net-H achieves 90.06% mean DSC. This surpasses the previous best CNN model (nnU-Net: 86.76%) by +3.3% and the best Transformer model (SwinUNETR-B: 82.64%) by +7.4%.
    </p>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin:0;">
      The improvement is consistent across all five anatomical sub-groups, with the most notable gains in vertebrae (nnU-Net: 86.97% → STU-Net-H: 90.43%) and ribs (nnU-Net: 86.11% → STU-Net-H: 90.29%). This demonstrates that scaling genuinely improves comprehensiveness, not just overall average performance.
    </p>
  </div>
</div>

<!-- Highlight 04 — figure RIGHT, text LEFT -->
<div style="display:flex;gap:2rem;align-items:flex-start;margin-bottom:3rem;flex-wrap:wrap;">
  <div style="flex:1 1 280px;min-width:0;order:1;">
    <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
      04 — Universal Models Surpass Specialist Models at Scale
    </h3>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:.75rem;">
      A long-standing assumption in medical image segmentation is that specialist models — trained on a single category group — outperform universal models handling all classes simultaneously. STU-Net challenges this assumption.
    </p>
    <p style="font-size:.9rem;color:#334155;line-height:1.8;margin:0;">
      We trained five specialist models (organs, vertebrae, cardiac, muscles, ribs) and compared them against a single universal STU-Net trained on all 104 classes. At the STU-Net-H scale (1.4B parameters), the universal model achieves 90.06% overall mean DSC, surpassing the best specialist ensemble (89.07%). This suggests that at sufficient scale, a single unified model can simultaneously master all segmentation targets — a key step toward a true medical segmentation foundation model.
    </p>
  </div>
  <figure style="flex:1 1 320px;min-width:0;margin:0;border:1px solid #e2e8f0;overflow:hidden;order:2;">
    <img src="{{ '/assets/images/projects/stu-net/stu_net8.png' | relative_url }}"
         alt="Universal STU-Net vs five category-specific expert models"
         style="width:100%;display:block;" loading="lazy" />
    <figcaption style="padding:.6rem .85rem;font-size:.75rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;line-height:1.6;">
      Figure 4. Universal STU-Net vs. five category-specific expert models. At STU-Net-H scale, the universal model surpasses all expert models with 90.06% overall mean DSC.
    </figcaption>
  </figure>
</div>

<!-- Highlight 05 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    05 — Model Variants: Jointly Scaling Depth and Width
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    The four STU-Net variants are defined by systematic joint scaling of encoder depth and channel width: S (14.6M params, 12.8B FLOPs), B (58.3M, 60.9B), L (440M, 416B), and H (1.46B, 1,623B). Empirical ablations show that depth-only or width-only scaling yields diminishing returns compared to balanced joint scaling. Despite the 100× parameter gap between S and H, all variants share an identical 6-stage encoder-decoder topology and isotropic kernel configuration — this design constraint enables true weight transferability without shape-mismatch adapters.
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/stu-net/stu_net4.png' | relative_url }}"
       alt="STU-Net model variants: S/B/L/H parameters, FLOPs, and DSC comparison"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    STU-Net model variants (S / B / L / H) with parameter counts, FLOPs, and mean DSC on TotalSegmentator. Jointly scaling depth and width outperforms scaling either dimension alone.
  </figcaption>
</figure>

<!-- Highlight 06 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    06 — Cross-Modality Transfer: Fine-Tuning on Downstream Datasets
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    On three challenging fine-tuning benchmarks — FLARE22 (13 abdominal organs), AMOS22 (CT + MRI, 15 organs), and AutoPET22 (CT + PET lesion segmentation) — STU-Net-H fine-tuned from pre-trained weights consistently outperforms nnU-Net fine-tuned from random initialization. The cross-modality transfer result is particularly notable: STU-Net-H pre-trained on CT only, when fine-tuned on AMOS-MRI and AutoPET-PET, achieves higher DSC than nnU-Net trained from scratch on those modalities — suggesting the pre-trained weights encode modality-agnostic anatomical priors.
  </p>
</div>
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/stu-net/stu_net5.png' | relative_url }}"
       alt="Fine-tuning results on FLARE22, AMOS22, and AutoPET22"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Fine-tuning results on FLARE22, AMOS22 (CT + MRI), and AutoPET22 (CT + PET). STU-Net-H-ft surpasses nnU-Net on all three datasets, including non-CT modalities, demonstrating cross-modality transferability.
  </figcaption>
</figure>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    STU-Net establishes that the scaling laws observed in natural language and computer vision do apply to 3D medical image segmentation. With 1.4B parameters and strong transferability across 17 datasets spanning CT, MRI, and PET modalities, STU-Net-H represents the current frontier of universal medical segmentation. It is a foundation model building block for Medical Artificial General Intelligence (MedAGI).
  </p>
</div>

<!-- Key Contributions -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>Designed STU-Net-S/B/L/H — scaling from 14M to 1.4B parameters; STU-Net-H is the largest medical image segmentation model to date.</li>
  <li>Demonstrated clear scaling laws: larger models trained on TotalSegmentator consistently achieve higher DSC on both the pre-training benchmark and 14 downstream transfer datasets.</li>
  <li>Refined nnU-Net architecture with residual blocks and weight-free interpolation upsampling for true cross-task weight transferability.</li>
  <li>Won championship at MICCAI 2023 ATLAS and SPPIN challenges; runner-up at AutoPET II; multiple top-3 finishes at BraTS2023 and FLARE2023.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:.5rem;">
  Ziyan Huang, Haoyu Wang, Zhongying Deng, Jin Ye, Yanzhou Su, Hui Sun, <strong>Junjun He</strong>, Yun Gu, Lixu Gu, Shaoting Zhang, Yu Qiao
</p>
<p style="font-size:.75rem;color:#64748b;margin-bottom:3rem;">arXiv 2023</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/uni-medical/STU-Net" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>
  <a href="https://arxiv.org/abs/2304.06716" target="_blank" rel="noopener" class="pub-btn">arXiv Paper</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">← Back to Projects</a>
</div>

</div>
