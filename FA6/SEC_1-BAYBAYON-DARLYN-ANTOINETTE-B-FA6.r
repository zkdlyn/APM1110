library(moments)
p <- 0.2
x <- rgeom(1000, p)

mean_x <- mean(x)
var_x <- var(x)
sd_x <- sd(x)

skew_x <- moments::skewness(x)
kurt_x <- moments::kurtosis(x)


print(paste("Mean:", round(mean_x, 2)))
print(paste("Variance:", round(var_x, 2)))
print(paste("Standard Deviation:", round(sd_x,2)))
print(paste("Skewness:", round(skew_x,2)))
print(paste("Kurtosis", round(kurt_x, 2)))



par(mfrow = c(1,2))

plot(table(x+1)/1000, 
     xlab = "No. of trials to success", 
     ylab = "Relative Frequency", 
     type = "h")
plot(x+1, dgeom(x, p, log = FALSE), 
     xlab = "No. of trials to success", 
     ylab = "Probability", 
     type = "h")


### II.Hypergeometric Distribution.  Consider a plant manufacturing IC chips of which 10% are expected to be defective. The chips are packed in boxes for export. Before transportation, a sample is drawn from each box. Estimate the probability that the sample contains more than 10% defectives, when:

#### 1. A sample of 10 is selected from a box of 40;

p <- 0.10
n <- 10
N <- 40
M <- p*N
m <- p*M

prob_N40 <- 1- phyper(1, M, N-M, n)
prob_N40

#### 2. A sample of 10 is selected from a box of 5000.
N2 <- 5000
M2 <- p*N2
m2 <- p*M2

prob_N5000 <- 1- phyper(1, M2, N2-M2, n)

prob_N5000



