# 1. In Example 16.3 with 𝜆 = 4 per minute, use R to obtain:
lambda <- 4


# (a) P(T ≤ 0.25) = P(time between submissions is at most 15 seconds);
time_int <- 0.25

prob_lt_025 <- pexp(time_int, lambda) 
prob_lt_025

# (b) P(T > 0.5) = P(time between submissions is greater than 30 seconds);
time_int <- 0.5

prob_lt_05 <- 1- pexp(time_int, lambda) 
prob_lt_05

# (c) P(0.25 < T < 1) = P(time between submissions is between 15 seconds and 1 minute)

time_int <- 0.25
up_lim <- 1

prob_bw_025_1 <- pexp(up_lim, lambda) - pexp(time_int, lambda) 
prob_bw_025_1


# 3. The average rate of job submissions in a computer center is 2 per minute.  If it can be assumed that the number of submissions per minute has a Poisson distribution, calculate the probability that:
  
# (a)  more than two jobs will arrive in a minute; P(X>2) = 1 - P(X≤2)

lambda <- 2
prob_mt_2 <- 1-ppois(2, lambda)
prob_mt_2



# (b)  at least 30 seconds will elapse between any two jobs; P(X >= 0.5)

prob_al_05 <- 1- pexp(0.5, lambda)  
prob_al_05

# (c) less than 30 seconds will elapse between jobs; P(X<0.5)
prob_lt_05 <- pexp(0.5, lambda) 
prob_al_05

# (d) a job will arrive in the next 30 seconds, if no jobs have arrived in the last 30 seconds
prob_next_05 <- pexp(0.5, lambda)
prob_next_05

# 7. A website receives an average of 15 visits per hour, which arrive following a Poisson distribution.
lambda <- 15

# (a) Calculate the probability that at least 10 minutes will elapse without a visit.
prob_novisit_016 <- 1- pexp(0.167, lambda)
prob_novisit_016

# (b) What is the probability that in any hour, there will be less than eight visits? 
prob_lt_8visits_1hr <- ppois(7, lambda)
prob_lt_8visits_1hr

# (c) Suppose that 15 minutes have elapsed since the last visit, what is the probability that a visit will occur in the next 15 minutes.
prob_next_025 <- pexp(0.25, lambda)
prob_next_025

# (d) Calculate the top quartile, and explain what it means.
top_quartile <- qpois(0.75, lambda)
top_quartile