---
layout: post
date: 2024-09-30 11:59:00-0400
title: Survey of the stable marriage problem
description: An article for Nidhi
tags:
  - StableMarriage
  - gametheory
  - economics
categories: Survey
giscus_comments: true
---

A survey of the stable marriage problem flow:

- Describe the problem with an interesting example (Pride and Prejudice?). Follow [Gale Shapely](https://www.eecs.harvard.edu/cs286r/courses/fall09/papers/galeshapley.pdf), see Riehl's take.
- [Optimality of the marriages](https://www.eecs.harvard.edu/cs286r/courses/fall09/papers/galeshapley.pdf) and the order structure(Knuth book page number).
- [Distributive lattice structure of preference list]({{site url}}/downloads/blair1984.pdf) (Knuth, Blair) and [P-complete nature of enumeration](https://epubs.siam.org/doi/10.1137/0215048) .
- Roth's discussion of [incentive for the proposed to lie about preferences while the proposers have no incentive](http://www.eecs.harvard.edu/cs286r/courses/fall09/papers/roth.pdf) [misrepresentation and optimality](http://pareto.uab.es/jmasso/pdf/RothJET1984.pdf).
- College admissions is subtly different from stable marriage.
- Stochastic nature: [Average number of stable matchings](https://kylewoodward.com/blog-data/pdfs/references/pittel-siam-journal-on-discrete-mathematics-1989A.pdf) :Shows proposers get $\log n$ ranked preference while the proposed gets $\dfrac{n}{\log n}$ ranked preference. [Vazirani robustness](https://arxiv.org/pdf/1804.00553).
- Discuss knuth math for efficiency. Finally motivate [efficiency in competitive markets with unbalanced sides](https://www.journals.uchicago.edu/doi/full/10.1086/689869)Adding an extra man reverses the preference list.
