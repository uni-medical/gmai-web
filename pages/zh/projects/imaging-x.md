---
layout:    page
title:     "Imaging-X 项目"
permalink: /zh/projects/imaging-x/
lang:      "zh"
---

<div class="section-inner" style="max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem;">

<nav style="margin-bottom:2rem;font-size:.82rem;color:#64748b;">
  <a href="{{ '/zh/projects/' | relative_url }}" style="color:#64748b;text-decoration:none;">← 项目</a>
</div>

<div style="font-size:.7rem;font-weight:600;letter-spacing:.12em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.75rem;">医学数据基础设施</div>
<h1 style="font-family:'IBM Plex Serif',serif;font-size:2.2rem;font-weight:300;color:#0f172a;line-height:1.25;margin-bottom:.75rem;">
  Imaging-X 项目
</h1>
<p style="font-size:1.05rem;color:#475569;font-family:'IBM Plex Serif',serif;font-style:italic;margin-bottom:1.5rem;line-height:1.6;">
  用于基础模型开发的 1000+ 开放获取医学影像数据集综述
</p>

<!-- 机构条 -->
<div style="font-size:.78rem;color:#64748b;padding:.75rem 1rem;background:#f8fafc;border:1px solid #e2e8f0;border-left:3px solid #1d4ed8;margin-bottom:1.5rem;line-height:1.7;">
  <strong style="color:#1e293b;">由上海人工智能实验室牵头</strong>，联合剑桥大学、斯坦福大学、清华大学、复旦大学、上海交通大学、香港大学、约翰斯·霍普金斯大学、多伦多大学、伦敦大学学院、浙江大学、蒙纳士大学、香港中文大学、香港科技大学等海内外 <strong>40 余家顶尖研究机构</strong>共同完成。
</div>

<!-- 资源链接 -->
<div style="display:flex;gap:.5rem;flex-wrap:wrap;margin-bottom:2.5rem;">
  <a href="https://github.com/uni-medical/Project-Imaging-X" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">GitHub</a>
  <a href="http://arxiv.org/abs/2603.27460" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">arXiv 论文</a>
  <a href="https://huggingface.co/papers/2603.27460" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 HuggingFace 论文页</a>
  <a href="https://huggingface.co/datasets/General-Medical-AI/Project-Imaging-X" target="_blank" rel="noopener"
     style="display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .85rem;font-size:.75rem;font-weight:500;border:1px solid #cbd5e1;border-radius:4px;color:#1e293b;text-decoration:none;background:#f8fafc;">🤗 数据集</a>
</div>

<!-- 主图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/imaging-x/hero.png' | relative_url }}"
       alt="Imaging-X 项目：从数据孤岛到基础模型"
       style="width:100%;display:block;" loading="eager" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    概念概览：将碎片化医学影像数据孤岛转化为驱动下一代医学基础模型的统一资源。
  </figcaption>
</figure>

<!-- 引言 -->
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:1.5rem;">
  大规模、多样化和高质量训练数据集的稀缺阻碍了医学影像基础模型的发展，导致模型仅限于特定任务、模态或解剖区域。现有医学影像数据集碎片化分布于狭窄范围的任务中，器官和模态分布不均，并缺乏系统的组织以实现广泛整合。
</p>
<p style="font-size:.92rem;color:#334155;line-height:1.85;margin-bottom:2.5rem;">
  Imaging-X 项目直面这一核心挑战：医学影像数据的稀缺性与碎片化。与可以从互联网大量抓取的自然图像不同，医学图像由于隐私法规、专业设备需求和高昂的专家标注成本，采集极为困难。本项目对 1000+ 开放获取医学影像数据集进行了全面调研，并引入系统框架将其整合为统一资源，支撑基础模型训练。
</p>

<!-- 核心亮点 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.5rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.5rem;">🌟 核心亮点</h2>

<!-- 亮点一 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    01 — 前所未有的规模与系统性
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    Imaging-X 项目是迄今为止最全面的医学影像开源数据集调查，覆盖 <strong>1000+ 数据集</strong>，涵盖 2D、3D、视频等不同维度，涉及 CT、MRI、X 光、病理切片、超声等多模态影像，系统梳理任务类型（分类、分割、检测、生成等）与解剖部位——为社区提供权威、可访问的综合参考。
  </p>
</div>

<!-- 分类法图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/imaging-x/taxonomy.png' | relative_url }}"
       alt="医学影像数据集分类体系：任务、器官、模态、维度"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    医学影像数据集的多维分类体系：涵盖数据维度（2D / 3D / 视频）、影像模态、临床任务与解剖器官——首次提供全领域的统一分类框架。
  </figcaption>
</figure>

<!-- 亮点二 -->
<div style="margin-bottom:2rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    02 — 揭示现有医学影像数据的规律与趋势
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    通过统一的分类体系，本项目首次全面分析了数据分布格局，并提炼出一系列关键发现：
  </p>
  <ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:1rem;">
    <li><strong>主矛盾不是总量不足，而是总量增长与临床覆盖增长脱钩。</strong>图像数目不断增加，但患者级、3D 级、时序级、跨模态级覆盖并没有同比例提升。</li>
    <li><strong>数据分布更受获取和统计方式影响，而不完全反映真实临床需求。</strong>2D 图像和病理图像占比高，部分原因是更容易采集和计数，但"图像多"不等于"临床信息更全面"。</li>
    <li><strong>任务分布受到标注成本和数据组织难度的强烈约束。</strong>分类和分割数据占主导，不是因为其他任务不重要，而是因为配准、追踪、问答和多模态推理更依赖复杂标注。</li>
    <li><strong>近年的数据扩张是选择性的。</strong>2023 年后的增长主要集中在大脑、肝脏、肺部、胸部等热点器官和主流模态，弱势方向没有被明显补齐。</li>
    <li><strong>真正的瓶颈已不是简单收集更多数据，而是如何重构更合理的训练分布。</strong>面对长尾、碎片化和失衡的数据生态，需要统一计数方式、平衡采样策略和任务设计。</li>
  </ul>
</div>

<!-- 全景图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/imaging-x/overview.png' | relative_url }}"
       alt="医学影像数据集：解剖区域与分布全景"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    数据集在解剖区域、影像模态和临床任务上的分布——清晰揭示哪些领域覆盖充分、哪些仍存在关键空白。
  </figcaption>
</figure>

<!-- 亮点三 — MDFP -->
<div style="margin-bottom:2rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    03 — 元数据驱动融合范式（MDFP）
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    面对数据碎片化问题，项目创新性地提出<strong>元数据驱动融合范式（MDFP）</strong>——一套将异构数据集整合为连贯语料库的结构化方法论，包含四个阶段：
  </p>
  <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:1rem;margin-bottom:1.5rem;">
    <div style="padding:1.1rem;background:#eff6ff;border-radius:6px;border:1px solid #bfdbfe;">
      <div style="font-size:.68rem;font-weight:700;letter-spacing:.08em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.4rem;">阶段一</div>
      <div style="font-size:.82rem;font-weight:600;color:#1e293b;margin-bottom:.3rem;">元数据协调</div>
      <p style="font-size:.8rem;color:#475569;line-height:1.6;margin:0;">将描述符标准化到权威医学术语（UMLS、MeSH），使"胸部""胸腔""肺部"被识别为相关解剖实体。</p>
    </div>
    <div style="padding:1.1rem;background:#f0fdf4;border-radius:6px;border:1px solid #bbf7d0;">
      <div style="font-size:.68rem;font-weight:700;letter-spacing:.08em;text-transform:uppercase;color:#059669;margin-bottom:.4rem;">阶段二</div>
      <div style="font-size:.82rem;font-weight:600;color:#1e293b;margin-bottom:.3rem;">语义对齐</div>
      <p style="font-size:.8rem;color:#475569;line-height:1.6;margin:0;">弥合原始机器学习任务与临床意义之间的差距，协调异构标注约定，映射到统一模式。</p>
    </div>
    <div style="padding:1.1rem;background:#fff7ed;border-radius:6px;border:1px solid #fed7aa;">
      <div style="font-size:.68rem;font-weight:700;letter-spacing:.08em;text-transform:uppercase;color:#ea580c;margin-bottom:.4rem;">阶段三</div>
      <div style="font-size:.82rem;font-weight:600;color:#1e293b;margin-bottom:.3rem;">融合蓝图</div>
      <p style="font-size:.8rem;color:#475569;line-height:1.6;margin:0;">按共同特征分组数据集，评估数据总量与存储需求，标记成像协议或标注类型中的潜在不兼容性。</p>
    </div>
    <div style="padding:1.1rem;background:#fdf4ff;border-radius:6px;border:1px solid #e9d5ff;">
      <div style="font-size:.68rem;font-weight:700;letter-spacing:.08em;text-transform:uppercase;color:#7c3aed;margin-bottom:.4rem;">阶段四</div>
      <div style="font-size:.82rem;font-weight:600;color:#1e293b;margin-bottom:.3rem;">索引与共享</div>
      <p style="font-size:.8rem;color:#475569;line-height:1.6;margin:0;">发布结构化、可公开访问的索引，支持细粒度检索——如"所有带分割掩膜的心脏超声视频"。</p>
    </div>
  </div>
</div>

<!-- 样本图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/imaging-x/samples.png' | relative_url }}"
       alt="代表性医学影像样本：分类、分割、检测"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    三类医学图像分析任务的代表性样本：(a) 分类，(b) 分割，(c) 检测——展示调研覆盖的模态多样性与临床应用广度。
  </figcaption>
</figure>

<!-- 亮点四 -->
<div style="margin-bottom:2.5rem;">
  <h3 style="font-family:'IBM Plex Serif',serif;font-size:1.15rem;font-weight:500;color:#1d4ed8;margin:0 0 .75rem;">
    04 — 社区共享与交互式数据发现门户
  </h3>
  <p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">
    项目提供交互式<strong>医学数据集浏览器</strong>，支持按模态、解剖部位、任务、许可证等条件对 1000+ 数据集进行自动化检索、统计分析与整合。配套 <strong>Python 工具包</strong>自动化数据集集成，通过融合蓝图支持多模态、多任务基础模型训练，大幅降低构建大规模医疗语料库的工程负担。
  </p>
</div>

<!-- 解剖图 -->
<figure style="margin:0 0 3rem;border:1px solid #e2e8f0;overflow:hidden;">
  <img src="{{ '/assets/images/projects/imaging-x/anatomy.png' | relative_url }}"
       alt="各解剖部位数据集与样本数量统计"
       style="width:100%;display:block;" loading="lazy" />
  <figcaption style="padding:.75rem 1rem;font-size:.78rem;color:#64748b;font-style:italic;background:#f8fafc;border-top:1px solid #e2e8f0;">
    25 个解剖部位的数据集与影像样本数量统计——清晰揭示哪些解剖区域仍严重代表性不足。
  </figcaption>
</figure>

<!-- 差距分析 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;border-bottom:1px solid #e2e8f0;padding-bottom:.75rem;margin:0 0 1.25rem;">差距分析与未来方向</h2>
<p style="font-size:.9rem;color:#334155;line-height:1.8;margin-bottom:1rem;">调研识别出研究社区必须解决的关键差距：</p>
<div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(250px,1fr));gap:1rem;margin-bottom:2.5rem;">
  <div style="padding:1.1rem;border:1px solid #e2e8f0;border-left:3px solid #ef4444;">
    <div style="font-size:.75rem;font-weight:600;color:#ef4444;margin-bottom:.4rem;">解剖代表性不足</div>
    <p style="font-size:.82rem;color:#475569;line-height:1.6;margin:0;">心脏、肠道、肌肉骨骼等临床重要结构的数据严重匮乏，而大脑和肺部等"热点"器官已有充足数据。</p>
  </div>
  <div style="padding:1.1rem;border:1px solid #e2e8f0;border-left:3px solid #f59e0b;">
    <div style="font-size:.75rem;font-weight:600;color:#f59e0b;margin-bottom:.4rem;">任务失衡</div>
    <p style="font-size:.82rem;color:#475569;line-height:1.6;margin:0;">对临床干预至关重要的图像配准、目标追踪和多模态推理数据集，远比分类和分割数据稀缺。</p>
  </div>
  <div style="padding:1.1rem;border:1px solid #e2e8f0;border-left:3px solid #8b5cf6;">
    <div style="font-size:.75rem;font-weight:600;color:#8b5cf6;margin-bottom:.4rem;">多模态联动需求</div>
    <p style="font-size:.82rem;color:#475569;line-height:1.6;margin:0;">将影像与其他临床数据关联的数据集（如放射+病理配对、图像+纵向电子病历）极为匮乏。</p>
  </div>
</div>

<!-- 结论 -->
<div style="border-left:3px solid #1d4ed8;padding:1.25rem 1.5rem;background:#f8fafc;margin-bottom:3rem;">
  <div style="font-size:.7rem;font-weight:700;letter-spacing:.1em;text-transform:uppercase;color:#1d4ed8;margin-bottom:.6rem;">结论</div>
  <p style="font-size:.88rem;color:#475569;line-height:1.8;margin:0;font-family:'IBM Plex Serif',serif;">
    Imaging-X 项目代表了系统性绘制和组织全球开放医学影像数据的重要努力。通过提供统一分类法和元数据驱动的整合框架，本工作推动从小型、任务专用模型向大型通用医学基础模型的范式转变。数据空白的识别也是对临床社区的号召——优先在代表性不足的领域建立数据集，确保下一代医疗 AI 既强大又能全面覆盖人类健康的各个方面。
  </p>
</div>

<!-- 核心贡献 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 1rem;">核心贡献</h2>
<ul style="font-size:.88rem;color:#334155;line-height:1.9;padding-left:1.4rem;margin-bottom:3rem;">
  <li>编目 <strong>1000+ 开放获取医学影像数据集</strong>，提供包含主体、采集和媒体级信息的标准化元数据。</li>
  <li>通过案例研究验证 MDFP 有效性：为多模态、多任务 2D 医学基础模型训练整理了包含 <strong>57 个数据集（210 万+ 经验证图像）</strong>的目标对齐数据集合。</li>
  <li>发布<strong>交互式网络门户</strong>（"医学数据集浏览器"）和 Python 工具包，为研究社区提供透明、实用的开放资源。</li>
  <li>提供首个全面的开放医学影像数据<strong>差距分析</strong>，为未来数据集建设和模型训练指明优先方向。</li>
</ul>

<!-- 作者 -->
<h2 style="font-family:'IBM Plex Serif',serif;font-size:1.35rem;font-weight:400;color:#0f172a;margin:0 0 .75rem;">作者</h2>
<p style="font-size:.8rem;color:#64748b;line-height:1.8;margin-bottom:3rem;">
  Zhongying Deng, Cheng Tang, Ziyan Huang, Jiashi Lin, Ying Chen, Junzhi Ning, Chenglong Ma, Jiyao Liu, Wei Li, Yinghao Zhu, Shujian Gao, Yanyan Huang, Sibo Ju, Yanzhou Su, Pengcheng Chen, Wenhao Tang, <strong>Tianbin Li</strong>, Haoyu Wang, Yuanfeng Ji, Hui Sun, Shaobo Min, Liang Peng, Feilong Tang, Haochen Xue, Rulin Zhou, Chaoyang Zhang, Wenjie Li, Shaohao Rui, Weijie Ma, Xingyue Zhao, Yibin Wang, Kun Yuan, Zhaohui Lu, Shujun Wang, Jinjie Wei, Lihao Liu, Dingkang Yang, Lin Wang, Yulong Li, Haolin Yang, Yiqing Shen, Lequan Yu, Xiaowei Hu, Yun Gu, Yicheng Wu, Benyou Wang, Minghui Zhang, Angelica I. Aviles-Rivero, Qi Gao, Hongming Shan, Xiaoyu Ren, Fang Yan, Hongyu Zhou, Haodong Duan, Maosong Cao, Shanshan Wang, Bin Fu, Xiaomeng Li, Zhi Hou, Chunfeng Song, Lei Bai, Yuan Cheng, Yuandong Pu, Xiang Li, Wenhai Wang, Hao Chen, Jiaxin Zhuang, Songyang Zhang, Huiguang He, Mengzhang Li, Bohan Zhuang, Zhian Bai, Rongshan Yu, Liansheng Wang, Yukun Zhou, Xiaosong Wang, Xin Guo, Guanbin Li, Xiangru Lin, Dakai Jin, Mianxin Liu, Wenlong Zhang, Qi Qin, Conghui He, Yuqiang Li, Ye Luo, Nanqing Dong, Jie Xu, Wenqi Shao, Bo Zhang, Qiujuan Yan, Yihao Liu, Jun Ma, Zhi Lu, Yuewen Cao, Zongwei Zhou, Jianming Liang, Shixiang Tang, Qi Duan, Dongzhan Zhou 等。
</p>

<!-- 底部链接 -->
<div style="border-top:1px solid #e2e8f0;padding-top:2rem;display:flex;gap:1rem;flex-wrap:wrap;">
  <a href="https://github.com/uni-medical/Project-Imaging-X" target="_blank" rel="noopener" class="pub-btn">GitHub 仓库</a>
  <a href="http://arxiv.org/abs/2603.27460" target="_blank" rel="noopener" class="pub-btn">arXiv 论文</a>
  <a href="https://huggingface.co/datasets/General-Medical-AI/Project-Imaging-X" target="_blank" rel="noopener" class="pub-btn">🤗 数据集</a>
  <a href="{{ '/zh/projects/' | relative_url }}" class="pub-btn">← 返回项目列表</a>
</div>

</div>
