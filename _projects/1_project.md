---
layout: page
title: Finance
description: Non-normal methods, Deep RL take on classical finance
img: assets/img/finance.jpg
importance: 1
category: work
related_publications: true
---

<style>
.highlight-box {
  background-color: #f9f9f9;
  border-left: 4px solid #004080;
  padding: 0.8em 1em;
  border-radius: 6px;
  margin: 1em 0;
}

.section-intro p {
  margin-bottom: 0.6em;
}

.quote-block {
  margin: 0.8em 0;
  padding-left: 1em;
  border-left: 3px solid #ccc;
  font-style: italic;
  color: #444;
}
</style>


<p class="lead">
I explore how modern mathematical and computational ideas reshape classical finance.  
My current work focuses on three connected directions:
</p>

<div class="highlight-box">
<ol>
  <li><strong>Beyond Normality:</strong> Asset returns often display heavy tails and volatility clustering.  
  I study alternatives to the Gaussian paradigm, such as Lévy–Stable and Tempered Stable processes, and their implications for inference and pricing.</li>
  <li><strong>Dependence and Systemic Risk:</strong> Linear correlation underestimates joint extremes.  
  I use copulas and tail-dependence models to quantify multi-asset crash risk.</li>
  <li><strong>Learning and Control in Finance:</strong> Reinforcement-learning frameworks can reinterpret classical problems in portfolio choice and market making.</li>
</ol>
</div>

---

## 1. Rethinking Distributional Assumptions

Mandelbrot and Fama questioned the lognormal model of asset prices.  
Empirical evidence suggests that returns may follow heavy-tailed processes with infinite variance.  
Our projects revisit this premise using both model-selection and pricing approaches.

### 🔹 Rolling AIC for Stable vs Normal
_Tracking how market regimes switch between normal and stable distributions using rolling model-comparison techniques._  
**Collaborator:** Hariharasudhan (B.A. Economics, MSE)

### 🔹 Event Study Analysis under Stable Tails
_Analyzing stock price reactions around corporate and political events to evaluate market efficiency when returns exhibit stable tails, volatility clustering, and dependence._  
**Collaborator:** Tania (B.A. Economics, MSE)

### 🔹 A Generalized Tempered Stable Approach to Option Pricing
_Extending the Lévy–Stable framework by tempering its tails to create a tractable yet heavy-tailed model suitable for option pricing.  
Compares traditional Black–Scholes pricing with a Generalized Tempered Stable (GTS) formulation using Fourier methods._  
**Collaborators:** Mr. Sushant Singh and Mr. Jai Shivam (PGDM, MSE)

---

## 2. Modeling Dependence and Tail Risk

Classical correlation is inadequate for joint extremes.  
This stream focuses on copulas and multivariate dependence structures to capture systemic vulnerability in Indian markets.

### 🔹 Copulas and Tail Risk
_Measuring joint downside crashes across Nifty stocks using lower-tail-dependence copulas._  
**Collaborators:** Ms. Amritha (M.A. Economics, MSE) and Dr. Ekta Selarka (MSE)

---

## 3. Portfolio Optimisation with Modern Reinforcement Learning

Classical portfolio theory assumes static rebalancing under fixed risk–return trade-offs.  
In contrast, reinforcement learning treats portfolio management as a sequential decision process under uncertainty.  
Our work explores how **policy-gradient** methods can dynamically learn allocation strategies that adapt to changing market conditions and transaction costs.

**Collaborators:** Ongoing work with Dr. Arun Selvan.

---