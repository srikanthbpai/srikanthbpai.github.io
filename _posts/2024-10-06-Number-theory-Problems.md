---
layout: post
date: 2024-10-7 11:59:00-0400
title: Number theory practice for RMO 2024
description: Miscellaneous problems from RMO and BMO
tags:
  - Olympiad
  - Diophantine-equations
  - number_theory
related_posts: true
giscus_comments: true
display_categories:
  - teaching
  - fun
categories: " Olympiad, solving"
---

> (BMO R1 2009) Find all integers $x,y,z$ such that \\[x^2 + y^2 + z^2 =2(yz+1)\\] \\[x+y+z=4018.\\]

_Proof_: The first equation can be written as $x^2 + (y-z)^2=2.$ So $x = \pm 1, (y-z)=\pm 1.$ So we have four possibilities:

|            | \\[(y-z)=1\\]        | \\[(y-z)=-1\\]        |
| :--------: | -------------------- | --------------------- |
| \\[x=1\\]  | \\[y+z=4017,y-z=1\\] | \\[y+z=4017,y-z=-1\\] |
| \\[x=-1\\] | \\[y+z=4019,y-z=1\\] | \\[y+z=4019,y-z=-1\\] |

Solving the four equations (by adding and subtracting), we get the solution set for (x,y,z) as $\{(1,2009,2008),(-1,2010,2009),(-1,2009,2010),(1,2008,2009)\}$.

---

(RMO 2002) Find all integers a, b, c, d satisfying the following relations: 1. $1\leq a\leq b\leq c\leq d$ 2. $ab+cd=a+b+c+d+3.$
_Proof_: Writing the second equation as $$(a-1)(b-1)+(c-1)(d-1)=5.$$ From the first relation, we see that $0 \leq (a-1)(b-1) \leq (c-1)(d-1)$. Thus we have three cases according to the partition of 5 as $0+5,1+4,2+3$:
**Case 1:** $(a-1)(b-1)=0, (c-1)(d-1)=5.$
The first relation forces $a=1$, and $c=2,d=6$, $b=1$ or $2$. So the possible solutions in this case are $(1,1,2,6),(1,2,2,6).$
**Case 2:** $(a-1)(b-1)=1, (c-1)(d-1)=4.$
The second equation can be factored in two ways 2 x 2 and 1 x 4. The first relation forces $a=2,b=2$, and $c=2,d=5$ or $c=d=3$. So the possible solutions in this case are $(2,2,2,5),(2,2,3,3).$
**Case 3:** $(a-1)(b-1)=2, (c-1)(d-1)=3.$
~~No solution because relation 1 fails.~~

---

(RMO 2013) Prove that there do not exist natural numbers $x$ and $y$ , with $x>1$ , such that $$\dfrac{x^7 −1}{x-1} = y^5 +1.$$
_Proof:_ Rearranging we get $$\dfrac{x^7-x}{x-1}=y^5.$$ Simplifying the expression we get $$x(x^2+x+1)(x^3+1)=y^5.$$

$$
\begin{eqnarray}
(x^2+x+1,x^3+1) &= (x^2+x+1,x^3+1-x(x^2+x+1))\\
                &= (x^2+x+1,1-x^2-x)\\
                &= (x^2+x+1,2) \in \{1,2\}
\end{eqnarray}
$$

We see that if x is even, then both $x^2+x+1,x^3+1$ are odd. If x is odd, then exactly one of them is even. At any rate, both are not even and thus $(x^2+x+1,x^3+1) = 1$.
Clearly, $(x,x^2+x+1)=1, (x,x^3+1)=1$. Thus a product of three numbers, that are pairwise coprime, is a fifth power.
**Fact:** If a perfect $n$th power can be factored into pairwise coprime numbers, then the factors themselves are perfect $n$th powers.
From the fact and our claims above we see that $x,x^2+x+1,x^3+1$ are perfect fifth powers.
So $x=z^5, x^2+x+1=u^5, x^3+1=v^5$ and thus $(z^3)^5 + 1 = v^5$ . Now $x> 1$, and thus we have $z^3> 1,$ so no there is no solution since there are no consecutive fifth powers of natural numbers.

For $n > 1$, the the only integer solutions of $a^n = b^n +1$ is $b=0,a=1$ and when n is odd $b=-1,a=0$ .  
_Proof:_ We prove the claim by case analysis:
**Case 1:** First we assume a,b are non-negative integers. Note that $a>b$ . Since $a-b$ divides $a^n - b^n$, we conclude $a-b=1$. Plugging in $a=b+1$, we get $$\sum_{k=1}^{n-1}\binom{n}{k}b^k = 0.$$ Thus $b=0,a=1.$  
**Case 2:** Now if $a,b$ are non-positive, then set $a=-u, b=-v$ so that $u,v$ are non-negative. Now if n is odd we see that $$-u^n = -v^n + 1 \implies v^n = u^n+1.$$
So we are in Case 1 and thus $u=0$ and $v=1$. Therefore $a=0, b=-1$.

---

(BMO R1 2015) A positive integer is called _charming_ if it is equal to 2 or is of the form $3^i 5^j$ where i and j are non-negative integers. Prove that every positive integer can be written as a sum of different charming integers.

We need the following lemma
**Lemma:** For any positive integer $n > 2$ there exists $i,j > 0$ such that $$3^i 5^j \leq n < 2 (3^i 5^j).$$_Proof:_ We proceed by contradiction. Suppose the given statement is false, i.e. There exists positive integer n > 2, for all $i,j >0$ such that $2(3^i5^j) \leq n$ or $n < 3^i5^j$.
Choose $i_0,j_0$ such that $3^{i_0}5^{j_0} < n$ and is the largest such. For our $i_0,j_0$, we have $2(3^{i_0}5^{j_0}) \leq n.$

This means there is an positive integer $n>2$ such that $2 (3^{i_0} 5^{j_0}) \leq n < 3^{i_0+1}5^{j_0},$ for any $i,j$. If $j>0$, then we claim $$3^{i+2}5^{j-1} < n < 2(3^{i+2}5^{j-1})$$ $3^{i+2}5^{j-1} < 2(3^i5^j)\leq n < 3^{i+1}5^j < 2(3^{i+2}5^{j-1}).$ So $i > 0$, ~~a similar proof can be given.~~ $\blacksquare$

_Proof:_ We proceed by strong induction.
Let P(n) denote the proposition: "The number n can be written as a sum of different charming integers."
**Base case:** P(1) is true since $1= 3^0$.
**Strong induction hypothesis:** $P(n)$ is true for all $n < k$.
**Strong induction claim:** $P(k)$ is true.
_Proof:_ First we note that $P(2)$ is true since 2 is given to be charming. For k> 2, the lemma states that there exists $i,j > 0$ such that $$3^i 5^j \leq k < 2 (3^i 5^j).$$ Let $m = k - 3^i5^j$ and thus $0 \leq m < 3^i5^j$. Since $m < 3^i 5^j  \leq k$, we have $m < k.$ If $m=0$, then $k=3^i5^j$ and thus k is charming. So $P(k)$ is true.
On the other hand if $k > m > 0$, from strong induction claim, we have m is a sum of different charming numbers. Since $m < 3^i5^j$, the number $3^i5^j$ cannot appear in any decomposition of m into different charming numbers. Therefore if we replace $m$ by sum of any set of charming numbers $$k = m + 3^i5^j$$ then k is a sum of different charming numbers.

240 = c + (240-c). If we choose largest possible c, then perhaps c > 240 -c => 2c > 240 > c <=> c< 240 < 2c
