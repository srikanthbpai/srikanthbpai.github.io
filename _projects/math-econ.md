---
layout: page
title: Mathematical Economics
description: Dynamic models of policy, learning, and equilibrium.
img: assets/img/mathecon.jpg
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
I explore how mathematical structure, stochastic dynamics, and learning mechanisms inform policy and equilibrium outcomes in economics.  
My current work follows three connected lines of inquiry:
</p>

<div class="highlight-box">
<ol>
  <li><strong>Dynamic Policy and Enforcement:</strong> Markovian and control-theoretic approaches to modelling innovation, regulation, and patent rent persistence.</li>
  <li><strong>Learning and Strategic Behaviour:</strong> Reinforcement-learning agents and their equilibrium properties in oligopolistic competition.</li>
  <li><strong>Analytic Structure of Dynamics:</strong> Using tools from differential equations and asymptotic analysis to study macroeconomic adjustment.</li>
</ol>
</div>

---

## 1. Patent Valuation under Fragile Institutional Enforcement

In collaboration with **Akila Hariharan** (B.A. Economics, MSE) and **Prof. Naveen Srinivasan** (MSE),  
this work studies how uncertainty in the enforcement of intellectual property rights affects patent valuation.  
The model employs a **continuous-time Markov process** to capture stochastic transitions between enforcement states and their effect on discounted monopoly rents.

**Preprint:**  
<a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=5552758" target="_blank">
Patent Valuation under Fragile Institutional Enforcement — A Continuous-Time Markov Approach</a>  
_Srikanth Pai, Akila Hariharan, and Naveen Srinivasan (SSRN Working Paper, 2025)_

---

## 2. Algorithmic pricing in Oligopolies with Reinforcement Learning firms

In collaboration with **Dr. Arun Selvan** (Associate Professor, IIT Bombay/Karlstad University, Sweden), this project investigates how oligopolistic firms using modern reinforcement learning algorithms to collude. 

Along with **Tania Mitra Victoria** (B.A. Economics, MSE) we wrote a preliminary critique of the RL methods in collusion based problems in oligopolies. 
**Preprint:**  
<a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=5900103" target="_blank">
A Critique of Reinforcement-Learning Approaches to Collusion in Oligopoly</a>  
_Srikanth Pai, Arunselvan Ramaswamy, and Tania Mitra Victoria (SSRN Working Paper, 2026)_

The next stage of the project involves modelling environments where algorithmic agents either facilitate collusion or are designed to detect and destabilize it, especially in digital marketplaces.

A student joining this project must be able to program in Python, use GitHub independently, and maintain consistent effort over extended periods.

---

## 3. Mathematical models of voting

The intersections of social choice theory and the mathematical modeling of voting systems are exciting to me. I am interested in learning the effects on agent preferences, reasoning capacities and ignorance limits on the existence of desirable aggregation rules and voting outcomes. 


### An extension of Median Voter theorem
In the traditional Median Voter Theorem, it is assumed that every voter participates. In a recent paper with my student, Aman Ray, we relax this assumption. We model a scenario where voters only participate if a candidate falls within a specific "attraction window."  We show that in this setting, the equilibrium position is no longer the global median. Instead, it generalizes to a conditional median—a position that splits only the participating voters within that specific window into two equal halves. We identify a property we call "c-window dominance", which provides the necessary and sufficient conditions on the voter distribution for a pure-strategy Nash equilibrium to exist.

**Presentation**: This work has been accepted for presentation at the conference on Recent Trends in Logic and Games 2026 (RTLG 2026). Here's a [draft of the paper](assets/pdf/RayPaiMedianVoterExtension.pdf) after incorporating the suggestions of the reviewers.

---
## 4. Dynamics and Fuchsian Structure in Macroeconomic Models

I am studying whether short-run adjustment dynamics in growth models can be understood through the analytic structure of their Laplace-transformed differential equations. When the dynamic system is Laplace-transformed, the resulting equation in the complex plane becomes Fuchsian, so its transient dynamics can be analyzed through the singularity structure of that transformed equation. Preliminary work on the Solow and RCK models shows regular singularities with limited complexity. The current objective is to identify or construct a growth model whose Laplace-domain representation yields a genuinely non-trivial Fuchsian system and therefore richer asymptotic behaviour.

A student working on this project must have solid preparation in Real Analysis, Complex Analysis, and Ordinary Differential Equations, since the core methods involve analytic properties of solutions in the complex plane.  

---
