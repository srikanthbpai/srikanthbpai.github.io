---
layout: post
date: 2026-02-19 14:30:00-0400
title: Trigonometry from Differential Equations
description: Deriving all of trigonometry, π, and the circumference formula from a single ODE using calculus alone.
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

Our education system provides a multitude of choices for a young eager student. One of those choices, I have learnt recently, is called *Applied Mathematics*. An inspection of the contents shows much of geometry—trigonometry, coordinates, vectors, complex numbers—is removed, but Calculus remains. I say that this decision is very prudent.

While students of applied mathematics lament that they have not learnt trigonometry in school, they do not know that Indian school trigonometry is mostly mindless algebra and very boring. However, the basic ideas surrounding its geometric meaning are very important for Fourier series and any student of science who wants to model periodic phenomena—especially macroeconomists passionate about understanding the business cycle.

I have written this note for my students who have taken applied mathematics. These students are extremely lucky, since learning trigonometric functions using differential equations is an absolute delight. When I was young, I was spoiled by the geometric route, and the differential equation route was confusing.

This note states and proves all the basic trigonometric relations starting from a single differential equation and the theorems of calculus. Secondly, it defines π from first principles using an integral and then works out the approximation 3.14. We also end up *proving* that this number π is the ratio of the circumference to the diameter of *any* circle in the world!

One wonders why I stop at 3.14—why not compute more digits? Well, it is futile to uncover more decimals since it will never end. Basically, π is irrational. Alas, proving its irrationality will take us far afield, but there is a gorgeous proof by Niven that you can look up.

I claim no novelty for this plan of attack. A whiff of these ideas is given in Simmons' text on differential equations, and I suspect 18th century masters were well aware of this route. However, I have filled in the details and directed this exposition. So sit tight and enjoy the ride.

---

## The Fundamental Differential Equation

Consider the second-order linear differential equation
$$y'' + y = 0.$$

This is one of the simplest nontrivial ODEs in mathematics. By the Picard existence-uniqueness theorem, given any initial conditions $y(0) = a$ and $y'(0) = b$, there exists a unique solution defined for all $x \in \mathbb{R}$.

From this single fact—and nothing else—we construct all of trigonometry.

**Definition.** Let $S(x)$ denote the unique solution to the ODE $y'' + y = 0$ satisfying
$$S(0) = 0, \quad S'(0) = 1.$$
We call $S$ the *sine function*. Let $C(x) := S'(x)$ and call it the *cosine function*.

**Key observation.** $C(x)$ also satisfies the same ODE with initial conditions $C(0) = 1$ and $C'(0) = 0$. We have the fundamental derivative relations:
$$S'(x) = C(x), \quad C'(x) = -S(x).$$

---

## The Addition Formulas

**Theorem (Addition for Sine).** For all $x, u \in \mathbb{R}$,
$$S(x+u) = S(x)C(u) + C(x)S(u).$$

*Proof idea.* Fix $u$ and consider $y(x) := S(x+u)$. It satisfies the ODE with initial conditions $y(0) = S(u)$, $y'(0) = C(u)$. Separately, define $z(x) := S(x)C(u) + C(x)S(u)$. We can verify that $z$ satisfies the same ODE and initial conditions. By uniqueness, $y = z$.

**Theorem (Addition for Cosine).** For all $x, u \in \mathbb{R}$,
$$C(x+u) = C(x)C(u) - S(x)S(u).$$

*Proof.* Differentiate the sine addition formula with respect to $x$.

**Double Angle Formulas.** Setting $u = x$ in the addition formulas gives:
$$S(2x) = 2S(x)C(x), \quad C(2x) = C(x)^2 - S(x)^2.$$

---

## The Pythagorean Identity

**Theorem.** For all $x \in \mathbb{R}$,
$$S(x)^2 + C(x)^2 = 1.$$

*Proof.* Multiply the ODE $S''(x) = -S(x)$ by $S(x)$ and $C'(x) = -S(x)$ by $C(x)$. Adding yields
$$S(x)\,S'(x) + C(x)\,C'(x) = 0,$$
which means $\frac{d}{dx}[S(x)^2 + C(x)^2] = 0$. Thus $S(x)^2 + C(x)^2$ is constant. At $x = 0$: $S(0)^2 + C(0)^2 = 0 + 1 = 1$.

This is where the geometry emerges: not from assumptions, but from the dynamics of the differential equation.

---

## Defining π and the Boundary Values

We define an auxiliary function
$$g(u) := \int_0^u \frac{dt}{\sqrt{1-t^2}} \quad \text{for } u \in (-1, 1).$$

This integral converges (though the integrand is unbounded at $u = 1$). We have $g'(u) = \frac{1}{\sqrt{1-u^2}} > 0$, so $g$ is strictly increasing.

**Key Lemma.** For all $x$ where $|S(x)| < 1$, we have $g(S(x)) = x$. This follows by differentiating:
$$\frac{d}{dx}g(S(x)) = g'(S(x)) \cdot S'(x) = \frac{1}{\sqrt{1-S(x)^2}} \cdot \sqrt{1-S(x)^2} = 1.$$

**Definition.** Define
$$\frac{\pi}{2} := \int_0^1 \frac{dt}{\sqrt{1-t^2}}.$$

**Theorem (Special Values).** We have $S(\pi/2) = 1$, $S(-\pi/2) = -1$, and $C(\pi/2) = 0$.

*Proof sketch.* The key lemma shows that $g(S(x)) = x$ for $|S(x)| < 1$. Applying at $x = \pi/2$: $g(S(\pi/2)) = \pi/2$. But by definition, $g(1) = \pi/2$. Since $g$ is strictly increasing (hence one-to-one), $S(\pi/2) = 1$. The Pythagorean identity then gives $C(\pi/2)^2 = 0$.

---

## Computing π: The Dalzell Integral

To compute π rigorously, we use an elegant integral inequality discovered by Dalzell (1944):

**Lemma (Arctan Integral).** We have
$$\int_0^1 \frac{dx}{1+x^2} = \frac{\pi}{4}.$$

*Proof.* Substitute $x = \frac{S(u)}{C(u)}$ for $u \in [0, \pi/4]$. Then $\frac{dx}{du} = \frac{1}{C(u)^2}$ and $1 + x^2 = \frac{1}{C(u)^2}$, so the integral becomes $\int_0^{\pi/4} du = \pi/4$.

**Lemma (Dalzell Integral).** We have
$$\int_0^1 \frac{x^4(1-x)^4}{1+x^2}\,dx = \frac{22}{7} - \pi.$$

*Proof.* Expand $x^4(1-x)^4 = x^4 - 4x^5 + 6x^6 - 4x^7 + x^8$. Divide by $1+x^2$ using polynomial long division:
$$\frac{x^4(1-x)^4}{1+x^2} = x^6 - 4x^5 + 5x^4 - 4x^2 + 4 - \frac{4}{1+x^2}.$$

Integrate term by term. The integral of the polynomial part evaluates to $\frac{1}{7} - \frac{2}{3} + 1 - \frac{4}{3} + 4 = \frac{22}{7}$. The integral of $-\frac{4}{1+x^2}$ is $-4 \cdot \frac{\pi}{4} = -\pi$ (by the arctan lemma). Thus the integral equals $\frac{22}{7} - \pi$.

**Theorem (Bounds on π).** The integral $\int_0^1 \frac{x^4(1-x)^4}{1+x^2}\,dx$ is strictly positive (since the integrand is nonnegative and positive on $(0,1)$). Therefore,
$$\pi < \frac{22}{7} \approx 3.142857.$$

Since $\frac{22}{7}$ rounds to $3.14$ at two decimal places, we have rigorously proven:

$$\boxed{\pi \approx 3.14}$$

---

## Periodicity and Angle Formulas

**Theorem (Periodicity).** Both $S$ and $C$ have period $2\pi$:
$$S(x + 2\pi) = S(x), \quad C(x + 2\pi) = C(x).$$

**Corollary (Supplementary Angles).** For all $x$,
$$S(\pi - x) = S(x), \quad C(\pi - x) = -C(x).$$

**Corollary (Complementary Angles).** For all $x$,
$$S(\pi/2 - x) = C(x), \quad C(\pi/2 - x) = S(x).$$

These emerge directly from the addition formulas and the special values.

---

## The Unit Circle Parametrization

**Theorem.** The map $\Phi: \mathbb{R} \to \mathbb{R}^2$ defined by
$$\Phi(x) := (C(x), S(x))$$
is a continuous bijection from $[0, 2\pi)$ onto the unit circle $\{(a,b) : a^2 + b^2 = 1\}$, periodic with period $2\pi$.

The Pythagorean identity ensures every point lies on the unit circle. Monotonicity and continuity ensure the parametrization covers the entire circle exactly once per period. The parameter $x$ is the arc length measured counterclockwise from $(1, 0)$.

---

## Arc Length and Circumference

**Theorem.** The velocity vector of the curve $(C(t), S(t))$ is $(-S(t), C(t))$, which has magnitude
$$\sqrt{S(t)^2 + C(t)^2} = 1.$$

**Corollary (Circumference of Unit Circle).** The circumference is
$$\int_0^{2\pi} 1\,dt = 2\pi.$$

**Theorem (Circumference of Any Circle).** For a circle of radius $r > 0$, the circumference is
$$\boxed{2\pi r}.$$

*Proof.* The circle is parametrized as $(rC(t), rS(t))$ for $t \in [0, 2\pi)$. The speed is $r \cdot 1 = r$, so the arc length is $\int_0^{2\pi} r\,dt = 2\pi r$.

---

## Conclusion

We have reconstructed all of trigonometry from a single differential equation and the theorems of calculus. We began with $y'' + y = 0$, defined $S$ and $C$ by their initial conditions, proved all the major identities (addition formulas, Pythagorean theorem, periodicity), defined π through an integral, and rigorously established that π is the ratio of circumference to diameter for any circle in the world.

The geometry did not come first. It emerged from the analysis. This approach is not only rigorous and beautiful—it is also the path that any student of applied mathematics should take. No diagrams, no appeal to intuition, no mindless memorization of angle rules. Just differential equations, calculus, and the inexorable march of logic.

As the 18th century mathematicians knew, and as Simmons has shown, this is the deepest way to understand trigonometry.

---

{% endcapture %}
{{ content | markdownify }}
