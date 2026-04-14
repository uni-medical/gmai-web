---
layout:    page
title:     "Project Imaging-X"
permalink: /projects/imaging-x/
lang:      "en"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<div style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← Projects</a>
</nav>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">Medical Data Infrastructure</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  Project Imaging-X
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  A Survey of 1,000+ Open-Access Medical Imaging Datasets for Foundation Model Development
</p>

<!-- Institution strip -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">Led by Shanghai Artificial Intelligence Laboratory</strong> in collaboration with
  Cambridge · Stanford · Tsinghua · Fudan · SJTU · HKU · Johns Hopkins · Toronto · UCL · Zhejiang · Monash · CUHK · HKUST and 40+ top research institutions worldwide.
</div>

<!-- Resource links -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/uni-medical/Project-Imaging-X" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="http://arxiv.org/abs/2603.27460" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv Paper</a>
  <a href="https://huggingface.co/papers/2603.27460" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 HuggingFace Paper</a>
  <a href="https://huggingface.co/datasets/General-Medical-AI/Project-Imaging-X" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 Dataset</a>
</div>

<!-- Hero image -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/imaging-x/hero.png' | relative_url }}"
       alt="Project Imaging-X: from data silos to foundation models"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Conceptual overview: transforming fragmented medical imaging data silos into integrated resources that power next-generation medical foundation models.
  </figcaption>
</figure>

<!-- Introduction -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  The scarcity of large-scale, diverse, and high-quality training datasets impedes the development of medical imaging foundation models, limiting models to specific tasks, modalities, or anatomical regions. Existing medical imaging datasets are fragmented across narrowly scoped tasks, unevenly distributed across organs and modalities, and lack systematic organisation for broad integration. Prior database surveys often lack detailed statistics, miss recently released large-scale datasets, or provide no systematic framework tailored for foundation model development.
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  Project Imaging-X addresses the primary obstacle to building such models for healthcare: the scarcity and fragmentation of large-scale medical imaging data. Unlike natural images that can be scraped from the internet by the billions, medical images are difficult to collect due to privacy regulations, the need for specialised equipment, and the high cost of expert clinical annotation.
</p>

<!-- Core Highlights -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">🌟 Core Highlights</h2>

<!-- Highlight 1 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 — Unprecedented Scale &amp; Systematicity
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Project Imaging-X is the most comprehensive survey of open-source medical imaging datasets to date, covering <strong>1,000+ datasets</strong> across 2D, 3D, and video dimensions, spanning CT, MRI, X-ray, pathology, ultrasound, and more. The survey systematically catalogues task types (classification, segmentation, detection, generation, etc.) and anatomical coverage — providing the community with an accessible, authoritative reference.
  </p>
</div>

<!-- taxonomy image after Highlight 1 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/imaging-x/taxonomy.png' | relative_url }}"
       alt="Taxonomy of medical imaging datasets: Task, Organ, Modality, Dimension"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Taxonomy of medical imaging datasets across data dimensions (2D / 3D / Video), imaging modalities, clinical tasks, and anatomical organs — providing the first unified classification framework for the field.
  </figcaption>
</figure>

<!-- Highlight 2 -->
<div style="margin-bottom:2rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 — Revealing Patterns &amp; Trends in Medical Imaging Data
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Through a unified classification framework, the survey provides the first comprehensive analysis of data distribution patterns and distils key findings:
  </p>
  <ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:1rem;">
    <li><strong>The core contradiction is not volume but decoupling.</strong> Image counts keep rising, but patient-level, 3D-level, longitudinal, and cross-modal coverage has not grown proportionally.</li>
    <li><strong>Distribution reflects acquisition ease, not clinical need.</strong> 2D and pathology images dominate partly because they are easier to collect, split, store, and count — "more images" does not equal "more complete clinical information".</li>
    <li><strong>Task distribution is constrained by annotation cost.</strong> Classification and segmentation dominate not because other tasks are less important, but because registration, tracking, VQA, and multimodal reasoning require complex annotations and paired data.</li>
    <li><strong>Recent data expansion is selective.</strong> Post-2023 growth concentrates on hot-spot organs (brain, liver, lung, chest) and mainstream modalities, leaving many anatomical regions and rare modalities persistently under-covered.</li>
    <li><strong>The real bottleneck is distribution reconstruction, not more data.</strong> Faced with a long-tail, fragmented, imbalanced data ecosystem, naive concatenation fails — what is needed is unified counting, balanced sampling, and principled task design.</li>
  </ul>
</div>

<!-- overview image after Highlight 2 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/imaging-x/overview.png' | relative_url }}"
       alt="Medical imaging datasets: anatomical regions and distribution overview"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Dataset distribution across anatomical regions, imaging modalities, and clinical tasks — revealing where coverage is strong and where critical gaps remain.
  </figcaption>
</figure>

<!-- Highlight 3 — MDFP -->
<div style="margin-bottom:2rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 — Metadata-Driven Fusion Paradigm (MDFP)
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    To address fragmentation, the project introduces the <strong>Metadata-Driven Fusion Paradigm (MDFP)</strong> — a structured methodology for integrating heterogeneous datasets into a coherent corpus through four stages:
  </p>
  <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:1rem;margin-bottom:1.5rem;">
    <div style="padding:1.1rem;background:#eff6ff;border-radius:6px;border:1px solid #bfdbfe;">
      <div style="font-size:.68rem;font-weight:700;letter-spacing:.08em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.4rem;">Stage 1</div>
      <div style="font-size:.82rem;font-weight:600;color:#1e293b;margin-bottom:.3rem;">Metadata Harmonisation</div>
      <p style="font-size:.8rem;color:#475569;line-height:1.6;margin:0;">Standardise descriptors to authoritative vocabularies (UMLS, MeSH) so "chest", "thorax", and "lung" are recognised as related entities.</p>
    </div>
    <div style="padding:1.1rem;background:#f0fdf4;border-radius:6px;border:1px solid #bbf7d0;">
      <div style="font-size:.68rem;font-weight:700;letter-spacing:.08em;text-transform:uppercase;color:#059669;margin-bottom:.4rem;">Stage 2</div>
      <div style="font-size:.82rem;font-weight:600;color:#1e293b;margin-bottom:.3rem;">Semantic Alignment</div>
      <p style="font-size:.8rem;color:#475569;line-height:1.6;margin:0;">Bridge raw ML tasks and clinical meaning by harmonising heterogeneous annotation conventions across datasets.</p>
    </div>
    <div style="padding:1.1rem;background:#fff7ed;border-radius:6px;border:1px solid #fed7aa;">
      <div style="font-size:.68rem;font-weight:700;letter-spacing:.08em;text-transform:uppercase;color:#ea580c;margin-bottom:.4rem;">Stage 3</div>
      <div style="font-size:.82rem;font-weight:600;color:#1e293b;margin-bottom:.3rem;">Fusion Blueprint</div>
      <p style="font-size:.8rem;color:#475569;line-height:1.6;margin:0;">Group datasets by shared characteristics, assess volume and storage, and flag incompatibilities in imaging protocols or annotation types.</p>
    </div>
    <div style="padding:1.1rem;background:#fdf4ff;border-radius:6px;border:1px solid #e9d5ff;">
      <div style="font-size:.68rem;font-weight:700;letter-spacing:.08em;text-transform:uppercase;color:#7c3aed;margin-bottom:.4rem;">Stage 4</div>
      <div style="font-size:.82rem;font-weight:600;color:#1e293b;margin-bottom:.3rem;">Indexing &amp; Sharing</div>
      <p style="font-size:.8rem;color:#475569;line-height:1.6;margin:0;">Publish a structured, publicly accessible index enabling fine-grained retrieval — e.g. "all cardiac ultrasound videos with segmentation masks".</p>
    </div>
  </div>
</div>

<!-- samples image after MDFP -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/imaging-x/samples.png' | relative_url }}"
       alt="Representative samples: classification, segmentation, detection"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Representative samples across the three major medical image analysis tasks: (a) classification, (b) segmentation, (c) detection — illustrating the breadth of modalities and clinical applications covered.
  </figcaption>
</figure>

<!-- Highlight 4 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    04 — Interactive Discovery Portal &amp; Community Tools
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Project Imaging-X releases an interactive <strong>Medical Dataset Browser</strong> — a tool for searching and filtering 1,000+ datasets by modality, anatomy, task, licence, and more. Researchers can instantly find, e.g., all CT datasets with liver and lung annotations under a permissive licence. A companion <strong>Python toolkit</strong> automates dataset integration, providing fusion blueprints for multi-modal, multi-task foundation model training.
  </p>
</div>

<!-- anatomy image after Highlight 4 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/imaging-x/anatomy.png' | relative_url }}"
       alt="Dataset and sample counts by anatomical structure"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    Anatomical coverage statistics: total datasets and image samples for each of 25 body structures — clearly revealing which anatomical regions remain critically under-represented.
  </figcaption>
</figure>

<!-- Gap Analysis -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.25rem;">Gap Analysis &amp; Future Directions</h2>
<p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">The survey identifies critical gaps the community must address to advance medical foundation models:</p>
<div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(250px,1fr));gap:1rem;margin-bottom:2.5rem;">
  <div style="padding:1.1rem;border:1px solid #e2e8f0;border-left:3px solid #ef4444;">
    <div style="font-size:.75rem;font-weight:600;color:#ef4444;margin-bottom:.4rem;">Anatomical Under-representation</div>
    <p style="font-size:.82rem;color:#475569;line-height:1.6;margin:0;">Organs such as the heart, bowel, and musculoskeletal system have critically insufficient data despite their clinical importance.</p>
  </div>
  <div style="padding:1.1rem;border:1px solid #e2e8f0;border-left:3px solid #f59e0b;">
    <div style="font-size:.75rem;font-weight:600;color:#f59e0b;margin-bottom:.4rem;">Task Imbalance</div>
    <p style="font-size:.82rem;color:#475569;line-height:1.6;margin:0;">Registration, tracking, and multimodal reasoning datasets — critical for clinical intervention — remain far rarer than classification and segmentation data.</p>
  </div>
  <div style="padding:1.1rem;border:1px solid #e2e8f0;border-left:3px solid #8b5cf6;">
    <div style="font-size:.75rem;font-weight:600;color:#8b5cf6;margin-bottom:.4rem;">Multimodal Linkage</div>
    <p style="font-size:.82rem;color:#475569;line-height:1.6;margin:0;">Datasets pairing imaging with other clinical data — e.g. radiology + pathology, or images + longitudinal EHR — remain very scarce.</p>
  </div>
</div>

<!-- Conclusion -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">Conclusion</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    Project Imaging-X represents a systematic effort to map and organise open-access medical imaging data worldwide. By providing a unified taxonomy and metadata-driven integration framework, this work enables the transition from small, task-specific models to large, general-purpose medical foundation models. The identified data gaps serve as a call to action for the clinical community to prioritise data collection in under-represented areas — ensuring that the next generation of medical AI is both powerful and truly comprehensive across all aspects of human health.
  </p>
</div>

<!-- Key Contributions Summary -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">Key Contributions</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>Catalogued <strong>1,000+ open-access medical imaging datasets</strong> with standardised metadata at subject, acquisition, and media level.</li>
  <li>Demonstrated MDFP effectiveness: curated a target-aligned collection of <strong>57 datasets (2.1M+ validated images)</strong> for multi-modal, multi-task 2D medical foundation model training.</li>
  <li>Released an <strong>interactive web portal</strong> ("Medical Dataset Browser") and Python toolkit for efficient dataset discovery, analysis, and integration.</li>
  <li>Provided the first comprehensive <strong>gap analysis</strong> of open-access medical imaging data, offering clear priority directions for future dataset construction and model training.</li>
</ul>

<!-- Authors -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">Authors</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Zhongying Deng, Cheng Tang, Ziyan Huang, Jiashi Lin, Ying Chen, Junzhi Ning, Chenglong Ma, Jiyao Liu, Wei Li, Yinghao Zhu, Shujian Gao, Yanyan Huang, Sibo Ju, Yanzhou Su, Pengcheng Chen, Wenhao Tang, <strong>Tianbin Li</strong>, Haoyu Wang, Yuanfeng Ji, Hui Sun, Shaobo Min, Liang Peng, Feilong Tang, Haochen Xue, Rulin Zhou, Chaoyang Zhang, Wenjie Li, Shaohao Rui, Weijie Ma, Xingyue Zhao, Yibin Wang, Kun Yuan, Zhaohui Lu, Shujun Wang, Jinjie Wei, Lihao Liu, Dingkang Yang, Lin Wang, Yulong Li, Haolin Yang, Yiqing Shen, Lequan Yu, Xiaowei Hu, Yun Gu, Yicheng Wu, Benyou Wang, Minghui Zhang, Angelica I. Aviles-Rivero, Qi Gao, Hongming Shan, Xiaoyu Ren, Fang Yan, Hongyu Zhou, Haodong Duan, Maosong Cao, Shanshan Wang, Bin Fu, Xiaomeng Li, Zhi Hou, Chunfeng Song, Lei Bai, Yuan Cheng, Yuandong Pu, Xiang Li, Wenhai Wang, Hao Chen, Jiaxin Zhuang, Songyang Zhang, Huiguang He, Mengzhang Li, Bohan Zhuang, Zhian Bai, Rongshan Yu, Liansheng Wang, Yukun Zhou, Xiaosong Wang, Xin Guo, Guanbin Li, Xiangru Lin, Dakai Jin, Mianxin Liu, Wenlong Zhang, Qi Qin, Conghui He, Yuqiang Li, Ye Luo, Nanqing Dong, Jie Xu, Wenqi Shao, Bo Zhang, Qiujuan Yan, Yihao Liu, Jun Ma, Zhi Lu, Yuewen Cao, Zongwei Zhou, Jianming Liang, Shixiang Tang, Qi Duan, Dongzhan Zhou, et al.
</p>

<!-- Footer links -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/uni-medical/Project-Imaging-X" target="_blank" rel="noopener" class="pub-btn">GitHub Repository</a>
  <a href="http://arxiv.org/abs/2603.27460" target="_blank" rel="noopener" class="pub-btn">arXiv Paper</a>
  <a href="https://huggingface.co/datasets/General-Medical-AI/Project-Imaging-X" target="_blank" rel="noopener" class="pub-btn">🤗 Dataset</a>
  <a href="{{ '/projects/' | relative_url }}" class="pub-btn">← Back to Projects</a>
</div>

</div>
