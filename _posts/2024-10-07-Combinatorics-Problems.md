---
layout: post
date: 2024-10-7 11:59:00-0400
title: Combinatorics Configuration problems from BMO and RMO
categories: " Olympiad, solving"
tags:
  - invariant
  - monovariant
  - combinatorics
  - Olympiad
---

> **A 6 x 6 square is dissected into nine rectangles by lines parallel to its side such that all these rectangles have integer sides. Prove that there are always two congruent rectangles.**

_Proof:_ We proceed by contradiction. If the square can be dissected into nine non-congruent rectangles, we will show that the total area will exceed 36.

We will enumerate the areas of non-congruent rectangles with sidelengths of at most 6 units and the number of such non-congruent rectangles.

| Area |    a x b     | number |
| :--: | :----------: | :----: |
|  1   |    1 x 1     |   1    |
|  2   |    1 x 2     |   1    |
|  3   |    1 x 3     |   1    |
|  4   | 1 x 4, 2 x 2 |   2    |
|  5   |    1 x 5     |   1    |
|  6   | 1x 6, 2 x 3  |   2    |
|  8   |    2 x 4     |   1    |

Total sum of areas of 9 rectangles $\geq$ 1 + 2+ 3+4 +4 + 5 +6 +6 +8 = 39
This means that any dissection of a 6 x 6 square into 9 incongruent rectangles has atleast 39 sq units as area. But 6x6 square has area 36. So this is the required contradiction.

---

> **The numbers 1, 2, 3, . . . , n are arranged in a particular order. One can swap any two adjacent numbers. Prove that after performing an odd number of such operations, the arrangement of the numbers thus obtained will differ from the original one.**

_Proof:_

---

> **A teacher wrote the quadratic $x^2 +10x+20$ on the board. Then, each student either increased by $1$ or decreased by $1$ either the constant or the linear coefficient. Finally $x^2 +20x+10$ appeared. Did a quadratic expression with integer zeros necessarily appear on the board in the process?**

_Proof:_ (sketch) Represent the polynomial $x^2+ax+b$ on the plane by the point $(a,b)$. students moves will create a path out of lattice points. Now the family of polynomials $x^2 + (n+1)x + n$ is represented by the set of lattice points on the line y=x-1. Since the starting and ending points lie on the either side, the path must cross the polynomial $x^2 + (n+1)x + n$ which has integer roots.

---

> (BMO R2 2016) **Naomi and Tom play a game, with Naomi going first. They take it in turns to pick an integer from 1 to 100, each time selecting an integer which no-one has chosen before. A player loses the game if, after their turn, the sum of all the integers chosen since the start of the game (by both of them) cannot be written as the difference of two square numbers. Determine if one of the players has a winning strategy, and if so, which.**

_Proof:_ I claim Naomi has a winning strategy. First we note that n cannot be written as difference of two squares iff $n \equiv 2  \mod 4$ . Twenty-five numbers from 1 to 100 are in each remainder class modulo 4. Naomi's strategy is to maintain the sum of the picked numbers as a multiple of 4, forcing Tom to pick a number congruent to 2 mod 4 eventually. She can implement the strategy by the following procedure:

- Start with a 4
- If tom picks 1 mod 4, then choose a number that is 3 mod 4 number and vice versa.
- If tom picks a multiple of 4, then write a multiple of 4.
  Naomi can always run her strategy because of the following reasons:
- Since there are odd number of multiples of 4, she will always be the last one to write a multiple of 4.
- Since there are equal numbers of 1 and 3 mod 4 numbers and she never starts with one of them, she will be the last one to write 1 or 3.
  Since she never has to write a 2 mod 4, she wins.

---
