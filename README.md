
<!-- README.md is generated from README.Rmd. Please edit that file -->

# StanDCM Package for Using Stan to Estimate Diagnostic Classification Models



## Learning resources

  - Check [Jiang and Carter’s (2019) article](https://doi.org/10.3758/s13428-018-1069-9) on Using Hamiltonian Monte Carlo to estimate the log-linear cognitive diagnosis model via Stan

## Features of the package

  - Estimating log-linear cognitive diagnosis model (LCDM; Henson, Templin, & Willse, 2009) and a variety of widely-used models subsumed
    by the LCDM, including the deterministic inputs, noisy “and” gate model (DINA; Haertel, 1989; Junker & Sijtsma, 2001; Macready & Dayton, 1977), the deterministic input, noisy “or” gate model (DINO;Templin & Henson, 2006), the deterministic “and” gate model (NIDA; Junker & Sijtsma, 2001), the compensatory reparameterized unified model (CRUM; Hartz, 2002) as well as the noncompensatory
reduced reparameterized unified model (NCRUM;DiBello, Stout, & Roussos, 1995) for dichotomous responses
  - Specifying customized prior distributions for parameters
  - Computing can be achieved in parallel environments
  - Estimating models within the LCDM model framework using user-specified design matrix
  - Estimating rating scale DCM for ordinal responses
  - Providing posterior predictive model checking (PPMC; Gelman, Meng, & Stern 1996), Watanabe-Akaike information criterion (WAIC; Watanabe, 2010) and leave-one-out cross validation (LOO)
  - Enabling group invariance estimations with different constraint specifications
   
## Installation

To install this package from source:

1)  Users need to install the
    [rstan](https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started) in order to execute the functions of StanDCM package.

2)  Windows users should avoid using space when installing rstan.

3)  After installing rstan package, users can use the lines beblow to install StanDCM package.

<!-- end list -->

``` r
# install.packages("devtools")
devtools::source_url("https://raw.githubusercontent.com/zjiang4/StanDCM/master/R/StanDCM.R")
# To use it in your local machines, please save the StanDCM.R to your local drives, and use "source(.../StanDCM.R)" in R to execute the package functions
# For example, if the StanDCM.R is saved in "C:\\Myfile", users should type source("C:/Myfile/StanDCM.R") in R
```

The parametric version of DCM R package named GDINA can be found in R CRAN at
[here](https://CRAN.R-project.org/package=GDINA)
