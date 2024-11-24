---
layout: post
date: 2024-10-10 11:59:00-0400
title: RMO Algebra Prep
description: Algebra problems from bmo.
tags:
  - Olympiad
  - algebra
  - inequality
  - fe
  - bmo
categories: Olympiad, solving
giscus_comments: true
---

> (BMO 2005) Find the minimum possible value of $x^2 + y^2$ given that x and y are real numbers with $x \neq 0$, satisfying \\[xy( x^2 − y^2 ) = x^2 + y^2.\\]

_Solution:_ Put $x=r\cos\theta$, $y=r\sin\theta$. We are supposed to minimize $r^2$ and the constraint reduces to \\[r^2 \sin 4\theta = 4.\\] So $r^2$ is minimized when $\sin 4\theta = 1.$ Thus the minimum value of $r^2$ is $4$.

---

> \[BMO 2008\] Find all real values of $x, y$ and $z$ such that  
> \\[(x+1)yz = 12\\] \\[(y+1)zx=4\\] \\[(z+1)xy = 4\\]

_Solution(Mrinal)._ We begin by subtracting (2) from (3), which
yields \\[x(y-z)=0.\\]
Clearly $x \neq 0$ as it would not satisfy the last two equations, and thus $y=z$. We proceed by subtracting (2) from (1), and adding (2) and (3), yielding \\[y(y-x)=2xy(y+1)=8.\\] Thus
$x = \frac{4}{y(y+1)}$. Substituting this into the above, we get

$$
\\
\begin{aligned}
    y\left(y-\dfrac{4}{y(y+1)}\right)&=8. \\
    y^3+y^2-8y-12&=0, \\
    (y+2)^2(y-3)&=0.
\end{aligned}
\\
$$

Thus, the required solution sets are $(x, y, z) = (2, -2, -2) \ \text{and} \ \left(\frac{1}{3}, 3, 3\right).$

---

> (BMO 1993) Let x,y,z be positive real numbers satisfying $\frac{1}{3} \leq xy+yz+zx \leq 3$ . Determine the range of values for xyz and x+y+z.

_Proof(Rishon,Abhhi,Srikanth):_
**We claim the range of $xyz$ is $(0,1]$.**
Let $\alpha > 0$ be a real. We choose $x=\alpha,y=z=\frac1{\alpha}$ then we see that $xy+yx+xz = 2+\frac1{\alpha^2}$ which satisfies the given inequality for $\alpha \geq 1$. Now \\[xyz = \frac1{\alpha}.\\] Note that for any real $r \in (0,1]$, $\alpha = \frac1{r}$ will give $xyz=r$. So we are done.

**We claim the range of $x+y+z$ is $[1,\infty)$.** By applying AM-GM to $x^2+y^2,y^2+z^2,x^2+z^2$ we see that \\[x^2+y^2 + z^2 \geq xy + yz + xz.\\]

This is equivalent to $(x+y+z)^2 \geq 3(xy+yz+xz) \geq 1$ . Since $x,y,z > 0$ we conclude $x+y+z \geq 1.$ Equality can be achieved for $x=y=z=\frac13,$ which is also satisfied by the given inequality (in the problem statement).

We will show that all the values above 1 will be achieved using _intermediate value theorem_ (which can be found at the end of this solution).

If we choose $x=\frac13 + r,y=\frac13,z=\frac13$, then we see that \\[xy+yx+xz = \frac{2r+1}3 .\\] The given inequality reduces to $0\leq r \leq 4.$ Thus we see that the range of $x+y+z = 1+r$ is $[1,5]$ for $0\leq r \leq 4.$

Let $\alpha > 0$ be a real. Next we take $x=\alpha,y=z=\frac1{\alpha}$ then we see that $xy+yx+xz = 2+\frac1{\alpha^2}$ which satisfies the given inequality for $\alpha \geq 1$. Now \\[x+y+z = \alpha + \frac{2}{\alpha} \geq 2\sqrt{2}.\\]
The last inequality is by AM-GM and equality is achieved at $\alpha = \sqrt{2}$. Now since $f(\alpha) = \alpha + \frac{2}{\alpha}$ is a continuous unbounded function, by IMVT its range is $[2\sqrt{2},\infty)$ .

Thus we conclude $[1,5] \cup [2\sqrt{2},\infty)=[1,\infty)$ is the range of $x+y+z$.

---

### Appendix to Problem 1:

<u>(Intermediate Value Theorem/IMVT)</u> Let $f:[a,b] \to \mathbb{R}$ be a continuous function. If $\lambda$ is between $f(a), f(b)$ then there is an $x \in (a,b)$ such that $f(x) = \lambda$.

We shall also use the fact that sum, difference, product and quotient (as long as denominator does not vanish) of continuous functions are continuous. Additionally, polynomials are continuous functions.

---

> (BMO 2004) Let S be a set of rational numbers with the following properties:
>
> 1.  $\frac12 \in S$
> 2.  If x ∈ S , then both $\frac1{x+1} \in S$ and $\frac{x}{x+1} \in S$.
>
> Prove that S contains all rational numbers in the interval 0<x<1 .

_Proof(Rishon):_ The proof is by strong induction on the denominator of a rational number between 0 and 1. The base case is $n=2$ and the only fraction with denominator 2 is $\frac12$. It is given that S contains this fraction.  
Suppose we have shown that all rational numbers, in their simplest form with denominator strictly less than $n$, are in $S$. We break the calculation into three cases:

<u>Case 1:</u> If $k < n/2$, then $k < n-k$. Now \\[\dfrac{k}{n-k}\in S \implies \dfrac{k}{n}=\dfrac{\frac{k}{n-k}}{\frac{k}{n-k}+1} \in S\\]
<u>Case 2:</u> If $k > n/2$, then $k > n-k$. Again we see \\[\dfrac{n-k}{k}\in S \implies \dfrac{k}{n}=\dfrac{1}{\frac{n-k}{k}+1} \in S.\\]
<u>Case 3:</u> If $k = n/2$, then \\[\dfrac{k}{n} = \dfrac12 \\] which is in $S$ by the hypothesis of the problem.
So we are done.

---

> (BMO R2 2019) Find all functions $f$ from the positive real numbers to the positive real numbers for which $f( x ) \leq f( y )$ whenever $x \leq y$ and \\[f( x^4 ) +f( x^2 ) +f( x ) +f( 1 ) = x^4 + x^2 +x+1.\\] for all $x>0$.

_Proof (Rishon, Lauren, Abhhi and Srikanth):_ Clearly $f(1)=1.$ If we define $g(x) = f(x) - x$, then we see $g(x^4)+g(x^2)+g(x)=0.$ But $x=y,x=y^2$ and subtract to get \\[g(y^8) = g(y)\\] for all real $y > 0$. Note that this means \\[\displaystyle g(x^{8^n}) =g(x)=g(x^{\frac1{8^n}})\\] for all $n$ and for all $x>0$.

Now we show that $g\equiv0$, by analysing two cases.

<u>Case 1:</u> For $x < 1$, since $g(1)=0$, and the non-decreasing nature of $f$ we get: \\[g(x) + x \leq g(1)+1 = 1\\] Now we note that $x^{\frac1{8^n}}<1$ since $x<1$. So \\[g(x) + x^{\frac1{8^n}} = g(x^{\frac1{8^n}}) + x^{\frac1{8^n}} \leq 1.\\]
Thus $g(x) \leq 1 - x^{\frac1{8^n}}$ for all $n$. By applying $lim_{n \to \infty}$ on both sides and noting $\lim_{n\to \infty} x^{\frac1{8^n}} = 1$ for $x>0$, we get \\[g(x) \leq 0.\\]If $x<1$, then $x^2,x^4 < 1$. So $g(x^4),g(x^2),g(x)\leq 0$. But $g(x^4)+g(x^2)+g(x)=0$ and thus each term is individually zero. So we conclude $g(x) = 0$ for $0 < x < 1$.

<u>Case 2:</u> For $x > 1$, since $g(1)=0$, \\[g(x) + x \geq 1\\] Now we note that $x^{\frac1{8^n}}>1$ since $x>1$. So \\[g(x) + x^{\frac1{8^n}} = g(x^{\frac1{8^n}}) + x^{\frac1{8^n}} \geq 1.\\] Thus $g(x) \geq 1 - x^{\frac1{8^n}}$ for all $n$. By applying $\displaystyle \lim_{n \to \infty}$ on both sides and noting $\displaystyle \lim_{n\to \infty} x^{\frac1{8^n}} = 1$ for $x>0$, we get \\[g(x) \geq 0.\\] If $x>1$, then $x^2,x^4 > 1$. So $g(x^4),g(x^2),g(x)\geq 0$. But $g(x^4)+g(x^2)+g(x)=0$ and thus each is individually zero. So we conclude $g(x)  = 0$ for $x >1$.

Thus we have showed that $g\equiv0$.

---

> (RMO 2017) Let $x, y, z$ be real numbers, each greater
> than 1. Prove that
> \\[\dfrac{x+1}{y+1} + \dfrac{y+1}{z+1} + \dfrac{z+1}{x+1} \leq \dfrac{x-1}{y-1} + \dfrac{y-1}{z-1} + \dfrac{z-1}{x-1}.\\]

_Proof(Mrinal)._ Let us assume that $x \geq y \geq z$. We are to show that
\\[\sum_{cyc} \left(\dfrac{x-1}{y-1}-\dfrac{x+1}{y+1}\right) = \sum_{cyc} \left( \dfrac{x-y}{y^2-1} \right) \geq 0.\\]
Begin by calling the latter quantity $G$. Since $x \geq y \geq z$, we
have \\[G=\dfrac{x-y}{y^2-1}+\dfrac{y-z}{z^2-1}+\dfrac{z-y+y-x}{x^2-1}.\\]
This is equivalent to
\\[G=(y-z)\left( \dfrac{1}{z^2-1}-\dfrac{1}{x^2-1}\right)+(x-y)\left( \dfrac{1}{y^2-1}-\dfrac{1}{x^2-1}\right).\\]
Since $x \geq y, y \geq z$ and $x \geq z$, each expression bounded by paranthesis is non-negative. So we conclude that $G \geq 0$, and we are done. A similar proof is needed for $x \geq z \geq y$ which we leave to the reader.

---

> (RMO 2017) Let $P(x)=x^2+\frac{1}{2}x+b$ and $Q(x)=x^2+cx+d$ be two polynomials with real coefficients such that $P(x)Q(x)=Q(P(x))$ for all real $x$. Find all the real roots of
> $P(Q(x))=0.$

_Claim:_ The only real roots are $-1$ and $\frac12$.

_Proof (Mrinal)._ The given condition is equivalent to
\\[\left(x^2+\dfrac{x}{2}+b\right)\left(x^2+cx+d \right)=\left( x^2+\dfrac{x}{2} +b\right)^2+c\left( x^2+\dfrac{x}{2}+b\right)+d.\\]
We now proceed by comparing coefficients of $x^3, x^2$ and constants of
both sides (comparing coeffient of $x$ is redundant).

1.  Comparing the coefficient of $x^3$ gives
    \\[c+\dfrac{1}{2}=1 \implies c=\dfrac{1}{2}.\\]

2.  Comparing the coefficient of $x^2$ gives
    \\[d+\dfrac{c}{2}+b=\dfrac{1}{4}+2b+c.\\]
    On substituting $c=\frac12$,
    we get \\[d=\dfrac{1}{2}+b.\\]

3.  Comparing constants, we get \\[bd=b^2+\dfrac{b}{2}+d.\\] Substituting
    $d=\frac12 + b$, we get $d=0, b=-\frac{1}{2}.$

We now set $P(Q(x))=0$ as follows.

$$
\\
\begin{aligned}
    \left( x^2+\dfrac{x}{2} \right)^2+\dfrac{1}{2}\left( x^2+\dfrac{x}{2} \right)-\dfrac{1}{2}&=0 \\
    4x^4+4x^3+3x^2+x-2&=0.
\end{aligned}
\\
$$

On inspection, we see that $(x+1)$ is a factor of the above. Performing long division yields
\\[4x^4+4x^3+3x^2+x-2=(x+1)(4x^3+3x-2).\\] Again, by inspection, we see
that $(2x-1)$ is a factor, giving us the final factorisation of
\\[4x^4+4x^3+3x^2+x-2=(x+1)(2x-1)(2x^2+x+2).\\]
Since the quadratic has no real roots, we conclude that the only real roots are $-1$ and
$\frac{1}{2}$.

---
