# NUMBER 1

mean <- 200
sd <- 16

# P(X>224)
a <- 1- pnorm(224, mean, sd)

# P(186<X<224)
b <- pnorm(224, mean, sd) - pnorm(186, mean, sd)

# P(X<=k)=0.25
c <- qnorm(0.25, mean, sd)

# P(X<240|X>210)
d <- (pnorm(240, mean, sd)-pnorm(210, mean,sd))/(1-pnorm(210, mean, sd))

# IQR
q25 <- qnorm(0.25, mean, sd)
q75 <- qnorm(0.75, mean, sd)
e <- c(round(q25, 2), round(q75, 2))

# P(X<220|X>210)
f <- (pnorm(220, mean, sd)-pnorm(210, mean,sd))/(1-pnorm(210, mean, sd))


# NUMBER 2

# 95%
mean <- 25
sd <- 12

lb <- qnorm(0.025, mean, sd)
ub <- qnorm(0.975, mean, sd)


# upper 10%

u10 <- qnorm(0.90, mean, sd)

