## This repository contains programs written in R as per the lab assignments for the course of Probability and Statistics.

### Useful points:

#### On calculating probabilities for a RV X:

- P[X=c] -> Use dfunction (eg dbinom, dpois, dhyper etc)
- P[X<=c] -> Use pfunction (eg pbinom, ppois, punif etc)
- P[c1<=X<=c2] -> do pfunction(c2) - pfunction(c1)
- P[X>=c] -> Do 1 - P[X<=c]
- For random sampling -> Use rfunction (eg rbinom, rpois etc)
- For calculating wrt quartiles -> Use qfunction (eg qbinom, qhyper etc)

#### General tips:

- Not all distributions are discrete/continuous, some are always discrete and some are always continuous.
- Continuous distributions are always defined over a range, c1<=X<=c2, for these functions P[X=c] at some c is 0.
- Follow the syntax for if-elseif statements very strictly
- To use integrals you will require the pracma package on RStudio, run `install.packages("pracma")` in the command console to install it and add `library(pracma)` to your code to use it; more **importantly** in lab systems, navigate to the `Packages` tab which is next to the `Help` tab in RStudio and find pracma by scrolling through the packages and select it so it is enabled. 

### Some info about various distributions:


| **Distribution**       | **Type**      | **Key Identifiers (If not explicitly given)** | **PMF/PDF Formula** | **Support (Range of X)** | **R Functions** |
|------------------------|--------------|---------------------|----------------------|--------------------------|-----------------|
| **Binomial**          | Discrete     | Fixed number of `n` independent trials, success probability `p`, counting successes | `P(X = k) = C(n, k) * p^k * (1 - p)^(n-k)` | `X = 0,1,2,...,n` | `dbinom()`, `pbinom()`, `qbinom()`, `rbinom()` |
| **Poisson**           | Discrete     | Count of rare events over time/space, rate `λ` | `P(X = k) = (λ^k * e^(-λ)) / k!` | `X = 0,1,2,...` | `dpois()`, `ppois()`, `qpois()`, `rpois()` |
| **Geometric**         | Discrete     | Number of trials until first success | `P(X = k) = (1 - p)^(k-1) * p` | `X = 1,2,3,...` | `dgeom()`, `pgeom()`, `qgeom()`, `rgeom()` |
| **Negative Binomial** | Discrete     | Number of trials until `r` successes | `P(X = k) = C(k-1, r-1) * p^r * (1 - p)^(k-r)` | `X = r, r+1, ...` | `dnbinom()`, `pnbinom()`, `qnbinom()`, `rnbinom()` |
| **Hypergeometric**    | Discrete     | Sampling without replacement, total `N`, successes `K`, draws `n` | `P(X = k) = [C(K, k) * C(N-K, n-k)] / C(N, n)` | `X = max(0, n+K-N) to min(n, K)` | `dhyper()`, `phyper()`, `qhyper()`, `rhyper()` |
| **Uniform (Discrete)**| Discrete     | Equal probability for all values in a finite set | `P(X = x) = 1/n` | `X = x₁, x₂, ..., xₙ` | `dunif()`, `punif()`, `qunif()`, `runif()` |
| **Uniform (Continuous)** | Continuous | Equal probability density over an interval `[a, b]` | `f(x) = 1 / (b - a)` | `a ≤ x ≤ b` | `dunif()`, `punif()`, `qunif()`, `runif()` |
| **Normal (Gaussian)** | Continuous  | Bell-shaped curve, given mean `μ`, variance `σ²` | `f(x) = (1 / sqrt(2πσ²)) * exp(-(x - μ)² / (2σ²))` | `-∞ < x < ∞` | `dnorm()`, `pnorm()`, `qnorm()`, `rnorm()` |
| **Standard Normal**   | Continuous  | Special case of Normal with `μ = 0, σ² = 1` | `f(x) = (1 / sqrt(2π)) * exp(-x² / 2)` | `-∞ < x < ∞` | `dnorm()`, `pnorm()`, `qnorm()`, `rnorm()` |
| **Exponential**       | Continuous  | Waiting time between events, "memoryless" property, rate `λ` | `f(x) = λ * exp(-λx)` | `x ≥ 0` | `dexp()`, `pexp()`, `qexp()`, `rexp()` |
| **Gamma**            | Continuous  | Generalized exponential, shape `k`, scale `θ` | `f(x) = (x^(k-1) * exp(-x/θ)) / (θ^k * Γ(k))` | `x > 0` | `dgamma()`, `pgamma()`, `qgamma()`, `rgamma()` |
| **Beta**             | Continuous  | Defined on `(0,1)`, used for proportions, shape parameters `α, β` | `f(x) = (x^(α-1) * (1-x)^(β-1)) / B(α, β)` | `0 < x < 1` | `dbeta()`, `pbeta()`, `qbeta()`, `rbeta()` |
| **Chi-Square (χ²)**  | Continuous  | Sum of squared normal variables, degrees of freedom `k` | `f(x) = (x^(k/2 - 1) * exp(-x/2)) / (2^(k/2) * Γ(k/2))` | `x ≥ 0` | `dchisq()`, `pchisq()`, `qchisq()`, `rchisq()` |
| **t-Distribution**    | Continuous  | Symmetric, heavier tails than normal, degrees of freedom `ν` | `f(x) = (Γ((ν+1)/2) / (sqrt(νπ) * Γ(ν/2))) * (1 + x²/ν)^(-(ν+1)/2)` | `-∞ < x < ∞` | `dt()`, `pt()`, `qt()`, `rt()` |
| **F-Distribution**    | Continuous  | Ratio of two chi-square distributions, degrees of freedom `d₁, d₂` | `f(x) = ((d₁/d₂)^(d₁/2) * x^(d₁/2 - 1)) / (B(d₁/2, d₂/2) * (1 + (d₁x/d₂))^((d₁+d₂)/2))` | `x > 0` | `df()`, `pf()`, `qf()`, `rf()` |
