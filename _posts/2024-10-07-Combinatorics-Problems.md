A 6 x 6 square is dissected into nine rectangles by lines parallel to its side such that all these rectangles have integer sides. Prove that there are always two congruent rectangles.
*Proof:* We proceed by contradiction. If the square can be dissected into nine non-congruent rectangles, then we will show that the total area will exceed 36.

We will enumerate the areas of the rectangles of sidelengths at most 6 units, along with the number of such non-congruent rectangles.

| Area | a x b        | number |
| ---- | ------------ | ------ |
| 1    | 1 x 1        | 1      |
| 2    | 1 x 2        | 1      |
| 3    | 1 x 3        | 1      |
| 4    | 1 x 4, 2 x 2 | 2      |
| 5    | 1 x 5        | 1      |
| 6    | 1x 6, 2 x 3  | 2      |
| 8    | 2 x 4        | 1      |
Total sum of 9 rectangles $\geq$ 1 + 2+ 3+4 +4 + 5 +6 +6 +8 = 39
This means that any dissection of a 6 x 6 square into 9 incongruent rectangles has atleast 39 sq units as area. But 6x6 square has area 36. So this is the required contradiction.
____

The numbers 1, 2, 3, . . . , n are arranged in a particular order. One can swap any two adjacent numbers. Prove that after performing an odd number of such operations, the arrangement of the numbers thus obtained will differ from the original one.
*Proof:* 

---
A teacher wrote the quadratic $x^2 +10x+20$ on the board. Then, each student either increased by $1$ or decreased by $1$ either the constant or the linear coefficient. Finally $x^2 +20x+10$ appeared. Did a quadratic expression with integer zeros necessarily appear on the board in the process?
*Proof:* (sketch) Represent the polynomial $x^2+ax+b$ on the plane by the point $(a,b)$. students moves will create a path out of lattice points. Now the family of polynomials $x^2 + (n+1)x + n$ is represented by the set of lattice points on the line y=x-1. Since the starting and ending points lie on the either side, the path must cross the polynomial  $x^2 + (n+1)x + n$ which has integer roots.

---
 (BMO R2 2016) Naomi and Tom play a game, with Naomi going first. They take it in turns to pick an integer from 1 to 100, each time selecting an integer which no-one has chosen before. A player loses the game if, after their turn, the sum of all the integers chosen since the start of the game (by both of them) cannot be written as the difference of two square numbers. Determine if one of the players has a winning strategy, and if so, which.
 
*Proof:* I claim Naomi has a winning strategy. First we note that n cannot be written as difference of two squares iff $n \equiv 2  \mod 4$ .  25 numbers are 0,1,2,3 mod 4 from 1 to 100. Naomi's strategy is
- Start with a 4
- If tom picks 1 mod 4, then choose a 3 mod 4 number and vice versa.
- If tom picks a multiple of 4, then write a multiple of 4.
- If tom picks 2 mod 4, rejoice.
Naomi can always run her strategy because of the following reasons:
- Since there are odd number of multiples of 4, she will always be the last one to write a multiple of 4.
- Since there are equal numbers of 1 and 3 mod 4 numbers and she never starts with one of them, she will be the last one to write 1 or 3. 
Since she never has to write a 2 mod 4, she wins.
----
(BMO R1 2017) Matthew has a deck of 300 cards numbered 1 to 300. He takes cards out of the deck one at a time and places the selected cards in a row, with each new card added at the right end of the row. Matthew must arrange for the mean of the numbers on the cards in the row to be an integer. If, at some point, there is no card remaining in the deck, which allows Matthew to continue, then he stops. When Matthew stopped, what was the smallest possible number of cards that he could have placed in the row? Give an example of such a row.

*Proof:* We claim the smallest possible number of cards is 17.
First we show that Matthew must have placed at least 17 cards on the table.
Suppose Matt has $k$ cards on the table and let us denote it by $x_1,x_2,\ldots,x_k$. If Matt can place a new card $x_{k+1}$ on the table, then we need (k+1) must divide $\sum_{i=1}^{k+1} x_i$  and thus  $$x_{k+1}\equiv -(x_1+x_2+\ldots x_{k}) \mod (k+1).$$Let $a$ denote the congruence class of $-(x_1+x_2+\ldots x_{k})$  modulo $(k+1)$. The only way he cannot place card $x_{k+1}$ is if all the cards with $-a \mod (k+1)$ has already been placed on the table. Since each congruence class appears at most $\left\lfloor \dfrac{300}{k+1} \right\rfloor$ times. Since we have placed only $k$ cards, we must have $$\left\lfloor \dfrac{300}{k+1} \right\rfloor < k+1 $$
This inequality is satisfied iff $k \geq 17$. 

Now we show k=17 can be achieved. Matt writes all the numbers of the form 1 mod 18 in increasing order. So he writes 17 numbers this way. Now the sum of the cards on the table is $$\sum_{k=0}^{16} (18k+1) = 18*(16*17)/2+17 \equiv 0+(-1) \mod 18.$$
Now Matt has exhausted all the numbers of the form 1 mod 18 and thus can't continue. So 17 cards is achievable.

----