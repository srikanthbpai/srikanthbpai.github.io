---
layout: post
date: 2025-12-22 11:59:00-0400
title: Proving Binomial identities using Fourier transforms.
description: A quirky way to prove school binomial identities
tags: 
categories: random
giscus_comments: true
---
My undergraduate students are introduced to the Fourier theory when they learn ordinary differential equations. Let's quickly recall the leading actor of this post - binomial coefficients.

> Let $k$ be a whole number and $n$ be any complex number, then define $$\binom{n}{k} := \dfrac{n(n-1)(n-2)\cdots(n-k+1)}{k!}.$$

In this post, we will define binomial coefficients using Fourier theory and proving identities will reduce to fun integration problems. 

## Fourier Definition

If $n$ is a whole number, then the binomial coefficient is the number of different ways of choosing $k$ identical objects out of $n$ distinct objects. In a separate post I will introduce different ways of thinking about this notion. But here I want to talk about a **crazy** formula using complex numbers for whole numbers $n,k$:

> Let $k$ be a whole number and $n$ is any natural number, then define $$\binom{n}{k}=\dfrac1{2\pi}\displaystyle \int_0^{2\pi} (1+e^{i\theta})^n e^{-ik\theta}\,\, d\theta$$

The proof simply follows from binomial theorem. If you know Fourier transform theory, then we are simply saying that the Fourier coefficients $(1+e^{i\theta})^n$ are the binomial coefficients.

**OK, so what?** 
## Binomial identities

We know and love many binomial identities, but how do we prove them using the Fourier definition?

> **Identity 1:** $$\binom{n}{k} = \binom{n}{n-k}$$

*Proof:* We know that $$\binom{n}{k}=\dfrac1{2\pi}\displaystyle \int_0^{2\pi} (1+e^{i\theta})^n e^{-ik\theta}\,\, d\theta$$
Substitute $\theta=-\alpha$,  we get $$\begin{aligned} \binom{n}{k}=\dfrac1{2\pi}\displaystyle \int_0^{2\pi} (1+e^{i\theta})^n e^{-ik\theta}\,\, d\theta &= \dfrac1{2\pi}\displaystyle \int_0^{-2\pi} (1+e^{-i\alpha})^n e^{ik\alpha}\,\, (-d\alpha)\\ &= \dfrac1{2\pi}\displaystyle \int_0^{-2\pi} (1+e^{-i\alpha})^n e^{ik\alpha}\,\, (-d\alpha)\\ &\stackrel{a}{=} -\dfrac1{2\pi}\displaystyle \int_{2\pi}^{0} (1+e^{-i\alpha'+i2\pi })^n e^{ik(\alpha'-2\pi)}\,\, d\alpha'\\ &\stackrel{b}{=} -\dfrac1{2\pi}\displaystyle \int_{2\pi}^{0} (1+e^{-i\alpha'})^n e^{ik\alpha'}\,\, d\alpha'\\ &\stackrel{c}{=} +\dfrac1{2\pi}\displaystyle \int_{0}^{2\pi} (1+e^{-i\alpha'})^n e^{ik\alpha'}\,\, d\alpha'\\ &= \dfrac1{2\pi}\displaystyle \int_0^{2\pi} (1+e^{i\alpha})^n e^{-i(n-k)\alpha}\,\, d\theta\\ \\&=  \binom{n}{n-k} \hspace{4cm} \blacksquare \end{aligned} $$ Quick explanations of some steps:

(a) Substitution $\alpha' = 2\pi +\alpha$.

(b)$e^{\pm i 2 \pi}=1$ 

(c) $\displaystyle \int_b^a f \, dx = -\int_a^b f \, dx$  

> **Identity 2:** $$\binom{n}{k} = \binom{n-1}{k} + \binom{n-1}{k-1}$$

*Proof:* We know that $$\binom{n}{k}=\dfrac1{2\pi}\displaystyle \int_0^{2\pi} (1+e^{i\theta})^n e^{-ik\theta}\,\, d\theta$$
We will start with the right hand side and simplify it, $$\begin{aligned} \binom{n-1}{k} + \binom{n-1}{k-1}&=\dfrac1{2\pi}\displaystyle \int_0^{2\pi} (1+e^{i\theta})^{n-1} e^{-ik\theta}\,\, d\theta + \dfrac1{2\pi}\displaystyle \int_0^{2\pi} (1+e^{i\theta})^{n-1} e^{-i(k-1)\theta}\,\, d\theta \\ &= \dfrac1{2\pi}\displaystyle \int_0^{2\pi} (1+e^{i\theta})^{n-1}(e^{-ik\theta}+e^{-i(k-1)\theta})\,\, d\theta\\ &=\dfrac1{2\pi}\displaystyle \int_0^{2\pi} (1+e^{i\theta})^{n-1} e^{-ik\theta}(1+e^{i\theta})\,\, d\theta\\ &= \dfrac1{2\pi}\displaystyle \int_0^{2\pi} (1+e^{i\theta})^n e^{-ik\theta}\,\, d\theta\\ \\&=  \binom{n}{k} \hspace{4cm} \blacksquare \end{aligned} $$
 
I am a professor, so I cant resist giving an exercise to the reader: 
