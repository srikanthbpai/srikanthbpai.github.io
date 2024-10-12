---
layout: post
date: 2024-10-7 11:59:00-0400
title: Olympiad Combinatorics Construction puzzles
categories: Cool math, Olympiad
tags:
  - combinatorics
  - Olympiad
  - construction
related_posts: true
---

> (BMO R1 2017) **Matthew has a deck of 300 cards numbered 1 to 300. He takes cards from the deck one at a time and places the selected cards in a row, with each new card added at the right end. Matthew must arrange for the mean of the numbers on the cards in the row to be an integer. If, at some point, there is no card remaining in the deck, which allows Matthew to continue, then he stops. When Matthew stopped, what was the smallest possible number of cards that he could have placed in the row? Give an example of such a row.**

_Proof(Abhhi, Rishon and Srikanth):_ We claim the smallest possible number of cards is 17.
First we show that Matthew must have placed at least 17 cards on the table.
Suppose Matt has $k$ cards on the table and let us denote it by $x_1,x_2,\ldots,x_k$. If Matt can place a new card $x_{k+1}$ on the table, then we need (k+1) to divide $\displaystyle \sum_{i=1}^{k+1} x_i$ and thus \\[x_{k+1}\equiv -(x_1+x_2+\ldots x_{k}) \mod (k+1).\\] Let $a$ denote the congruence class of $-(x_1+x_2+\ldots x_{k})$ modulo $(k+1)$. The only way he cannot place card $x_{k+1}$ is if all the cards with $-a \mod (k+1)$ has already been placed on the table. Since each congruence class appears at most $\left\lfloor \dfrac{300}{k+1} \right\rfloor$ times and we have placed only $k$ cards, we must have \\[ \left\lfloor \dfrac{300}{k+1} \right\rfloor < k+1 \\] This inequality is satisfied iff $k \geq 17$.

Now we show k=17 can be achieved. Matt writes all the numbers of the form 1 mod 18 in increasing order. So he writes 17 numbers this way. Now the sum of the cards on the table is \\[\sum_{k=0}^{16} (18k+1) = 18 \times \frac{(16 \times 17)}{2}+17 \equiv 0+(-1) \mod 18.\\]
Now Matt has exhausted all the numbers of the form 1 mod 18 and thus cant continue. So 17 cards is achievable.

---
