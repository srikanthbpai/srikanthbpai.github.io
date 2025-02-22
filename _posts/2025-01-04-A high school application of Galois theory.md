---
layout: post
date: 2025-01-04 11:59:00-0400
title: Galois theory for a high school student.
description: An example based understanding
tags:
  - algebra
  - groups
categories: UG math
giscus_comments: true
---

# Introduction

A polynomial in one variable $x$ with real coefficients is an expression that can be made by adding, multiplying, subtracting real numbers and the variable $x$. For instance, consider the expression $x^2 + 3x +2$, which is simply the wordy algorithm

> Think of a number, square it and add it to three times to the original number. Finally add two to it.

We will call the expression $P(x)$.
When the algorithm is carried out on a particular number $n$, we say that th polynomial is "evaluated" at $n$ and denote this operation by $eval_P(n)=P(n)$. So if $n=5$, then \\[eval_P(5) = P(5) = 5^2 +3\cdot 5+ 2=42.\\]

As it is usual in mathematics, we start studying the collection of all polynomials as an interesting object. Usually this is done in high school.

# High School Polynomial theory

In high school we learn the divisibility theory of polynomials. First we learn long division which teaches us to compute a quotient and remainder when two polynomials are divided.

A monic polynomial is a polynomial whose leading coefficient is one. When a polynomial is evaluated at a number, if it vanishes it is called a _root_ of the polynomial. _Example:_ The polynomial $x^2 - 3x + 2$ vanishes iff $x=1$ or $x=2$. So we say the set $\{1,2\}$ is the set of roots of the polynomial $x^2 - 3x + 2$.

Next we learn the factor theorem: A polynomial $Q(x)$ vanishes at $x=r$ iff $(x-r)$ divides $Q(x)$. This is really cool since we now have an alternative definition for a root. We can say r is a root of $Q(x)$ if $(x-r)$ is a factor of $Q(x)$. In fact this definition is superior since we can define more subtle properties of roots (i.e. multiplicity of roots, see below.)

A converse question is naturally suggested: Can we recover the polynomial from the roots? The answer is yes if we are allowed to redefine the notion of roots.

- $(x-1)^2$ and $x-1$ both have the same 'set' of roots. So we cannot definitely recover the polynomial from simply _the set of roots_.
- We change the definition of _root_: We say a number $r$ is a root of a polynomial $Q(x)$ with _multiplicity k_ for some natural $k$ if $(x-r)^k$ divides $Q(x)$ but $(x-r)^{k+1}$ does not divide $Q(x)$.
- A better structure for the root data is a '_divisor_' (sorry for a confusing name, stupid math people!) which is defined as a sum $n_1[r_1]+n_2[r_2]+...+n_k[r_k]$ which indicates that root $r_i$ appears $n_i$ times. For instance $2[1]$ is the divisor of roots for $(x-1)^2$ whereas $[1]$ is divisor of roots for $(x-1)$.

_Example:_ What is the collection of all quadratic polynomials that have $[1]+[2]$ as the divisor of roots? The answer is the set \\[\\{k(x-1)(x-2)\| k \in \mathbb{R}\\}\\] and it can be proved using factor theorem. By setting $k=1$, we see that a monic polynomial $x^2-3x+2$ is uniquely determined by the divisor $[1]+[2]$.

_Example:_ The root divisor of polynomial $x^4 - 6x^3 + 13x^2 - 12x + 4$ is $2[1]+2[2]$.

A divisor is simply an expression of the type $n_1[r_1]+n_2[r_2]+...+n_k[r_k]$ where $n_i$ are natural numbers and $r_i$ are numbers. With the divisor of roots definition, and factor theorem we have a nice converse.

> (Exercise!) Given a divisor, there is a unique monic polynomial whose divisor of roots is the given divisor.

Another question that might appear in your mind is whether every polynomial has a root? We have to be careful about the numbers we are dealing with but the answer is affirmative. The affirmative answer was one of the breakthroughs in 19th century mathematics. But to answer it, we have to invent complex numbers. Consider a polynomial $x^2 + 1=0$. If we label one of the roots as $i$, then the other root is $-i$ . Just acknowledging the existence of the symbol has a serious consequence: Now a polynomial $(x-a)^2 +b^2 =0$ has solutions $x=a\pm ib$. The numbers of the form $a+ib$ where $a,b \in \mathbb{R}$ are called complex numbers. Although they were invented to solve quadratic equations, the breakthrough result of 19th century states

> (Fundamental theorem of algebra) Every polynomial with real coefficients has a divisor of complex number roots.

The summary is a gorgeous correspondence:

> The set of divisors (with complex numbers) is in one-one correspondence with the set of monic polynomials with real coefficients.

We will call this "the basic correspondence".

# Symmetry of the roots

Very broadly, a symmetry is a transformation that leaves an object unchanged. The map that sends a complex number $a+ib$ to $a-ib$ is called _complex conjugation_. In case of polynomials with real coefficients, complex conjugation always leaves the divisor of roots unchanged (Exercise!), so its a symmetry!

_Example:_ Clearly $[i]+[-i]$ corresponds to the polynomial $x^2+1$ (under the basic correspondence). Complex conjugation sends the divisor $[i]+[-i]$ to $[-i]+[i]$. We see that the divisor is unchanged in this example.

The key reason for this behaviour is that complex conjugation respects addition, multiplication, division, subtraction and further, it leaves real numbers unchanged. Since a polynomial with real coefficients is built using these operations, we see that whenever $z$ is a root of a polynomial (with real coeffs), so is the complex conjugate of $z$. Another way to say this is: The set $\{a+ib,a-ib\}$ is either a root set of a poly with real coefficients or neither of them are roots. Its a "take it all or leave it all offer".

Sometimes a polynomial might be "more symmetric". Let us explore the meaning of this with an example. Consider the polynomial $Q(x) = x^4 -10x^2 + 1$, we see that if $r$ is a root of $Q(x)$, then so is $-r$. Additionally, we see that $1/r$ is also a root (try evaluating it!). Finally this means that if $r$ is a root, so is $-1/r$. Even though we have not solved the polynomial, we know that a quadruple $\{r,1/r,-r,-1/r\}$ is either the set of roots or none of them are roots. Its again a "take it all or leave it all offer", but now there are four elements. So it is "more symmetric". Such sets of roots are called conjugates. We want to find transformations, analogous to complex conjugation, that send roots to other roots which preserve arithmetic operations.

We continue with the example of $Q(x) = x^4 -10x^2 + 1$. Note that the roots of $Q(x)$ are real numbers (one can explicitly solve them since its a quadratic in $x^2$ and the roots are $\\{\pm\sqrt{2}\pm\sqrt{3}\\}$). Clearly if the transformations leave real numbers unchanged, we will have only identity transformation in this case. So we modify the problem:

> Motivated by complex conjugation, are there transformations that send one root of $Q(x)$ to another which preserve addition, multiplication, division, subtraction. It should leave rational numbers unchanged.

If we want transformations that preserve all the arithmetic operations and rationals along with the ability to send roots to roots, we should create a domain of the transformation containing the roots, the rationals and the domain should be closed under the arithmetic operations. A set that is closed under the four arithmetic operations is called a "field" and if the field K contains another field L inside it, then we say $K/L$ is a field extension over $L$. The 'smallest' field that contains rationals and all the roots of a polynomial $P(x)$ is called the _splitting field of P(x)_.

_Example:_ The collection of all the expressions formed by adding, multiplying, dividing and subtracting the roots is denoted by
\\[K:=\mathbb{Q}(r,1/r)=\\{a+b\sqrt{2}+c\sqrt{3}+d\sqrt{6}|a,b,c,d \in \mathbb{Q}\\}.\\]

- $K$ contains all the roots of $Q(x)$ and is closed under all the arithmetic operations.
- $K/\mathbb{Q}$ is a field extension over $\mathbb{Q}$ and is the splitting field of $Q(x)$.
- Also note that $K$ is a vector space over $\mathbb{Q}$ and dimension of $K$ is $4$ (not obvious).

It turns out that we have conjugation (invertible) transformations on $K$ \\[\sigma_1(a+b\sqrt{2}+c\sqrt{3}+d\sqrt{6}) = a+b\sqrt{2}+c\sqrt{3}+d\sqrt{6}\\] \\[\sigma_2(a+b\sqrt{2}+c\sqrt{3}+d\sqrt{6}) = a-b\sqrt{2}+c\sqrt{3}-d\sqrt{6}\\]
\\[\sigma_3(a+b\sqrt{2}+c\sqrt{3}+d\sqrt{6}) = a+b\sqrt{2}-c\sqrt{3}-d\sqrt{6}\\]
\\[\sigma_4(a+b\sqrt{2}+c\sqrt{3}+d\sqrt{6}) = a-b\sqrt{2}-c\sqrt{3}+d\sqrt{6}\\]

So we found a way to create 4 symmetry transformations that send roots of $Q(x)$ to their conjugates. The novelty was in constructing a domain called "a field" which supports the symmetry transformations. An invertible map ( a transformation) from a field to another field that preserves the four basic arithmetic operations is called a _field isomorphism_.
The collection of transformations of a field extension $K/L$ that preserves basic arithmetic operations (i.e. field isomorphisms from K to K) and the elements of $L$ is called the Galois group $Gal(K/L)$. Like complex conjugation, the elements of the Galois group permute the roots of a polynomial whose coefficients come from $L$.

A group is a collection of transformations with the property that a composition of two transformation in the group is again an element of the group. The precise definition demands existence of identity and inverse transformations in the group.

_Example:_ Consider the previous example and look at the set $\\{\sigma_1,\sigma_2,\sigma_3,\sigma_4\\}$ . First we note that $\sigma_1$ is the identity transformation. But you can verify that $\sigma_i \circ \sigma_i = \sigma_1$ for $i=1,2,3,4$. Next note that $\sigma_2 \circ \sigma_3 = \sigma_4$ . You can use these relations to show that any composition of two transformations is again an element of the form $\sigma_i$. So the set $\\{\sigma_1,\sigma_2,\sigma_3,\sigma_4\\}$ is a group. Note that $\\{\sigma_1,\sigma_2,\sigma_3,\sigma_4\\} \subseteq Gal(K/\mathbb{Q})$ since these transformations preserve basic operations and rational numbers.

Now we see a curious relation: It looks like

- Every element of $K$, the splitting field of $Q(x)$, can be written as a linear combination of 4 elements.
- There are 4 transformations on $K$ that leave $\mathbb{Q}$ unchanged and preserve arithmetic operations.
  The number 4 appearing repeatedly is no coincidence. A couple of theorems of Galois theory tells us that it is always true. The precise statement can be stated using vector space language.

> If $P(x)$ is a polynomial with rational coeffs and it has no non-trivial factors over rationals, then the splitting field of $P(x)$ is a vector space over $\mathbb{Q}$ with dimension equal to the degree of the polynomial.

> Let $K/\mathbb{Q}$ be a splitting field of a polynomial $P(x)$, and suppose the dimension of the vector space $K$ is $d$. The number of elements in $Gal(K/\mathbb{Q})$ is d.

_Example:_ We have already argued that $\\{\sigma_1,\sigma_2,\sigma_3,\sigma_4\\} \subseteq Gal(K/\mathbb{Q})$. From the above theorem, we see that $\\{\sigma_1,\sigma_2,\sigma_3,\sigma_4\\} = Gal(K/\mathbb{Q}).$

The following example might be hard to work out, but hopefully it is believable.

_Example/Exercise:_ If $R(x) = x^3-2$, then the splitting field is the set \\[L := \mathbb{Q}(\sqrt[3]{2},\omega) = \\{a+b\sqrt[3]{2}+c\sqrt[3]{4}+d\omega+e\sqrt[3]{2}\omega\+f\sqrt[3]{4}\omega|a,b,c,d,e,f \in \mathbb{Q}\\}\\]
In this case, dimension of $L$ is 6. But there are exactly six permutations of 3 roots, so we know all the elements of the Galois group.

At this point one must wonder, if the elements of the Galois group permute the roots of the polynomial $P(x)$, is it possible that some permutation transformations are not allowed? Let us revisit our examples.

_Example:_ Recall the example of $Q(x) = x^4-10x^2 +1$. We see that $Gal(K/\mathbb{Q})$ has four elements. Let $r = \sqrt{2}+\sqrt{3}$, then we know that $[r]+[1/r]+[-r]+[-1/r]$ is the divisor of roots. Ideally 4 roots have 24 permutations possible. Since a field isomorphism respects arithmetic operations, if we define the isomorphism on $r$, it automatically determines the action of the rest! So we have only four possibilities. Indeed the Galois group has 4 elements: Send r to one of the roots.

Any transformation that permutes roots is not necessarily an element of the Galois group. Sometimes the roots of a polynomial will have polynomial relations that may not be preserved by some transformations. These obstructions arise from polynomial relations between the roots.

_Example:_ Consider the polynomial $S(x) = x^4-20x^2+80$ whose roots are \\[\pm\sqrt{10\pm2\sqrt{5}}.\\] Let us call $r = \sqrt{10+2\sqrt{5}},s=\sqrt{10-2\sqrt{5}}.$ Note that the roots of the polynomial are $\\{r,s,-r,-s\\}$. Any element of the Galois group permutes the roots. So is there an element of the Galois group that sends $(r,s)$ to $(s,r)$? Now we can argue that it is impossible. Suppose such an isomorphism exists. Then look at the relation \\[rs(r^2-s^2)=80,\\] applying $\sigma$ gives \\[sr(s^2-r^2)=80\\] which forces $80=-80$; a contradiction. A similar contradiction is obtained for transformations that send $(r,s)$ to $(-r,s)$ or $(r,-s)$ or $(-s,-r)$. However no contradiction is obtained from the equation $rs(r^2-s^2)=80$ for transformations that send $(r,s)$ to $(r,s),(-r,-s),(s,-r),(-s,r)$.

Note that another identity is $r^2 -s^2 = rs$ which can also be used to get rid of certain permutations.
