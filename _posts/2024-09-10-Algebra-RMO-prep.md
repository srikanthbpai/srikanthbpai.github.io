---
layout: post
date: 2024-09-10 11:59:00-0400
title: RMO Algebra Prep
description: Algebra problems from bmo.
tags:
  - Olympiad
  - algebra
  - inequality
  - fe
  - bmo
categories: Cool math, Olympiad
giscus_comments: true
---

 >(BMO 1993) Let x,y,z be positive real numbers satisfying $\frac{1}{3} \leq xy+yz+zx \leq 3$ . Determine the range of values for
    1. xyz .
    2. x+y+z .

*Proof(Rishon,Abhhi,Srikanth):*
**We claim the range of $xyz$ is $(0,1]$.** 
Let $\alpha > 0$ be a real. Next we take $x=\alpha,y=z=\frac1{\alpha}$ then we see that $xy+yx+xz = 2+\frac1{\alpha^2}$ which satisfies the given inequality for $\alpha \geq 1$. Now $$xyz = \frac1{\alpha}.$$Note that for any real $r \in (0,1]$, $\alpha = \frac1{r}$ will give $xyz=r$. So we are done.

**We claim the range of $x+y+z$ is $[1,\infty)$.** By applying AM-GM to $x^2+y^2,y^2+z^2,x^2+z^2$ we see that $$x^2+y^2 + z^2 \geq xy + yz + xz.$$This is equivalent to $(x+y+z)^2 \geq 3(xy+yz+xz) \geq 1$ . Since $x,y,z > 0$ we conclude $x+y+z \geq 1.$  Equality can be achieved for $x=y=z=\frac13,$ which is also satisfied by the given inequality (in the problem statement). 

We will show that all the values above 1 will be achieved using intermediate value theorem:
(Intermediate Value Theorem) Let $f:[a,b] \to \mathbb{R}$ be a continuous function. If $\lambda$  is between $f(a), f(b)$ then there is an $x \in (a,b)$ such that $f(x) = \lambda$.
We shall also use the fact that sum, difference, product and quotient (as long as denominator does not vanish) of continuous functions are continuous.

If we choose $x=\frac13 + r,y=\frac13,z=\frac13$, then we see that $xy+yx+xz = \frac{2r+1}3$ . The given inequality reduces to $0\leq r \leq 4.$ Thus we see that the range of $x+y+z = 1+r$ is $[1,5]$ for $0\leq r \leq 4.$

Let $\alpha > 0$ be a real. Next we take $x=\alpha,y=z=\frac1{\alpha}$ then we see that $xy+yx+xz = 2+\frac1{\alpha^2}$ which satisfies the given inequality for $\alpha \geq 1$. Now $$x+y+z = \alpha + \frac{2}{\alpha} \geq 2\sqrt{2}.$$
The last inequality is by AM-GM. Now since $f(\alpha) = \alpha + \frac{2}{\alpha}$ is a continuous unbounded function, by IMVT its range is $[2\sqrt{2},\infty)$ . 

Thus we conclude $[1,5] \cup [2\sqrt{2},\infty)=[1,\infty)$ is the range of $x+y+z$. 

---
>(BMO 2004) Let S be a set of rational numbers with the following properties:
   1. $\frac12 \in S$
>    2. If x ∈ S , then both $\frac1{x+1} \in S$ and $\frac{x}{x+1} \in S$.
 Prove that S contains all rational numbers in the interval 0<x<1 .

*Proof(Rishon):* The proof is by strong induction on the denominator of a rational number between 0 and 1. The base case is $n=2$ and the only fraction with denominator 2 is $\frac12$. It is given that S contains this fraction.  
Suppose we have shown that all rational numbers, in their simplest form with denominator strictly less than $n$, are in $S$. We break the calculation into two cases:
**Case 1:** If $k < n/2$, then $k < n-k$. Now $$\dfrac{k}{n-k}\in S \implies \dfrac{k}{n}=\dfrac{\frac{k}{n-k}}{\frac{k}{n-k}+1} \in S$$
**Case 2:** If $k \ge n/2$, then $k \ge n-k$. Again we see $$\dfrac{n-k}{k}\in S \implies \dfrac{k}{n}=\dfrac{1}{\frac{n-k}{k}+1} \in S.$$ So we are done.

---
>(BMO R2 2019) Find all functions $f$ from the positive real numbers to the positive real numbers for which $f( x ) \leq f( y )$  whenever $x \leq y$ and $$f( x^4 ) +f( x^2 ) +f( x ) +f( 1 ) = x^4 + x^2 +x+1.$$ for all $x>0$.

*Proof (Rishon, Lauren, Abhhi and Srikanth):* Clearly $f(1)=1.$ If we define $g(x) = f(x) - x$, then we see  $g(x^4)+g(x^2)+g(x)=0.$ But $x=y,x=y^2$ and subtract to get $$g(y^8) = g(y)$$ for all $y$. Note that this means $$\displaystyle g(x^{2^n}) =g(x)=g(x^{\frac1{2^n}})$$ for all $n$.
Now we show that $g(x)=0$ for all $x$ by analysing two cases.
**Case 1:** For $x < 1$, since $g(1)=0$, and the non-decreasing nature of $f$ we get:$$g(x) + x \leq g(1)+1 = 1$$ Now we note that $x^{\frac1{2^n}}<1$ since $x<1$. So $$g(x) + x^{\frac1{2^n}} = g(x^{\frac1{2^n}}) + x^{\frac1{2^n}} \leq 1.$$Thus $g(x) \leq 1 - x^{\frac1{2^n}}$  for all $n$. By applying $lim_{n \to \infty}$ on both sides and noting $\lim_{n\to \infty} x^{\frac1{2^n}} = 1$ for $x>0$, we get $$g(x) \leq 0.$$If $x<1$, then $x^2,x^4 < 1$. So $g(x^4),g(x^2),g(x)\leq 0$. But $g(x^4)+g(x^2)+g(x)=0$  and thus each is individually zero. So we conclude $g(x)  = 0$ for $0 < x < 1$.
**Case 2:** For $x > 1$, since $g(1)=0$, $$g(x) + x \geq 1$$ Now we note that $x^{\frac1{2^n}}>1$ since $x>1$. So $$g(x) + x^{\frac1{2^n}} = g(x^{\frac1{2^n}}) + x^{\frac1{2^n}} \geq 1.$$Thus $g(x) \geq 1 - x^{\frac1{2^n}}$  for all $n$. By applying $\lim_{n \to \infty}$ on both sides and noting $\lim_{n\to \infty} x^{\frac1{2^n}} = 1$ for $x>0$, we get $$g(x) \geq 0.$$If $x>1$, then $x^2,x^4 > 1$. So $g(x^4),g(x^2),g(x)\geq 0$. But $g(x^4)+g(x^2)+g(x)=0$  and thus each is individually zero. So we conclude $g(x)  = 0$ for $x >1$.
Thus we have showed that $g(x)=0$ for all positive real $x$.

---
