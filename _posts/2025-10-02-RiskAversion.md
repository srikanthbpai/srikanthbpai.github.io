---
layout: post
date: 2025-10-02 09:00:00-0400
title: A measure of risk aversion:Arrow-Pratt Index
description: On risk premium computations and the resulting measure of local risk aversion .
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
related_publications: false
---

{% capture content %}

> “Uncertainty must be taken in a sense radically distinct from the familiar notion of Risk, from which it has never been properly separated … a measurable uncertainty, or ‘risk’ proper … is so far different from an unmeasurable one that it is not in effect an uncertainty at all.”
> — Frank H. Knight, *Risk, Uncertainty and Profit* (1921)

Everyday life is filled with events whose outcomes cannot be predicted in advance: a medical emergency, a crop failure, a sudden financial crash. Insurance exists to handle such exposure. By paying a premium, households and firms transfer the consequences of an adverse event to an insurer. The premium is the price of protection, and the excess above the actuarially fair value (the expected loss) records how much the individual is willing to pay to avoid volatility.

Knight’s distinction is useful here. Risk refers to situations with well-defined probabilities, as in coin tosses or actuarial tables. Uncertainty refers to situations where probabilities are not even defined. Insurance theory, and the mathematics that follows, lies on the side of risk. A gamble is a random variable with a known distribution, and the central question is: how much will an individual pay to remove it?

To study this systematically, we adopt the von Neumann–Morgenstern (vNM) framework. An agent is assumed to have a preference ordering over gambles. If these preferences satisfy the vNM axioms, there exists a utility function $u$ such that lotteries are ranked by their expected utility $\mathbb{E}[u(X)]$. Crucially, $u$ is unique only up to a positive affine transformation $v(x)=au(x)+b$. Any meaningful measure of risk aversion must therefore be invariant under such transformations.

This immediately rules out naive candidates such as $u’’(w)$ or [geometric curvature](https://en.wikipedia.org/wiki/Curvature#Graph_of_a_function), which change under rescaling. The correct object is the Arrow–Pratt index,
\\[r(w) = -\frac{u’’(w)}{u’(w)}.\\]
It is dimensionless, invariant under affine transformations, and arises directly as the leading-order premium per unit variance of a small gamble. In the remainder of this post, we derive this result carefully, work through examples, and reflect on why this “economic curvature” has become the standard measure of risk aversion.

---

### Precise setup

Let start with a simple example to illustrate the ideas that are about to come.

Consider a gamble that pays Rs. 2000/- with probability $1/2$ and Rs. 0/- with probability $1/2$. Then $\mathbb{E}[X]=1000$.  
- A risk-neutral agent demands no premium: $\pi=0$.  
- A risk-averse agent might accept only Rs. 800/- for sure; in this case the agent is willing to forgo Rs. 200/- to avoid uncertainty. We will say that the risk premium is 200 rupees. 


Now we get on with the math. Let $(\Omega,\mathcal{F},P)$ be a probability space, and let $X:\Omega\to\mathbb{R}$ be a random payoff. An agent with initial wealth $w$ evaluates outcomes through a utility function $u:\mathbb{R}\to\mathbb{R}$, continuous, strictly increasing, and differentiable.

The agent faces two options:
  1.  *Risky option:* receive the random payoff $w + X$.
  2.  *Certain option:* receive the fixed payoff $w + c$ .

  Indifference between these two options is expressed by
\\[
\mathbb{E}[u(w+X)] = u(w+c).
\\]

The value $c$ solving this equation is called the certainty equivalent of the gamble $X$.

The premium $\pi$ that an agent pays over the acturial fair value $\mathbb{E}(X)$ is called the *risk premium*. Mathematically,  
\\[
\pi = \mathbb{E}(X)-c
\\]

Substituting the certainty equivalent into the definition of the premium yields the fundamental equation characterizing the risk premium. We make this our definition of risk premium following {% cite pratt1964risk --file references %}:

<div class="math-block">
<strong>Definition (Risk premium).</strong>  
The risk premium $\pi$, associated to a gamble \(X\), of an agent with with wealth \(w\) and utility \(u\), is given by the following equation:
\[
\mathbb{E}[u(w+X)] \;=\; u\!\big(w+\mathbb{E}[X]-\pi\big).
\]
</div>

We can show that $\pi$ exists and is unique if we make standard assumptions.

<div class="math-block">
<strong>Proposition.</strong> If \( u \) is a concave continuous increasing function then for any real $w$ and random variable $X$ there exists a unique positive real number $\pi$ such that 
\[
\mathbb{E}[u(w+X)] \;=\; u\!\big(w+\mathbb{E}[X]-\pi\big).
\]
</div>

<div class="math-block proof">
<strong>Proof.</strong> By Jensen's inequality for concave functions \(u\), \[\mathbb{E}(u\left(w+X\right)) < u\left(w+\mathbb{E}(X)\right).\] Since the $u$ is continuous, there must exist a real number \(\pi\) so that \[\mathbb{E}(u\left(w+X\right)) = u\left(w+\mathbb{E}(X)-\pi\right).\] Further $\pi$ unique since the function is increasing.∎
</div>


#### Risk in the context of insurance

In insurance terminology, the *loading ratio* (or *loading factor*) is defined as the multiple by which the *gross premium* exceeds the *actuarially fair premium* (i.e. expected losses). In other words,  
\\[
\text{loading ratio} = \frac{\text{gross premium}}{\text{expected loss}}.
\\]  
This captures all extra costs insurers build in — administrative expenses, underwriting, profit margins, risk margins, etc.  

Empirically, loading ratios vary quite a lot across sectors. In health insurance, administrative loadings often add **5% to 20%** above expected claims in competitive markets ([Springer Health Econ, 2022](https://link.springer.com/article/10.1007/s10198-022-01436-y)). In specialty or retail markets (like travel insurance, warranty contracts), loadings may be far more extreme, sometimes multiple times the fair value ([Partners Life, NZ](https://www.partnerslife.co.nz/news-and-views/what-are-premium-loadings)). In property/casualty lines, loss ratios (i.e. claims ÷ premiums) often lie in the 70–99% range, leaving the balance for loadings and profit ([Wikipedia: Loss ratio](https://en.wikipedia.org/wiki/Loss_ratio)).  

In India, loading ratios are often significant. For example, health insurers routinely impose *loading charges* on individuals with pre-existing conditions, age, or unhealthy behavior as an extra amount over the base premium ([Acko Health Insurance](https://www.acko.com/health-insurance/loading/)). In the non-life sector, motor insurance sometimes runs at very high combined ratios, with reports that the combined ratio might approach **200 %** in some years (i.e. gross premium double the expected claims + expenses) ([Business Standard](https://www.business-standard.com/article/finance/motor-insurance-combined-ratios-may-touch-200-by-end-of-fy15-114040100041_1.html)). In the motor third-party (TP) segment, it is observed that while motorcycle TP contributes 15.5 % of TP premium, its share of incurred TP claims is 21.1 %, indicating a mismatch of premium to claims across classes ([GIC Council Yearbook 2021-22](https://www.gicouncil.in/yearbook/2021-22/indian-non-life-insurance-industry-analysis/section-04-segmentwise-business-highlights/motor-third-party-tp/)).  

Thus in India, it is not unusual for gross premiums to be *1.5×, 2×, or even higher multiples* of actuarial expected loss, depending on line and risk class.

Now lets a see an example calculation assuming a concave utility function.

*Example:*

Consider an agent with a wealth \\(w = 10\\) lakh rupees and utility function \\(u(c) = \sqrt{c}\\). The agent faces a small risk: with probability \\(0.01\\) a loss of \\(10{,}000\\) occurs, and with probability \\(0.99\\) no loss occurs. The actuarially fair premium for this gamble is \\(0.01 \times 10{,}000 = 100\\).  

With no insurance, expected utility is  
\\[
\mathbb{E}[u(w+X)] 
= 0.99\sqrt{10{,}00{,}000} + 0.01\sqrt{9{,}90{,}000} 
\approx 999.95.
\\]

With insurance, certain wealth is \\(9{,}99{,}900 - \pi\\), giving utility  
\\[
u(9{,}99{,}900 - \pi) = \sqrt{9{,}99{,}900 - \pi}.
\\]

Equating the two expressions,  
\\[
\sqrt{9{,}99{,}900 - \pi} \approx 999.95,
\\]
which solves to \\(\pi \approx 95\\).  

Hence the household would pay about ₹195 in total (₹100 fair value plus a ₹95 risk premium) to eliminate the 1% risk of losing ₹10,000. In this example, the ratio of willingness-to-pay to the actuarially fair premium is  
\\[
\frac{195}{100} = 1.95.
\\]  
In this example, the household’s willingness-to-pay ratio is 1.95, meaning they would pay nearly double the actuarially fair premium. In a perfectly competitive and frictionless insurance market, such willingness-to-pay would put an upper bound on the loading ratio insurers could sustain.
 

In the previous example, the square root utility function was arbitrary. The exact value of the risk premium is certainly sensitive to the utility function used. Thus if we are interested in computing premiums, we are forced to contemplate the design of utility functions. 

<!-- A statistician can compute an estimate of loading ratio from data and the theorist hopes to supply a concave utility function with the specified loading ratio that can be used to develop theory. Now it is an interesting theoretical question to design a utility function with a specified loading ratio.  -->
In order to understand such a design, we look at a measure of local risk aversion. The pertinent question now is: *how much premium will the agent pay if the gamble is small compared to their wealth?*  

We talk about small gambles by introducing a scale factor. We scale a gamble by a factor \\(t\\) and study the risk premium \\(\pi(t)\\) defined by  

\\[
u(w-\pi(t)) \;=\; \mathbb{E}[u(w+tX)].
\\]

---

<div class="math-block">
<strong>Proposition (Leading-order risk premium).</strong>  
Let \(u \in C^{3}\) with \(u'(w) > 0\). Let \(X\) satisfy \(\mathbb{E}[X] = 0\) and \(\mathrm{Var}(X) = \sigma^{2} < \infty\). Define \(\pi(t)\) by  
\[
u(w-\pi(t)) = \mathbb{E}[u(w+tX)].
\]  
Then, as \(t \to 0\),  
\[
\pi(t) \;=\; \tfrac12\,r(w)\,\sigma^{2}\,t^{2} + o(t^{2}), 
\qquad\text{where}\qquad
r(w) = -\,\frac{u''(w)}{u'(w)}.
\]
</div>

<div class="math-block proof">
<strong>Proof.</strong>  
Taylor-expand the left-hand side at \(w\):  
\[
u(w-\pi) = u(w) - u'(w)\pi + \tfrac12 u''(w)\pi^{2} + O(\pi^{3}).
\]  
Expand the right-hand side inside the expectation and take expectations:  
\[
u(w+tX) = u(w) + u'(w)tX + \tfrac12 u''(w)t^{2}X^{2} + O(t^{3}|X|^{3}),
\]  
so that  
\[
\mathbb{E}[u(w+tX)] = u(w) + \tfrac12 u''(w)\sigma^{2}t^{2} + O(t^{3}\,\mathbb{E}|X|^{3}),
\]  
using \(\mathbb{E}[X] = 0\). Equating both sides and canceling \(u(w)\) gives  
\[
-\,u'(w)\pi(t) + \tfrac12 u''(w)\pi(t)^{2} + O(\pi(t)^{3})
= \tfrac12 u''(w)\sigma^{2}t^{2} + O(t^{3}).
\]  
Since the right-hand side is \(O(t^{2})\), we must have \(\pi(t) = O(t^{2})\); hence \(\pi(t)^{2} = O(t^{4}) = o(t^{2})\). Neglecting higher-order terms,  
\[
-\,u'(w)\pi(t) = \tfrac12 u''(w)\sigma^{2}t^{2} + o(t^{2}),
\]  
which simplifies to  
\[
\pi(t) = \tfrac12\left(-\frac{u''(w)}{u'(w)}\right)\sigma^{2}t^{2} + o(t^{2})
= \tfrac12\,r(w)\,\sigma^{2}t^{2} + o(t^{2}).∎
\]  

</div>

So the relation between local risk aversion $r(w)$, volatility of the gamble $\sigma^2t^2$ and risk premium $\pi$ is
\\[
\text{local risk aversion} = \dfrac{2\times \text{ risk premium}}{\text{volatility of the gamble }}
\\]

The definition of $r(w)$ in terms of utility allows us to design utility function by solving odes.

*Example 1:* If $r(w)=0$ for all $w$, then ${u''}(w)=0$. Thus $u(w)$ is linear. This is the risk neutral case.
Also note that if $u$ is concave, increasing then $r(w) > 0$ which is usually the risk averse case.

*Example 2:* Now lets work out the constant risk aversion case. For some real number $c$, we have $r(w) = c$ for all $w$. In this case we can solve the differential equation \\[{u''}(w) = -cu'(w)\\] by integrating twice. We get $u(w) = -e^{-cw}/c$ upto scaling. This is a concave utility function which remains equivalent under shifts of wealth. So at any value of wealth, the risk premium must be the same. This is true from the theorem above since r is constant. 

*Example 3:* A famous example is when $wr(w) = \gamma$. Assuming $\gamma \neq 1, \gamma >0$, the solution to \\[w{u''}(w) = -\gamma u'(w)\\] is given by \\[u(w) = \dfrac{w^{(1-\gamma)}-1}{1-\gamma}.\\] This utility function is called constant relative risk aversion (CRRA) function. There is a way to justify the CRRA name but I will not explain it here. If you meet me on the street, you can ask me :)

<!-- Instead of choosing a gamble whose absolute payoff is small compared to the wealth of the agent, we may consider a situation where the agent is choosing a payoff that is a small fraction of his wealth. 

<div class="math-block">
<strong>Exercise (Relative risk aversion).</strong>  
Let $w>0$ be initial wealth, and let $Y$ be a random variable with $\mathbb{E}[Y]=0$ and $\mathbb{E}[Y^2]=\sigma_Y^2<\infty$. Consider the proportional gamble
\[
w(1+tY), \qquad t>0 \text{ small}.
\]
Define the fractional risk premium $\varphi(t)$ by the indifference condition
\[
u\!\big(w(1-\varphi(t))\big) \;=\; \mathbb{E}[u(w(1+tY))].
\]

1. Show that $\varphi(t)=O(t^2)$.  
2. By Taylor expanding both sides around $w$, prove that as $t\to 0$,
\[
\varphi(t) \;=\; \tfrac12\,R(w)\,\sigma_Y^2\,t^2 + o(t^2),
\qquad\text{where}\qquad
R(w):=w\,r(w)=-\,w\,\frac{u''(w)}{u'(w)}.
\]

Thus $R(w)$, the **coefficient of relative risk aversion**, governs the willingness to pay (as a fraction of wealth) to eliminate *proportional risks*.  
</div>

---
### Corollaries

1. *Constant relative risk aversion (CRRA).*  
If $r(w)=\gamma/w$ for some constant $\gamma>0$, solving the differential equation gives
\\[
u(w) = 
\begin{cases}
\dfrac{w^{1-\gamma}}{1-\gamma}, & \gamma\neq 1, \\
\log w, & \gamma=1,
\end{cases}
\\]
the familiar CRRA utilities used in macro and finance.

2. --> 


If utility is rescaled as $\tilde u = a u + b$ with $a>0$, then
\\[
-\,\frac{\tilde u''}{\tilde u'} = -\,\frac{u''}{u'},
\\]
so the Arrow–Pratt index is unchanged. The measure of risk aversion depends only on preferences, not units. This property ensures that the measure of risk aversion does not depend on arbitrary rescalings or shifts of utility, but only on the underlying preference structure. In other words, $r(w)$ captures a genuine feature of risk preferences rather than a mere artifact of normalization.   

We began with the everyday intuition of paying insurance premiums to reduce uncertainty. By formalizing this as a utility maximization problem, we derived the **risk premium** $\pi$ as the key measure of aversion to risk. For small gambles, the **Arrow–Pratt index** $r(w)$ precisely quantifies the willingness to pay per unit of variance.   

---

{% endcapture %}
{{ content | markdownify }}

{% bibliography --cited --file references %}

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