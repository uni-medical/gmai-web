---
layout: default
title:  "Home"
lang:   "en"
---

<div class="hero">
  <div class="hero-inner">
    <div>
      <div class="hero-eyebrow">{{ site.lab.name }}</div>
      <h1>Advancing <strong>Rigorous Science</strong><br>at the Frontier of Computation</h1>
      <p class="hero-desc">{{ site.description }}</p>
      <div class="hero-affil">
        {{ site.lab.department }} &middot; {{ site.lab.institution }} &middot; {{ site.lab.address }}
      </div>
    </div>
    <div class="hero-metrics">
      <div class="metric-row"><span class="metric-n">{{ site.stats.publications }}</span><span class="metric-l">Peer-reviewed publications</span></div>
      <div class="metric-row"><span class="metric-n">{{ site.stats.members }}</span><span class="metric-l">Active group members</span></div>
      <div class="metric-row"><span class="metric-n">{{ site.stats.grants }}</span><span class="metric-l">Current funded projects</span></div>
      <div class="metric-row"><span class="metric-n">{{ site.stats.citations }}</span><span class="metric-l">Citations (Google Scholar)</span></div>
    </div>
  </div>
</div>
