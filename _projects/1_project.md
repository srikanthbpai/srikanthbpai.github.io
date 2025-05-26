---
layout: page
title: Finance
description: Non-normal methods, Deep RL take on classical finance 
img: assets/img/12.jpg
importance: 1
category: work
related_publications: true
---

I am interested in mathematical and engineering applications to finance. My current projects are related to three streams of ideas: Challenging the normality assumption in asset pricing models, Taking a modern deep reinforcement learning look at classic finance problems, Engineering better time series methods using machine learning. 

## Bachelors Projects
Mandelbrot, and later Fama, challenged the ideas that asset prices follow a lognormal distribution based on the variance of observed data. It was argued that the more general class of Levy-Stable processes must be used which allow for infinite variance. 

As a first step, we wanted to check if stable distribution works better than normal during certain time periods.
- **Project: Rolling AIC for Stable vs Normal**  
  _Tracking how market regimes switch between normal and stable distributions using rolling model comparison techniques._
  Hariharasudhan (BA/2023-26) is working on the project. 

The following student project was the first step in exploring the affect of the Stable assumption in the context of event study analyis.
- **Event Study Analysis on Nifty 50**  
  _Analyzing stock price reactions around corporate and political events to evaluate market efficiency and its efficacy under stable assumptions._
  Tania (BA/2023-26) worked on a basic implementation of the classic event study analysis.
The actual question still stands open:_"Are standard EMH conclusions from event studies still valid when returns exhibit stable tails, volatility clustering, and dependence?"_ 

## Masters projects 
The main challenge for the Stable process model has always been constructing statistical methods to estimate parameters of the Stable distribution. Sample mean, sample variance are guaranteed to converge for large number of samples when the underlying distribution has finite variance. In order to stay in the realm of traditional statistics while dealing with stable distributed assets, there are two approaches: trying variants of stable distributions and another is avoiding marginal distributions entirely.


- **A Generalized Tempered Stable approach to Option Pricing**  
  _Estimating Generalized Tempered Stable distributions on Nifty 50 data using advanced optimization techniques. Benchmarking Black-Scholes against GTS-based models using Fourier methods for pricing accuracy._
 

- **Copulas and Tail Risk**  
  _Measuring joint downside crashes across Nifty stocks using lower tail dependence copulas._
