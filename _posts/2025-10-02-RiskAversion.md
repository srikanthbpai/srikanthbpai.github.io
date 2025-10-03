---
layout: post
date: 2025-10-02 09:00:00-0400
title: How do economists measure risk aversion?
description: A quick note on how the risk premium connects to derivatives of utility.
bibliography: references.bib
tags:
  - utility
  - risk-aversion
  - Arrow-Pratt
related_posts: true
giscus_comments: true
display_categories:
  - teaching
  - project
categories: " professional teaching project"
related_publications: true
---

{% capture content %}

> “Uncertainty must be taken in a sense radically distinct from the familiar notion of Risk, from which it has never been properly separated … a measurable uncertainty, or ‘risk’ proper … is so far different from an unmeasurable one that it is not in effect an uncertainty at all.”
> — Frank H. Knight, Risk, Uncertainty and Profit

The agents in any economy face risky gambles on a daily basis. The uncertainty associated to the choices of the agent can lead to consequences that agent does not like. The agents relative preferences about consequences is usually abstracted out by a expected utility function (sometimes justified by von Neumann and Morgenstein's theorem that produces an expected utility function from ordinal preferences).

We will discuss the risk aversion function discovered by J.W. Pratt in this blog. The uncertainty associated to the consequences is modelled by a probability space $(\Omega, {\cal F},P)$. The payoff of a risky gamble is denoted by a random variable $X:\Omega \to \mathbb{R}$. Suppose that the agents wealth before the gamble was offered is $w$ and the utility function associated to the agent is $u.$

In order to appreciate the risk profile of the agent, we perform the following experiment. Let $\pi$ be a real number. We offer the agent two choices:

1. (Risky gamble) The agent can accept a payoff of $X$ units.
2. (Risk adjusted Certain) The agent can accept a payoff $\mathbb{E}(X) - \pi$.

<div class="math-block">
<strong>Proposition.</strong> If \( u \) is a concave continuous increasing function then there exists a unique positive real number $\pi$ such that the agent is indifferent to the choices between a risky gamble and risk adjusted certain payoff.
</div>

<div class="math-block proof">
<strong>Proof.</strong> Agent is indifferent to the choices if the expected utilities associated to the choices are equal. Thus we must have \[u\left(w+X\right) = u\left(w+\mathbb{E}(X)-\pi\right).\] 
By Jensen's inequality for concave functions \(u\), \[\mathbb{E}(u\left(w+X\right)) < u\left(w+\mathbb{E}(X)\right).\] Since the $u$ is continuous, there must exist a real number \(\pi\) so that \[\mathbb{E}(u\left(w+X\right)) = u\left(w+\mathbb{E}(X)-\pi\right).\] Further $\pi$ unique since the function is increasing. ∎
</div>

Note that $\pi > 0$ means that the agent is willing to forego some amount of cash to avoid risk. We will assume that this amount depends on the wealth of the agent $w$ and the offered gamble $X$. The amount $\pi$ that makes the agent indifferent to the risky proposition is called a _risk premium associated to X_.

_Definition:_ Suppose an agent with wealth $w$ and differentiable monotone utility function $u$ is offered a risky gamble $X$. The risk premium $\pi$ associated with gamble $X$ is defined as the real number that solves the following equation:
$$\mathbb{E}(u\left(w+X\right)) = u\left(w+\mathbb{E}(X)-\pi\right)$$

The proposition guarantees that a positive risk premium exists for concave utility function.

---

### Certainty Equivalent and Risk Premium

<div class="math-block">
<strong>Definition.</strong> The certainty equivalent associated to a risky gamble $X$ is the sure amount $c$ such that
\[
u(w+c) \;=\; \mathbb{E}[u(w+X)].
\]  
</div>

The **risk premium** $\pi$ is then defined as the difference between the expected value of the gamble and the certainty equivalent:
\[
\pi \;=\; \mathbb{E}[X] - c.
\]

- $\pi > 0$ : risk-averse (concave $u$).
- $\pi = 0$ : risk-neutral (linear $u$).
- $\pi < 0$ : risk-loving (convex $u$).

<div class="math-block">
<strong>Example.</strong> Suppose $X$ pays \$200 with probability $1/2$ and \$0 with probability $1/2$. Then $\mathbb{E}[X] = 100$. If the certainty equivalent is $c=80$, the risk premium is $\pi = 20$. The agent is willing to forego \$20 to avoid the risk.
</div>

### Local Risk Aversion

We will now compute the risk premium that a risk-averse agent is willing to pay for an _infinitesimal_ gamble. This means that the payoff from the gamble is really negligible compared to the agent's wealth.

Instead of messing with a payoff, we will allow the agent to choose a fraction $t$ of the gamble's payoff and compute the risk premium $\pi(t)$. Let $X$ be a mean-zero gamble, $\mathrm{Var}(X)=\sigma^2<\infty$. For each scale $t>0$, define the risk premium $\pi(t)$ by the certainty-equivalence condition

$$
u(x-\pi(t)) \;=\; \mathbb{E}[u(x+tX)].
$$

Local risk aversion is the coefficient that links the **second-order** cost of small risk to its variance.

<div class="math-block">
<strong>Proposition (Local risk premium and Arrow–Pratt index).</strong>
Suppose \(u\in C^3\) with \(u'(x)>0\). Let \(X\) satisfy \(\mathbb{E}[X]=0\), \(\mathbb{E}[X^2]=\sigma^2<\infty\). Then, as \(t\to 0\),
\[
\pi(t)\;=\;\tfrac{1}{2}\,r(x)\,\sigma^2\,t^2 \;+\; o(t^2),
\qquad\text{where}\qquad
r(x)\;:=\;-\frac{u''(x)}{u'(x)}.
\]
Moreover, \(r(x)\) is invariant under positive affine transformations of utility (if \(\tilde u= a u + b\), \(a>0\), then \(-\tilde u''/\tilde u' = -u''/u'\)).
</div>

<div class="math-block proof">
<strong>Proof.</strong>
Taylor expand the left side around \(x\):
\[
u(x-\pi)=u(x)-u'(x)\pi+\tfrac12 u''(x)\pi^2+O(\pi^3).
\]
Taylor expand the right side inside expectation:
\[
u(x+tX)=u(x)+u'(x)tX+\tfrac12 u''(x)t^2X^2+O(t^3|X|^3).
\]
Taking expectations and using \(\mathbb{E}[X]=0\), \(\mathbb{E}[X^2]=\sigma^2\),
\[
\mathbb{E}[u(x+tX)] = u(x) + \tfrac12 u''(x)\sigma^2 t^2 + O(t^3\,\mathbb{E}|X|^3).
\]
Equating both sides and canceling \(u(x)\):
\[
-\,u'(x)\pi + \tfrac12 u''(x)\pi^2 + O(\pi^3)
= \tfrac12 u''(x)\sigma^2 t^2 + O(t^3).
\]
Since the leading term on the right is order \(t^2\), we must have \(\pi(t)=O(t^2)\); hence \(\pi^2=O(t^4)\) and the quadratic/cubic terms in \(\pi\) are \(o(t^2)\). Therefore
\[
-\,u'(x)\,\pi(t) \;=\; \tfrac12 u''(x)\sigma^2 t^2 + o(t^2),
\]
so
\[
\pi(t) \;=\; \tfrac12\left(-\frac{u''(x)}{u'(x)}\right)\sigma^2 t^2 + o(t^2)
= \tfrac12\,r(x)\,\sigma^2 t^2 + o(t^2).
\]
Affine invariance follows immediately: if \(\tilde u = a u + b\) with \(a>0\), then \(\tilde u' = a u'\), \(\tilde u'' = a u''\), so \(-\tilde u''/\tilde u' = -u''/u'\).
∎
</div>

**Notes.**

- The mean of $X$ affects _first-order_ terms (drift), not the risk premium; local risk aversion governs the **variance penalty**.
- The $o(t^2)$ remainder requires $u\in C^3$ and $\mathbb{E}|X|^3<\infty$.
- In one dimension, $r(x) = -\tfrac{d}{dx}\log u'(x)$: the (negative) local rate of decay of marginal utility.

### Interpretation and Conclusion

The index $r(x)$ is not geometry for its own sake but a way of formalizing how fast marginal utility declines at wealth $x$. It measures the willingness of an individual to pay in order to eliminate small risks. In insurance theory, this is the excess above actuarially fair value; in finance, it is the foundation of equilibrium risk premia. My own interest was rekindled when I revisited CRRA preferences in the microfoundations of Lucas’s exchange economy and islands papers. CRRA utility is not just a convenient functional form: through the Arrow–Pratt formula it imposes a very particular scaling of risk aversion with wealth. The entire machinery of representative-agent macroeconomics inherits that assumption, often without much reflection.

It is also worth stressing what lies beneath the definition of the risk premium. The construction presumes that the agent must compare the gamble with the certain payoff, with no option to walk away from both. This is the axiom of completeness at work, and it is precisely what guarantees that $\pi$ is well-defined. In real life, agents may refuse both contracts, but in the model world they cannot. The Arrow–Pratt index, so central to our theory of risk, therefore rests on both the calculus of concavity and the discipline of completeness. That hidden assumption is as much a part of the story as the derivative ratio itself.

Pratt’s formula is elegant, but it belongs firmly to the domain of measurable risk. As Frank Knight reminded us a century ago, “uncertainty must be taken in a sense radically distinct from the familiar notion of risk.” The Arrow–Pratt index tells us how agents behave under small, quantifiable gambles; what it cannot capture is the deeper uncertainty that lies beyond variance, where probabilities themselves are ill-defined.

---

{% endcapture %}
{{ content | markdownify }}

{% bibliography --file references %}
