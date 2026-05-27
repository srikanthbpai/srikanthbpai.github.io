---
layout: post
date: 2026-05-24 09:00:00+0530
title: "When Abstention Lets Parties Reverse Positions"
description: Single-peakedness does not by itself prevent leapfrogging under ideological abstention.
tags:
  - spatial-voting
  - abstention
  - single-peakedness
  - political-economy
related_posts: true
giscus_comments: true
display_categories:
  - research
  - game_theory
categories: "research"
related_publications: true
---

In a two-party election, suppose one party is identified with the left and the other with the right. If parties choose policy positions in order to win elections, can equilibrium force an ideologically strange outcome where the left party is positioned to the right of the right party? This is the phenomenon is called leapfrogging. Adams studied this empirically in 2001 and argued that parties rarely leapfrog over time. So there is a natural theoretical question: what assumptions rule out such reversals?

Aman Ray and I wrote a short note on this question: [Single-Peakedness Does Not Prevent Leapfrogging under Abstention](https://arxiv.org/abs/2605.25131). The model is inspired by the one-dimensional spatial tradition of Hotelling and Downs, but we formulate it ordinally. Following the ideological-party tradition associated with Wittman, parties have ideological preferences. In many spatial models these preferences are represented by concave utility functions: each party has an ideal point, and moving away from that ideal point lowers utility. Ordinally, this implies single-peakedness.

Our first observation is that if no voter abstains, then single-peaked voter preferences and single-peaked party ideological preferences are enough to rule out leapfrogging. The surprise is that this conclusion fails once voters may abstain for ideological reasons. A party’s deviation can then change not only which party voters support, but also which voters participate. Under abstention, single-peakedness alone is not enough. The counterexample below shows this with four voters and seven policy positions.

---

### Setup

Take seven ordered policies.

<div class="math-block">
\[
x_1 < x_2 < x_3 < x_4 < x_5 < x_6 < x_7.
\]
</div>

There are two parties, $A$ and $B$.

Party $A$ is the left party, with ideological ideal point $x_3$. Party $B$ is the right party, with ideological ideal point $x_5$.

Now consider the policy profile

<div class="math-block">
\[
A=x_6,\qquad B=x_2.
\]
</div>

This is reversed ideological order:

<div class="math-block">
\[
x_2 < \tau_A=x_3 < \tau_B=x_5 < x_6.
\]
</div>

So the left party is positioned to the right of the right party.

---

### Voters

There are four voters.

| Voter | Ideal point | Attraction interval | Preference ranking |
|---|---:|---|---|
| $v_1$ | $x_1$ | $\{x_1,x_2\}$ | $x_1 \succ x_2 \succ x_3 \succ x_4 \succ x_5 \succ x_6 \succ x_7$ |
| $v_2$ | $x_2$ | $\{x_1,x_2,x_3\}$ | $x_2 \succ x_1 \succ x_3 \succ x_4 \succ x_5 \succ x_6 \succ x_7$ |
| $v_6$ | $x_6$ | $\{x_5,x_6,x_7\}$ | $x_6 \succ x_5 \succ x_7 \succ x_4 \succ x_3 \succ x_2 \succ x_1$ |
| $v_7$ | $x_7$ | $\{x_6,x_7\}$ | $x_7 \succ x_6 \succ x_5 \succ x_4 \succ x_3 \succ x_2 \succ x_1$ |

Each voter has single-peaked preferences.

At the profile $(A,B)=(x_6,x_2)$, all four voters participate. Voters $v_1$ and $v_2$ vote for $B$ at $x_2$. Voters $v_6$ and $v_7$ vote for $A$ at $x_6$.

So the election is tied.

---

### Deviations

The unilateral deviations are summarized below.

| Deviating platform | $x_1$ | $x_2$ | $x_3$ | $x_4$ | $x_5$ | $x_6$ | $x_7$ |
|---|---:|---:|---:|---:|---:|---:|---:|
| Outcome when $A$ deviates against $x_2$ | $T$ | $T$ | $B$ | $B$ | $B$ | $T$ | $T$ |
| Outcome when $B$ deviates against $x_6$ | $T$ | $T$ | $A$ | $A$ | $A$ | $T$ | $T$ |

Here $T$ denotes a tie.

Against $x_2$, party $A$ cannot win by deviating. Its non-losing positions are

<div class="math-block">
\[
x_1,x_2,x_6,x_7.
\]
</div>

Among these, party $A$ prefers $x_6$.

Against $x_6$, party $B$ cannot win by deviating. Its non-losing positions are again

<div class="math-block">
\[
x_1,x_2,x_6,x_7.
\]
</div>

Among these, party $B$ prefers $x_2$.

Therefore $(x_6,x_2)$ is a Nash equilibrium.