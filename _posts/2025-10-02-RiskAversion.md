---
layout: post
date: 2025-10-02 09:00:00-0400
title: How do economists measure risk aversion?
description: A quick note on how the risk premium connects to derivatives of utility.
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
> — Frank H. Knight, *Risk, Uncertainty and Profit* (1921)

Everyday life is filled with events whose outcomes we cannot predict in advance: an accident, a medical emergency, a crop failure, a sudden crash in financial markets. To deal with such exposure, households and firms purchase insurance. By paying a fixed premium, one transfers the consequences of an adverse event to an insurer. The premium can be viewed as the price of insurance and at the same time as a measure of the individual’s dislike of risk. It represents the amount paid above the actuarially fair value (expected loss) in order to eliminate volatility.

It is useful here to recall Knight’s distinction. By risk we mean situations where the probabilities of outcomes are known, as in coin tosses or actuarial tables. By uncertainty we mean situations where no such probabilities exist. The insurance problem and the economic theory that follows are situated on the side of risk. A gamble will mean a random variable with a well-defined distribution. Within this measurable framework the central question is: *how much is an individual willing to pay to eliminate risk?*

We will interpret the premium as a measure of an individual’s aversion to risk. The larger the premium, the greater the willingness to sacrifice expected wealth in order to avoid volatility. We can sharpen the idea by asking a more precise question: *how much premium would an individual pay to eliminate a very small gamble, one that is negligible compared to their wealth?* The answer is the Arrow–Pratt measure of local risk aversion, a formula that ties the shape of the utility function directly to the cost of avoiding small risks. This post is about deriving that measure carefully, seeing what it implies in simple examples, and understanding why local risk aversion is a standard tool for thinking about risk.

---

### A simple formal setup

We model the world as a probability space $(\Omega,\mathcal{F},P)$ carrying random outcomes. A **gamble** is represented by a random variable $X:\Omega \to \mathbb{R}$, denoting the payoff. An agent begins with initial wealth $w$ and evaluates outcomes with a utility function $u:\mathbb{R}\to\mathbb{R}$, assumed continuous, increasing, and differentiable.  

The insurer offers a simple contract: instead of facing the gamble $X$, the agent can accept the certain payoff  
$$
\mathbb{E}[X] - \pi,
$$
where $\pi$ is the **premium**.  

The defining equation of the theory is:

<div class="math-block">
<strong>Definition (Risk premium).</strong>  
The risk premium $\pi$ is the real number (depending on $w$ and $X$) such that
\[
\mathbb{E}[u(w+X)] \;=\; u\big(w+\mathbb{E}[X]-\pi\big).
\]
</div>

- $\pi>0$: the agent is risk-averse, willing to pay to eliminate uncertainty.  
- $\pi=0$: risk-neutral, caring only about expectations.  
- $\pi<0$: risk-loving, preferring the gamble to certainty.

---

### Local risk aversion

The central question now is: *how much premium will the agent pay if the gamble is small compared to their wealth?*  
Formally, we scale the gamble by a factor $t$ and study the risk premium $\pi(t)$ defined by
\[
u(w-\pi(t)) \;=\; \mathbb{E}[u(w+tX)].
\]

<div class="math-block">
<strong>Theorem (Arrow–Pratt index of risk aversion).</strong>  
Suppose $u \in C^3$ with $u'(w)>0$, and $X$ has mean $0$ and variance $\sigma^2$. Then as $t\to 0$,
\[
\pi(t) \;=\; \tfrac{1}{2}\,r(w)\,\sigma^2\,t^2 + o(t^2),
\qquad\text{where}\qquad
r(w) = -\,\frac{u''(w)}{u'(w)}.
\]
</div>

This $r(w)$ is the celebrated **Arrow–Pratt coefficient of risk aversion**. It connects the curvature of utility to the amount of money an individual is willing to pay to avoid *small risks*.

---

### Numerical example

Consider a gamble that pays \$200 with probability $1/2$ and \$0 with probability $1/2$. Then $\mathbb{E}[X]=100$.  
- A risk-neutral agent ($r(w)=0$) demands no premium: $\pi=0$.  
- A risk-averse agent might accept only \$80 for sure; in this case $\pi=20$, a willingness to forgo \$20 to avoid uncertainty.  

This simple coin-flip gamble illustrates how the risk premium works as a yardstick for attitudes towards risk.

---

### Corollaries

1. **Constant relative risk aversion (CRRA).**  
If $r(w)=\gamma/w$ for some constant $\gamma>0$, solving the differential equation gives
\[
u(w) = 
\begin{cases}
\dfrac{w^{1-\gamma}}{1-\gamma}, & \gamma\neq 1, \\
\log w, & \gamma=1,
\end{cases}
\]
the familiar CRRA utilities used in macro and finance.

2. **Affine invariance.**  
If utility is rescaled as $\tilde u = a u + b$ with $a>0$, then
\[
-\,\frac{\tilde u''}{\tilde u'} = -\,\frac{u''}{u'},
\]
so the Arrow–Pratt index is unchanged. The measure of risk aversion depends only on preferences, not units.

---

### Commentary

Mathematicians may be tempted to interpret $r(w)$ as a kind of curvature. But this is misleading: the Arrow–Pratt index is not geometric curvature of a curve in Euclidean space, but an *economic curvature* that calibrates how marginal utility declines. Its role is not to describe shapes but to measure the premium one would rationally pay to avoid variance.  

In insurance, $r(w)$ quantifies the excess above fair value an individual would pay for coverage. In finance, it underpins equilibrium pricing of risky assets. And in economics, it reveals the hidden assumption behind CRRA models: that risk aversion scales with wealth in a very specific way.  

---

### Conclusion

We began with the everyday intuition of paying insurance premiums to reduce uncertainty. By formalizing this as a utility maximization problem, we derived the **risk premium** $\pi$ as the key measure of aversion to risk. For small gambles, the **Arrow–Pratt index** $r(w)$ precisely quantifies the willingness to pay per unit of variance. From this, the familiar CRRA utilities and affine invariance fall out as corollaries.  

Pratt’s 1964 formula is elegant in its economy: a second derivative divided by a first derivative, giving a clean economic meaning to curvature. But as Knight reminded us, this is only the domain of measurable risk. True uncertainty — where probabilities cannot even be assigned — lies beyond the reach of Arrow–Pratt calculus.

---

{% endcapture %}
{{ content | markdownify }}




<!-- ---
layout: post
date: 2025-10-02 09:00:00-0400
title: How do economists measure risk aversion?
description: A quick note on how the risk premium connects to derivatives of utility.
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

The agents in any economy face risky gambles on a daily basis. The uncertainty in the choices of the agent can lead to consequences that agent does not like. The agents relative preferences about consequences is usually abstracted out by a expected utility function (sometimes justified by von Neumann and Morgenstein's theorem that produces an expected utility function from ordinal preferences).

The uncertainty associated to the consequences is modelled by a probability space $(\Omega, {\cal F},P)$. The payoff of a risky gamble is denoted by a random variable $X:\Omega \to \mathbb{R}$. Suppose that the agents wealth before the gamble was offered is $w$ and the utility function associated to the agent is $u.$

Following {% cite pratt1964risk %}, in order to appreciate the risk profile of the agent, we perform the following experiment. Let $\pi$ be a real number. We offer the agent two choices:

1. (Risky gamble) The agent can accept a payoff of $X$ units.
2. (Risk adjusted certainty) The agent can accept a payoff $\mathbb{E}(X) - \pi$.

<div class="math-block">
<strong>Proposition.</strong> If \( u \) is a concave continuous increasing function then there exists a unique positive real number $\pi$ such that the agent is indifferent to the choices between a risky gamble and risk adjusted certain payoff.
</div>

<div class="math-block proof">
<strong>Proof.</strong> By Jensen's inequality for concave functions \(u\), \[\mathbb{E}(u\left(w+X\right)) < u\left(w+\mathbb{E}(X)\right).\] Since the $u$ is continuous, there must exist a real number \(\pi\) so that \[\mathbb{E}(u\left(w+X\right)) = u\left(w+\mathbb{E}(X)-\pi\right).\] Further $\pi$ unique since the function is increasing. Thus the agent is indifferent to the choices for this \( \pi \), since the expected utilities associated to the choices are equal.∎
</div>

Note that $\pi > 0$ means that the agent is willing to forego some amount of cash to avoid risk. We will assume that this amount depends on the wealth of the agent $w$ and the offered gamble $X$. The amount $\pi$ that makes the agent indifferent to the risky proposition is called a _risk premium associated to X_.

_Definition:_ Suppose an agent with wealth $w$ and differentiable monotone utility function $u$ is offered a risky gamble $X$. The risk premium $\pi$ associated with gamble $X$ is defined as the real number that solves the equation $\mathbb{E}(u\left(w+X\right)) = u\left(w+\mathbb{E}(X)-\pi\right)$

The proposition guarantees that a positive risk premium exists for concave utility function.

---

### Risk Premium

The **risk premium** $\pi$ is the amount of expected payoff an agent is willing to sacrifice to avoid facing uncertainty. Instead of accepting the gamble $X$, the agent would rather take the certain payoff
\[
\mathbb{E}[X] - \pi.
\]

- $\pi > 0$: *risk-averse* — the agent accepts less than the expected value to eliminate risk.  
- $\pi = 0$: *risk-neutral* — the agent only cares about expected value.  
- $\pi < 0$: *risk-loving* — the agent actually prefers risk, and requires more than the expected value to accept a sure thing.

<div class="math-block">
<strong>Example.</strong> Suppose $X$ pays \$200 with probability $1/2$ and \$0 with probability $1/2$. Then $\mathbb{E}[X] = 100$. A risk-averse agent might be indifferent between the gamble and a guaranteed \$80. In that case the risk premium is $\pi = 20$: they are willing to give up \$20 of expected value to avoid the uncertainty.
</div>

### Local Risk Aversion

We will now compute the risk premium that a risk-averse agent is willing to pay for an _infinitesimal_ gamble. This means that the payoff from the gamble is really negligible compared to the agent's wealth.

Instead of messing with a payoff, we will allow the agent to choose a fraction $t$ of the gamble's payoff and compute the risk premium $\pi(t)$. Let $X$ be a mean-zero gamble, $\mathrm{Var}(X)=\sigma^2<\infty$. For each scale $t>0$, define the risk premium $\pi(t)$ by the certainty-equivalence condition
$u(x-\pi(t)) \;=\; \mathbb{E}[u(x+tX)].$

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

### Interpretation and Conclusion

The index $r(x)$ is not geometry for its own sake but a way of formalizing how fast marginal utility declines at wealth $x$. It measures the willingness of an individual to pay in order to eliminate small risks. In insurance theory, this is the excess above actuarially fair value; in finance, it is the foundation of equilibrium risk premia. My own interest was rekindled when I revisited CRRA preferences in the microfoundations of Lucas’s exchange economy and islands papers. CRRA utility is not just a convenient functional form: through the Arrow–Pratt formula it imposes a very particular scaling of risk aversion with wealth. The entire machinery of representative-agent macroeconomics inherits that assumption, often without much reflection.

It is also worth stressing what lies beneath the definition of the risk premium. The construction presumes that the agent must compare the gamble with the certain payoff, with no option to walk away from both. This is the axiom of completeness at work, and it is precisely what guarantees that $\pi$ is well-defined. In real life, agents may refuse both contracts, but in the model world they cannot. The Arrow–Pratt index, so central to our theory of risk, therefore rests on both the calculus of concavity and the discipline of completeness. That hidden assumption is as much a part of the story as the derivative ratio itself.

Pratt’s formula is elegant, but it belongs firmly to the domain of measurable risk. As Frank Knight reminded us a century ago, “uncertainty must be taken in a sense radically distinct from the familiar notion of risk.” The Arrow–Pratt index tells us how agents behave under small, quantifiable gambles; what it cannot capture is the deeper uncertainty that lies beyond variance, where probabilities themselves are ill-defined.

---

{% endcapture %}
{{ content | markdownify }} -->