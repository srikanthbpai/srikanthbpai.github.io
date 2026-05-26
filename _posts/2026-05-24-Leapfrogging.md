---
layout: post
date: 2026-05-24 09:00:00+0530
title: "When Abstention Lets Parties Reverse Positions"
description: A small example showing why single-peakedness does not by itself prevent leapfrogging under ideological abstention.
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

{% capture content %}

Spatial models usually make ideological politics look orderly. Voters and parties have ideal points. Moving away from an ideal point makes things worse. In ordinal terms, preferences are single-peaked.

This gives a natural expectation: in a two-party election, the left party should not end up to the right of the right party in equilibrium.

That expectation is correct if everyone votes. In a short note with Aman Ray, we show that single-peaked voter preferences and single-peaked party ideological preferences rule out such reversals under full turnout.

But elections rarely have full turnout. Some voters abstain because no party is close enough to represent them. Once this kind of ideological abstention is allowed, the usual intuition can fail.

The reason is simple. A party’s deviation does not merely move existing voters from one party to another. It can also bring previously alienated voters into the electorate.

This post explains the mechanism through the smallest kind of example: four voters and seven policy positions.

---

### The question

There are two parties, \(L\) and \(R\), and policies lie on a line.

The party \(L\) is ideologically left of party \(R\). A reversal occurs if, in equilibrium, \(L\) chooses a policy position to the right of \(R\). This is what we call leapfrogging.

The question is:

<div class="math-block">
Can single-peaked preferences alone prevent leapfrogging when voters may abstain for ideological reasons?
</div>

The answer is no.

---

### What abstention changes

Suppose each voter has an acceptable set of policies. A voter participates only if at least one party chooses a policy inside that acceptable set. If both parties are too far away, the voter abstains.

This one change alters the logic of deviations.

Without abstention, when a party moves, it competes for a fixed electorate. A deviation can change which party a voter supports, but not whether the voter exists in the election.

With abstention, a deviation can activate voters who were previously outside the electorate. So the payoff from moving to a new position may come not from stealing current voters, but from attracting a different band of voters who were previously alienated.

That is the obstruction.

---

### A four-voter example

Take seven ordered policies,

\[
x_1 < x_2 < x_3 < x_4 < x_5 < x_6 < x_7.
\]

Party \(L\) has ideological ideal point \(x_3\), and party \(R\) has ideological ideal point \(x_5\). Thus \(L\) is the left party and \(R\) is the right party.

Now consider the policy profile

\[
L = x_6,\qquad R = x_2.
\]

This is reversed ideological order: the left party is to the right of the right party.

The example constructs four voters with single-peaked preferences and suitable acceptance sets such that this reversed profile is a Nash equilibrium. At the equilibrium profile, all four voters participate. Nevertheless, neither party has a profitable deviation.

Why can this happen?

Because when a party deviates, it changes the set of voters who participate. A move that looks ideologically attractive may lose the voters currently supporting the party and may fail to activate enough new voters. Conversely, a position on the “wrong” side can be electorally protected because it is the position that keeps the right band of voters participating.

So the example does not rely on strange voter preferences. The voters are single-peaked. The failure comes from turnout being endogenous.

---

### The lesson

Single-peakedness is not useless. It still matters.

But with ideological abstention, voter single-peakedness and party single-peakedness are not enough by themselves to preserve ideological order.

The additional condition has to be placed on party ideological preferences. In the paper, we identify a mild order-preserving condition under which leapfrogging is impossible. Standard concave ideological utilities satisfy this condition.

So the lesson is precise:

<div class="math-block">
Full turnout lets single-peakedness do the work.  
Ideological abstention requires one more order-preserving assumption.
</div>

The short note is available here: [Single-Peakedness Does Not Prevent Leapfrogging under Abstention](https://arxiv.org/abs/2605.25131).

{% endcapture %}

{% include post_content.html %}
