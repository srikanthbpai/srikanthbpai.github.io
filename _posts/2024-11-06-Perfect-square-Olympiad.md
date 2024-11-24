---
layout: post
date: 2024-10-8 11:59:00-0400
title: Can the given expression equal a perfect square?
description: Standard problems in olympiads
tags:
  - perfect-square
  - number_theory
related_posts: true
giscus_comments: true
display_categories:
  - teaching
  - fun
categories: " Olympiad, teaching"
---

> "I fear not the man who has practised 10,000 kicks once, but I fear the man who has practised one kick 10,000 times."
>
> \- Bruce Lee

![Kick quadratic](/assets/img/Bruceleeperfectsquare.png){: width="350" : style="display:block; margin-left:auto; margin-right:auto"}

Certain classes of problem-solving strategies repeatedly prove helpful in many Olympiads worldwide. In today's blog post, we will discuss some strategies for the following type of problem:

> Find all integers $n$ such that a quadratic expression $f(n)$ (or $f(n,m,\ldots)$) is a perfect square.

_There are usually two strategies that are used to claim no solutions exist:_

- Using [quadratic residues](https://en.wikipedia.org/wiki/Quadratic_residue), argue that there are no solutions. For instance, $12m+ 19$ can never be a perfect square since it is for the form $4k+3$ and we know that 3 is not a quadratic residue modulo 4.
- Bound the given expressions between two consecutive perfect squares. For instance, $n^2 +n+1$ can be bounded as follows: \\[n^2 < n^2+n + 1< (n+1)^2.\\] But there cannot be a perfect square between two consecutive perfect square numbers. So $n^2 +n+1$ cannot be a perfect square.

_There are usually two (related) strategies that are used to find solutions:_

- Complete the squares and factorise using algebraic identities (usually $x^2 - y^2$). Sometimes, we can find a bound on the variables and brute force our way through. If the perfect square is factored into co-prime factors, each factor itself must be a perfect square. We will then get a system of equations to solve.
- We can use the quadratic root formula and determine when the discriminant is a perfect square.

Following Lee's advice, I suggest you practice many problems using the techniques discussed. Let me show you some of these kicks once. If you want to see other kicks, comment below (you need a Github account to comment). I will include them.

## Factoring and bounding kicks

The following British Maths Olympiad problem can be solved in multiple ways. Enjoy the kicks.

> (BMO R1 2011) Find all integers $n$ for which $n^2 +20n+11$ is a perfect square.

_Proof 1_: We claim that $n=35,-55$ are the only solutions. We proceed by completing the square. We must solve for $n$ in the following equation: \\[(n+10)^2-89=k^2.\\]
Now $(n+10)^2 - k^2 =89$ and thus $(n+10-k)(n+10+k)=89$ . Since $89$ is prime, we get a couple of cases.
**Case 1:** $\{n+10-k,n+10+k\}=\{1,89\}$. By adding and simplifying, we get $n=35$.
**Case 2:** $\{n+10-k,n+10+k\}=\{-1,-89\}$. By adding and simplifying, we get $n=-55$.

---

_Proof 2:(Abhhi and Rishon)_ Let $N = n^2 + 20n + 11$. We will find solutions by repeatedly bounding $N$ between two consecutive squares.

We note that for $n> 35$, since $0 < 2n-70$, by adding $n^2 + 18n + 81$ to both sides we see that $(n+9)^2 < n^2 +20n + 11$. On the other hand, $n^2 +  20n + 11 < n^2 + 20 n + 100$. Thus we have for $n > 35$, \\[(n+9)^2 < n^2 + 20n + 11 < (n+10)^2.\\] Since $N$ is bounded between two consecutive squares, it cannot be a perfect square. For $n=35$, we see that $N= 44^2$. For $13 < n < 35$, we similarly bound $N$ again as \\[(n+8)^2 < n^2 + 20n + 11 < (n+9)^2.\\] Indeed, the lower bound reduces to $4n > 53$ which holds for $n > 13$ and the upper bound simplifies to $n < 35$. So we have bounded $N$ between two consecutive squares again, and thus, N cannot be a perfect square. Now $n=13$ is not a solution since $N=440$ is a non-square number. Repeating the bounding trick, we can check that \\[(n+7)^2 < n^2 + 20n + 11 < (n+8)^2\\] holds for $6 < n < 13$ and conclude that $N$ is not a perfect square. Finally, if we plugin $n \in \\{1,2,3,4,5,6\\}$ we get $N \in \\{32,55,80,107,136,167\\}$. None of these values of $N$ are perfect squares. So we are done.

---

**Comments:** We note that Proof 1 simplified because $89$ had very few factors. On the other hand, the strategy of Proof 2 is general. Try solving the problem using the quadratic equation method.

## Quadratic residue kick

Next, I will show you another kick that uses quadratic residues. Watch closely.

> (Croatian MO 2009) Find all positive integers $m, n$ such that $6^m+2^n+2$ is a perfect square.

_Proof:_ We claim the only solution is $m=1,n=3.$
Let $N = 6^m+2^n+2=2(2^{m-1}3^m+2^{n-1}+1)$ be a perfect square. Since $N$ is even, if it is a square, then 4 should divide $N$. This means $2^{m-1}3^m+2^{n-1}+1$ is even. Since the expression is odd if $m,n>1$, we must have $m=1$ or $n=1$.

_Case 1:_ In this case we consider $m=1$. This condition reduces to finding $n$ so that $N=2^{n} + 8$ is a perfect square. We know that the quadratic residues modulo 16 are only $0,1,4,9$. But if $n > 3$, then $N \equiv 8 \mod 16$ , so it cannot be a perfect square. So n can only be 1,2 or 3. Trying each of the cases, we get N as $10,12,16$. Thus $(m,n) = (1,3)$ is the only solution in this case.

_Case 2:_ In this case we consider $n=1$. This condition reduces to finding $m$ so that $N=6^{m} +4$ is a perfect square. We know that the quadratic residues modulo $7$ are only $0,1,4,9$. So \\[N = 6^m + 4 \equiv (-1)^m + 4 \equiv 5,3 \mod 7.\\] Since neither are quadratic residues, we are done.

---

Let me present an opportunity to practice all the kicks you have learned

## Practice your kicks

1. (Kurschak MC 1953) Let n be a positive integer, and let $d$ be a positive divisor of $2n^2$. Prove that $n^2+d$ is not a perfect square. (Hint: bounding between consecutive squares.)
2. (RMO 2012) Find all positive integers $n$ such that $3^{2n} +3n^2 +7$ is a perfect square. (Hint: Bound it between consecutive squares. $2$ is the only solution)
3. (Polish MO 2000) Let $m, n$ be positive integers such that $m^2+n^2+m$ is divisible by $mn$. Prove that $m$ is a perfect square. (Hint: Use quadratic equation and focus on the discriminant.)
4. (CRMO 2001) Find all primes $p$ and $q$ such that $p^2 + 7pq + q^2$ is the square of an integer. (Hint: Complete squares and factorize. If $p \neq q$, then $\\{3,11\\}$ is the other solution.)
5. (Iranian MO 2011). Integers $a, b$ satisfy $a>b$. Also $ab-1, a+b$ are relatively prime and $ab+1, a-b$ are relatively prime. Prove that $(a+b)^2+(ab-1)^2$ is not a perfect square. (Hint: Decompose expression into co-prime factors.)
6. (Australian MO 2002) Find all prime numbers $p, q, r$ such that \\[p^q+p^r\\] is a perfect square. (Hint: factor out a power of p and note that we have product of relatively prime numbers is a perfect square except one pesky case.)
7. {Harder} (BMO 1994) Find the first number $n$ such that the average of the sum of the squares from $1$ to $𝑛$ (where $𝑛>1$) is a perfect square. (Ans: $337$)
8. (US TST 2008) Let $n$ be a positive integer. Prove that $n^7+7$ is not a perfect square. (looks hard, didnt try much. Let me know if you get this in the comments.)
