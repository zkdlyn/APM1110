FA8 Normal Distribution
================
Baybayon, Darlyn Antoinette B.

#### 1. An analogue signal is received at a detector, measured in microvolts, is normally distributed with mean of 200 and variance of 256.

``` r
mean <- 200
sd <- 16
```

\(a\) What is the probability that the signal will exceed 224
microvolts? **P(X\>224)**

``` r
1- pnorm(224, mean, sd)
```

    ## [1] 0.0668072

\(b\) What is the probability that the signal will be between 186 and
224 microvolts? **P(186\<X\<224)**

``` r
pnorm(224, mean, sd) - pnorm(186, mean, sd)
```

    ## [1] 0.7424058

\(c\) What is the micro voltage below which 25% of the signals will be?
**P(X\<=k)=0.25**

``` r
qnorm(0.25, mean, sd)
```

    ## [1] 189.2082

\(d\) What is the probability that the signal will be less than 240
microvolts, given that it is larger than 210 microvolts?
**P(X\<240\|X\>210)**

``` r
(pnorm(240, mean, sd)-pnorm(210, mean,sd))/(1-pnorm(210, mean, sd))
```

    ## [1] 0.9766541

\(e\) Estimate the interquartile range.

``` r
q25 <- qnorm(0.25, mean, sd)
q75 <- qnorm(0.75, mean, sd)
cat(round(q25, 2), ", ", round(q75, 2))
```

    ## 189.21 ,  210.79

\(f\) What is the probability that the signal will be less than 220
microvolts, given that it is larger than 210 microvolts?
**P(X\<220\|X\>210)**

``` r
(pnorm(220, mean, sd)-pnorm(210, mean,sd))/(1-pnorm(210, mean, sd))
```

    ## [1] 0.6027988

#### 2. A manufacturer of a particular type of computer system is interested in improving its customer support services. As a first step, its marketing department has

been charged with the responsibility of summarizing the extent of
customer problems in terms of system failures. Over a period of six
months, customers were surveyed and the amount of downtime (in minutes)
due to system failures they had experienced during the previous month
was collected. The average downtime was found to be 25 minutes and a
variance of 144. If it can be assumed that downtime is normally
distributed:

``` r
mean <- 25
sd <- 12
```

\(a\) obtain bounds which will include 95% of the downtime of all the
customers;

``` r
lb <- qnorm(0.025, mean, sd)
ub <- qnorm(0.975, mean, sd)

cat("Lower bound: ", lb)
```

    ## Lower bound:  1.480432

``` r
cat("Upper bound: ", ub)
```

    ## Upper bound:  48.51957

\(b\) obtain the bound above which 10% of the downtime is included.

``` r
qnorm(0.90, mean, sd)
```

    ## [1] 40.37862
