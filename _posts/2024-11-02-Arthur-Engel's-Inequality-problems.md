---
layout: post
date: 2024-11-02 11:59:00-0400
title: " Inequalities from Engel's Olympiad book."
description: Inequality problems.
tags:
  - algebra
  - inequality
categories: Olympiad, solving
giscus_comments: true
---

The following tips are from Arthur Engel's book:

![Engel's tips](/assets/img/Screenshot 2024-11-02 at 10.14.49 AM.png){: width="550" : style="display:block; margin-left:auto; margin-right:auto"}

> Prove that for any triangle with sides $a,b,c$ and area $A$, $$a^2 + b^2 + c^2 \geq 4\sqrt{3}A.$$

_Proof:_ We will write down the steps and explain it below: \\[a^2 + b^2 +c^2 \geq ab+bc+ca = \dfrac{2A}{\sin C}+\dfrac{2A}{\sin A}+\dfrac{2A}{\sin B} \geq \dfrac{18A}{\sin A + \sin B + \sin C} \geq \dfrac{36A}{3\sqrt{3}} = 4\sqrt{3}A.\\]
Equality iff $a=b=c$.

The explanations for each step

1. First inequality follows from applying AM-GM to the sets $\\{a^2,b^2\\},\\{b^2,c^2\\},\\{c^2,a^2\\}$ and adding the inequalities.

2. The first equality follows from the area formula in terms of sines.

3. The second inequality follows from AM-HM.

4. The third inequality follows from Jensen's inequality applied to sin A, sin B and sin C noting that sin is concave in $[0,\pi]$ and $A+B+C=\pi$.

Remark: There are five other proofs of this fact in Engel's problem solving strategies.

---

> In triangle ABC, the angle bisectors $AD, BE, CF$ meet at $I$. Show that \\[\dfrac14 < \dfrac{IA}{AD}\cdot \dfrac{IB}{BE} \cdot \dfrac{IC}{CF} \leq \dfrac{8}{27}.\\]

_Proof:_ By angle bisector theorem, we see that \\[\dfrac{IA}{ID} = \dfrac{b+c}{a}\\] and thus \\[\dfrac{AI}{AD} = \dfrac{b+c}{a+b+c}.\\] So we have to show \\[\dfrac14 < \dfrac{(b+c)(a+b)(c+a)}{(a+b+c)^3}\leq \dfrac{8}{27}.\\]
The upper bound follows from applying AM-GM to $a+b,b+c,c+a$.

For the lower bound, define
$x = a+b-c, y=b+c-a, z=c+a-b$ and note that $2a = x+z, 2b=x+y, 2c=y+z.$
By triangle inequality, we note that $x,y,z>0.$ Since the inequality is homogenous, we will normalise and impose the constraint $a+b+c=1$ which implies $x+y+z=1$.

Thus we have
\\[ \dfrac{(b+c)(a+b)(c+a)}{(a+b+c)^3} = (1-a)(1-b)(1-c) = \dfrac{(2-x-z)(2-x-y)(2-y-z)}8\\]

\\[= \dfrac{(1+y)(1+z)(1+x)}{8} =\dfrac{(1+x+y+z+ xy+yz+zx+xyz)}{8} > \dfrac28 = \dfrac14.\\]

---

Here are some practice problems from Arthur Engel's book:

1. For positive reals $a,b,c,d$ show that \\[\sqrt{ab} + \sqrt{cd} \leq \sqrt{(a+d)(b+c)}.\\]

2. If $a,b,c >0$ then prove that at least one of the expression $a(1-b),b(1-c),c(1-a)$ is less than or equal to $\frac14$.

3. Prove the inequality \\[(a^3-a+2)^2 > 4a^2 (a^2+1)(a-2).\\]
