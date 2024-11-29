---
layout: page
title: Finance surveys
description: Stable laws across the board
img: assets/img/6.jpg
importance: 4
category: finance
---

# Information, noise and knowledge:

Information, knowledge and noise:

Necessary reading:
[Noise by Fischer Black](https://onlinelibrary.wiley.com/doi/full/10.1111/j.1540-6261.1986.tb04513.x)

In their paper [Information, Trade and Common Knowledge](https://www.kellogg.northwestern.edu/research/math/papers/377.pdf) , Milgrom and Stokey prove a "no-trade" theorem. Under common knowledge of the structure of information acquisition for a market in efficient equilibrium with rational traders, no trader can profit using their private information.

Pflug comes with "value of information" as a risk measure [here](https://link.springer.com/chapter/10.1007/978-3-642-55884-9_14).

[Rubinstein's "The Electronic Mail Game: Strategic Behavior Under "Almost Common Knowledge"](https://www.jstor.org/stable/1806851)
[Does Academic Research Destroy Stock Return Predictability?](https://onlinelibrary.wiley.com/doi/10.1111/jofi.12365)

# EMH

For Tania, Shiller says "Using historical data, he shows that stock prices exhibit significantly greater variability than can be explained by future dividends, contradicting the efficient market hypothesis under rational expectations." in his paper 'Do Stock Prices Move Too Much to be Justified by Subsequent Changes in Dividends?'

Follow Fama's journey (maybe just read his surveys first)

# Stable laws in asset returns:

A 2023 [paper](https://link.springer.com/article/10.1007/s11749-023-00894-7) talks about estimating a parameter for stable distribution using a 'quantile conditional variance ratio'. The key point is that it is a 2024 paper, so it might have a decent survey. Also if we are gonna put a working paper, we may start small and start adding stuff to it. Just quickly see their flow.

We have seen Fama and Roll, now we have to look at documents that cite them and study what is the state of the art.

Read intros of:
different ways to estimate parameters of stable distributions is compared: https://www.tandfonline.com/doi/full/10.1080/23322039.2017.1318813#d1e239

[asymptotic properties of sample quantiles of discrete distributions](https://link.springer.com/article/10.1007/s10463-008-0215-z)

[CLT for medians](https://stats.stackexchange.com/questions/45124/central-limit-theorem-for-sample-medians)

Necessary reading:
"Levy-Ito models in finance", 2021, Probability Surveys, see [here](https://projecteuclid.org/journals/probability-surveys/volume-18/issue-none/Lévy-Ito-models-in-finance/10.1214/21-PS1.full). Trace the references and determine the state-of-the-art understanding. Some references are precisely what we had in mind.

Tempered stable distributions: You should answer

1. what is it? (i.e. define it) and how it is different from stable
2. History and motivating problems
3. Examples and basic theory required for next section
4. Applications to finance
   (Look at the original paper in physics and then one in finance. See also Kuchler-Tappe(2014) and [Fallahgoul's paper](https://www.monash.edu/__data/assets/pdf_file/0006/1194630/09-QBI_TS.pdf).)

Some miscellany:

1. Bawa, Elton and Gruber's introduction in [their paper](https://www.jstor.org/stable/2327069?seq=1) is a must-read for us. They say
   "It is also known (see, for example, Bawa [1], Fama [8, 9], Press [13, 14] and
   Samuelson [15] that when the joint probability distribution of security returns
   follow a multivariate stable distribution with characteristic exponent a, 0 < a <=
   2, portfolio returns follow a univariate stable distribution with the same characteristic exponent a. In addition, the distributions of portfolio returns belong to a two-parameter (location, scale) family of distributions for (1) Symmetric nonnormal multivariate stable distributions as defined by Press [13, 14], (2) A linear dependence structure with nonnormal multivariate stable distributions as defined by Fama [8, 9] or Samuelson [15] for the symmetric case and Bawa [2] for the asymmetric case.' _For these distributions, the mean is the appropriate return measure while the scale parameter (also called dispersion parameter in the literature) is the appropriate risk measure."_

   Follow Fama&Roll, Samuelson, Bawa et al. l, Press and others to trace the history of stable distribution in finance. What was the reason the Chicago school stopped working on stable laws if they did?

2. See Nolan's work on stable distributions and Press's paper. Also, Kienitzz has a chapter on [Tempered stable process](https://onlinelibrary.wiley.com/doi/10.1002/9780470061602.eqf08020).
3. For some evidence for/against future prices, see [Futures Prices Are not Stable-Paretian Distributed](https://d1wqtxts1xzle7.cloudfront.net/91443301/fut.399012040820220923-1-gaacx9-libre.pdf?1663946384=&response-content-disposition=inline%3B+filename%3DFutures_prices_are_not_stable_paretian_d.pdf&Expires=1732772097&Signature=TMxbcwJ9-PppqvzfQRr0DhpE8w9OcEVeg~~R36PVPlD7KwZ22bASAjJlypd5QgNzkvybBMI3qK3z9zXd5I1Vi75Vb7zLug4SJ2MLzjUDVuBX7W-Z0AkZTF5Q6FyjLEjSGzCjtw5VCZC0bmxE2IMfUGRCGOTMl5N880PVQlzxecOeoGzTCHiEWI7Gph~eW5VX8H6K2A3oMp7-tdkPT7ges-L8YDWonKHXMUn9oThvQwPBfN~-RqC1RRoUF9hbh29RNmwe-EMmviuk1vukT~S5EglxJDfzfHVDGXNUcIZbwlJ~XzbS8~gI3EMeuS0W~KzxU4nOK8wMYf9GJ1ZmGfFqIQ__&Key-Pair-Id=APKAJLOHF5GGSLRBV4ZA) .

# Risk Methods:

A 2005 survey on measures of risk can be found [here](https://www.sciencedirect.com/science/article/abs/pii/S0377221703009056). Follow the references backwards and citing documents forward to know the latest developments. Look at Quantile regression. Maybe it is the "correct" form for multivariate stable laws.

The leading paper for [coherent risk measures](https://www.researchgate.net/profile/Freddy-Delbaen/publication/227614132_Coherent_Measures_of_Risk/links/5ea0698292851c87d1aa3242/Coherent-Measures-of-Risk.pdf) motivates its properties. A survey of different definitions of expected shortfall is [here](https://arxiv.org/pdf/cond-mat/0104295). Var and cVar properties by Pflug [here](https://link.springer.com/chapter/10.1007/978-1-4757-3150-7_15). See [this paper](https://projecteuclid.org/journals/bernoulli/volume-23/issue-3/Saddlepoint-methods-for-conditional-expectations-with-applications-to-risk-management/10.3150/15-BEJ774.full) for analytic approximations for conditional expectations of the cVaR type.

Informational risk: [Mutual Information and entropy risk](https://projecteuclid.org/journals/annals-of-statistics/volume-25/issue-6/Mutual-information-metric-entropy-and-cumulative-relative-entropy-risk/10.1214/aos/1030741081.full). Pflug comes with "value of information" as a risk measure [here](https://link.springer.com/chapter/10.1007/978-3-642-55884-9_14).

Look at [tail expectiles](https://projecteuclid.org/journals/bernoulli/volume-26/issue-1/Tail-expectile-process-and-risk-assessment/10.3150/19-BEJ1137.full). Follow the references backwards and citing documents forward to know the latest developments. Maybe [this paper](https://www.jstor.org/stable/1911031?seq=5) is the first one to set up expectiles.

You should be able to answer the following questions:

1. What are the various risk measures, and what are good properties of risk measures from a finance PoV?
2. What are some examples of quantile based risk metrics? Informational ones and expectiles? How do they hold up against stable laws?
3. The commonly used notion is VaR and cVaR. Give a quick overview of what it is and how it is used. Also describe its properties and give some sample computations. Finally explain whether it is relevant for a market with stable law securities. If it is not relevant, what are alternative risk measures useful for stable law market.
4. What is your plan to reduce the underestimation of risk in a stable law market?

# Options in a stable market

Look at Non-Gaussian Merton-Black-Scholes Theory by Boryachenko and Levendorskii
