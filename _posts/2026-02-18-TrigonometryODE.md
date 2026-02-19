---
layout: post
date: 2026-02-19 14:30:00-0400
title: Trigonometry from Differential Equations
description: Deriving all of trigonometry, π, and the circumference formula from a single
  ODE using calculus alone.
tags:
  - trigonometry
  - differential-equations
  - π
  - calculus
  - pedagogy
related_posts: true
giscus_comments: true
display_categories:
  - teaching
  - mathematics
categories: "teaching mathematics"
related_publications: false
---

{% capture content %}

Our education system provides a multitude of choices for a young eager student. One of those choices, I have learnt recently, is called _Applied Mathematics_. An inspection of the contents shows much of geometry—trigonometry, coordinates, vectors, complex numbers—is removed, but Calculus remains.

While students of applied mathematics lament that they have not learnt trigonometry in school, they do not know that Indian school trigonometry is mostly mindless algebra and very boring. However, the basic ideas surrounding its geometric meaning are very important for Fourier series and any student of science who wants to model periodic phenomena cannot escape its allure. This is especially true for macroeconomists who are passionate about understanding business cycles.

Applied mathematics students should count themselves lucky, since learning trigonometric functions using differential equations is an absolute delight. When I was young, I was spoiled by the geometric route, and the differential equation route became confusing.

This note states and proves all the basic trigonometric relations starting from a single differential equation and the theorems of calculus. Secondly, it defines π from first principles using an integral and then works out the approximation 3.14. We also end up _proving_ that this number π is the ratio of the circumference to the diameter of _any_ circle in the world!

One wonders why I stop at 3.14—why not compute more digits? Well, it is futile to uncover more decimals since it will never end. Basically, π is irrational. Alas, proving its irrationality will take us far afield, but there is a gorgeous proof by Niven that you can look up.

I claim no novelty for this plan of attack. A whiff of these ideas is given in Simmons' text on differential equations, and I suspect 18th century masters were well aware of this route. There is a small turn that will lead you into the serene wilderness of elliptic integrals and the jungles of holomorphic differentials on complex algebraic varieties. I will explore these ideas in a separate post. Here, I have filled in the details and directed this exposition. So sit tight and enjoy the ride.

---

## The Fundamental Differential Equation

Consider the second-order linear differential equation $y'' + y = 0.$

This is one of the simplest nontrivial ODEs in mathematics. By the Picard
existence-uniqueness theorem, given any initial conditions $y(0) = a$ and
$y'(0) = b$, there exists a unique solution defined for all $x \in \mathbb{R}$.

From this single fact—and nothing else—we construct all of trigonometry.

<div class="math-block">
<strong>Definition (Sine and Cosine).</strong> Let $S(x)$ denote the unique
solution to the ODE $y'' + y = 0$ satisfying
\[
S(0) = 0, \quad S'(0) = 1.
\]
We call $S$ the <em>sine function</em>. Let $C(x) := S'(x)$ and call it the
<em>cosine function</em>.
</div>

**Key observation.** $C(x)$ also satisfies the same ODE with initial conditions
$C(0) = 1$ and $C'(0) = 0$. We have the fundamental derivative relations:

$S'(x) = C(x), \quad C'(x) = -S(x).$

---

## The Addition Formulas

<div class="math-block">
<strong>Theorem (Addition for Sine).</strong> For all $x, u \in \mathbb{R}$,
\[
S(x+u) = S(x)C(u) + C(x)S(u).
\]
</div>

_Proof idea._ Fix $u$ and consider $y(x) := S(x+u)$. It satisfies the ODE with
initial conditions $y(0) = S(u)$, $y'(0) = C(u)$. Separately, define
$z(x) := S(x)C(u) + C(x)S(u)$. We can verify that $z$ satisfies the same ODE
and initial conditions. By uniqueness, $y = z$.

<div class="math-block">
<strong>Theorem (Addition for Cosine).</strong> For all $x, u \in \mathbb{R}$,
\[
C(x+u) = C(x)C(u) - S(x)S(u).
\]
</div>

_Proof._ Differentiate the sine addition formula with respect to $x$.

<div class="math-block">
<strong>Double Angle Formulas.</strong> Setting $u = x$ in the addition formulas
gives:
\[
S(2x) = 2S(x)C(x), \quad C(2x) = C(x)^2 - S(x)^2.
\]
</div>

---

## The Pythagorean Identity

<div class="math-block">
<strong>Theorem (Pythagorean Identity).</strong> For all $x \in \mathbb{R}$,
\[
S(x)^2 + C(x)^2 = 1.
\]
</div>

<div class="math-block proof">
<strong>Proof.</strong> Multiply the ODE $S''(x) = -S(x)$ by $S(x)$ and
$C'(x) = -S(x)$ by $C(x)$. Adding yields
\[
S(x)\,S'(x) + C(x)\,C'(x) = 0,
\]
which means $\frac{d}{dx}[S(x)^2 + C(x)^2] = 0$. Thus $S(x)^2 + C(x)^2$ is
constant. At $x = 0$: $S(0)^2 + C(0)^2 = 0 + 1 = 1$.∎
</div>
Note that we have found another differential equation, albeit a non-linear one.

---

## Defining π and the Boundary Values

We define an auxiliary function

$g(u) := \displaystyle \int_0^u \dfrac{dt}{\sqrt{1-t^2}} \quad \text{for } u \in (-1, 1).$

This integral converges (though the integrand is unbounded at $u = 1$). We have
$g'(u) = \frac{1}{\sqrt{1-u^2}} > 0$, so $g$ is strictly increasing.

<div class="math-block">
<strong>Key Lemma.</strong> For all $x$ where $|S(x)| < 1$, we have
$g(S(x)) = x$. This follows by differentiating:
\[
\frac{d}{dx}g(S(x)) = g'(S(x)) \cdot S'(x) = \frac{1}{\sqrt{1-S(x)^2}} \cdot
\sqrt{1-S(x)^2} = 1.
\]
</div>

<div class="math-block">
<strong>Definition (π).</strong> Define
\[
\frac{\pi}{2} := \int_0^1 \frac{dt}{\sqrt{1-t^2}}.
\]
</div>

<div class="math-block">
<strong>Theorem (Special Values).</strong> We have $S(\pi/2) = 1$,
$S(-\pi/2) = -1$, and $C(\pi/2) = 0$.
</div>

_Proof sketch._ The key lemma shows that $g(S(x)) = x$ for $|S(x)| < 1$.
Applying at $x = \pi/2$: $g(S(\pi/2)) = \pi/2$. But by definition,
$g(1) = \pi/2$. Since $g$ is strictly increasing (hence one-to-one),
$S(\pi/2) = 1$. The Pythagorean identity then gives $C(\pi/2)^2 = 0$.

---

## Computing π: The Dalzell Integral

To compute π rigorously, we use an elegant integral inequality discovered by
Dalzell (1944):

<div class="math-block">
<strong>Lemma (Arctan Integral).</strong> We have
\[
\int_0^1 \frac{dx}{1+x^2} = \frac{\pi}{4}.
\]
</div>

<div class="math-block proof">
<strong>Proof.</strong> Substitute $x = \frac{S(u)}{C(u)}$ for $u \in [0, \pi/4]$.
Then $\frac{dx}{du} = \frac{1}{C(u)^2}$ and $1 + x^2 = \frac{1}{C(u)^2}$, so the
integral becomes $\int_0^{\pi/4} du = \pi/4$.∎
</div>

<div class="math-block">
<strong>Lemma (Dalzell Integral).</strong> We have
\[
\int_0^1 \frac{x^4(1-x)^4}{1+x^2}\,dx = \frac{22}{7} - \pi.
\]
</div>

<div class="math-block proof">
<strong>Proof.</strong> Expand $x^4(1-x)^4 = x^4 - 4x^5 + 6x^6 - 4x^7 + x^8$.
Divide by $1+x^2$ using polynomial long division:
\[
\frac{x^4(1-x)^4}{1+x^2} = x^6 - 4x^5 + 5x^4 - 4x^2 + 4 - \frac{4}{1+x^2}.
\]

Integrate term by term. The integral of the polynomial part evaluates to
$\frac{1}{7} - \frac{2}{3} + 1 - \frac{4}{3} + 4 = \frac{22}{7}$. The integral of
$-\frac{4}{1+x^2}$ is $-4 \cdot \frac{\pi}{4} = -\pi$ (by the arctan lemma). Thus
the integral equals $\frac{22}{7} - \pi$.∎

</div>

<div class="math-block">
<strong>Proposition (Bounds on the Integral).</strong> The integral 
$I := \int_0^1 \frac{x^4(1-x)^4}{1+x^2}\,dx$ satisfies
\[
\frac{1}{1260} < I < \frac{1}{630}.
\]
</div>

<div class="math-block proof">
<strong>Proof.</strong> The integrand is continuous and nonnegative on $[0, 1]$.
For a lower bound, we replace the denominator $1 + x^2$ with the larger value
$2$ (achieved at $x = 1$):
\[
I > \int_0^1 \frac{x^4(1-x)^4}{2} \, dx = \frac{1}{2} \int_0^1 x^4(1-x)^4 \, dx.
\]
The integral $\int_0^1 x^4(1-x)^4 \, dx$ can be computed using the beta
function. With exponents $a = 5, b = 5$:
\[
\int_0^1 x^4(1-x)^4 \, dx = \frac{\Gamma(5)\Gamma(5)}{\Gamma(10)} = \frac{4! \cdot
4!}{9!} = \frac{576}{362880} = \frac{1}{630}.
\]
Thus $I > \frac{1}{1260}$.

For an upper bound, we replace the denominator with the smaller value $1$
(achieved at $x = 0$):
\[
I < \int_0^1 x^4(1-x)^4 \, dx = \frac{1}{630}.
\]

</div>
<div class="math-block">
<strong>Theorem (Rigorous Bounds on π).</strong> From Lemma (Dalzell Integral) 
and the Proposition above, we have
\[
\frac{22}{7} - \frac{1}{630} < \pi < \frac{22}{7} - \frac{1}{1260}.
\]
In decimal form,
\[
3.1412698 < \pi < 3.1420635.
\]
Since $\frac{22}{7}$ rounds to $3.14$ at two decimal places, we have rigorously 
proven:
\[
\boxed{\pi \approx 3.14}
\]
</div>

---

## Periodicity and Angle Formulas

<div class="math-block">
<strong>Theorem (Periodicity).</strong> Both $S$ and $C$ have period $2\pi$:
\[
S(x + 2\pi) = S(x), \quad C(x + 2\pi) = C(x).
\]
</div>

<div class="math-block">
<strong>Corollary (Supplementary Angles).</strong> For all $x$,
\[
S(\pi - x) = S(x), \quad C(\pi - x) = -C(x).
\]
</div>

<div class="math-block">
<strong>Corollary (Complementary Angles).</strong> For all $x$,
\[
S(\pi/2 - x) = C(x), \quad C(\pi/2 - x) = S(x).
\]
</div>

These emerge directly from the addition formulas and the special values.

---

## The Unit Circle Parametrization

<div class="math-block">
<strong>Theorem (Unit Circle).</strong> The map $\Phi: \mathbb{R} \to
\mathbb{R}^2$ defined by
\[
\Phi(x) := (C(x), S(x))
\]
is a continuous bijection from $[0, 2\pi)$ onto the unit circle
$\{(a,b) : a^2 + b^2 = 1\}$, periodic with period $2\pi$.
</div>

The Pythagorean identity ensures every point lies on the unit circle.
Monotonicity and continuity ensure the parametrization covers the entire circle
exactly once per period. The parameter $x$ is the arc length measured
counterclockwise from $(1, 0)$.

---

## Arc Length and Circumference

<div class="math-block">
<strong>Theorem (Arc Length).</strong> The velocity vector of the curve
$(C(t), S(t))$ is $(-S(t), C(t))$, which has magnitude
\[
\sqrt{S(t)^2 + C(t)^2} = 1.
\]
</div>

<div class="math-block">
<strong>Corollary (Circumference of Unit Circle).</strong> The circumference is
\[
\int_0^{2\pi} 1\,dt = 2\pi.
\]
</div>

<div class="math-block">
<strong>Theorem (Circumference of Any Circle).</strong> For a circle of radius
$r > 0$, the circumference is
\[
\boxed{2\pi r}.
\]
</div>

<div class="math-block proof">
<strong>Proof.</strong> The circle is parametrized as $(rC(t), rS(t))$ for
$t \in [0, 2\pi)$. The speed is $r \cdot 1 = r$, so the arc length is
$\int_0^{2\pi} r\,dt = 2\pi r$.∎
</div>

---

## Conclusion

We have reconstructed all of trigonometry from a single differential equation
and the theorems of calculus. We began with $y'' + y = 0$, defined $S$ and $C$
by their initial conditions, proved all the major identities (addition formulas,
Pythagorean theorem, periodicity), defined π through an integral, and rigorously
established that π is the ratio of circumference to diameter for any circle in
the world.

The geometry did not come first. It emerged from the analysis. This approach is
not only rigorous and beautiful—it is also the path that any student of applied
mathematics should take. No diagrams, no appeal to intuition, no mindless
memorization of angle rules. Just differential equations, calculus, and the
inexorable march of logic.

As the 18th century mathematicians knew, and as Simmons has shown, this is the
deepest way to understand trigonometry.

---

{% endcapture %}
{{ content | markdownify }}
