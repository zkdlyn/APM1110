# NO.1

# read data
results <- read.table ("D:/SCHOOL FILES/3RD YR 2ND SEM/APM1110/results.txt", header = T)
# load data
results
#load library
library(moments)

attach(results)

#arch1
mean_a1 <- mean(arch1, na.rm = TRUE)
median_a1 <- median(arch1, na.rm = TRUE)
sd_a1 <- sd(arch1, na.rm = TRUE)
skew_a1 <- (3*(mean_a1 - median_a1))/sd_a1
skew_a1_exact <- skewness(arch1, na.rm = TRUE)

#arch2
mean_a2 <- mean(arch2, na.rm = TRUE)
median_a2 <- median(arch2, na.rm = TRUE)
sd_a2 <- sd(arch2, na.rm = TRUE)
skew_a2 <- (3*(mean_a2 - median_a2))/sd_a2
skew_a2_exact <- skewness(arch2, na.rm = TRUE)

#prog1
mean_p1 <- mean(prog1, na.rm = TRUE)
median_p1 <- median(prog1, na.rm = TRUE)
sd_p1 <- sd(prog1, na.rm = TRUE)
skew_p1 <- (3*(mean_p1 - median_p1))/sd_p1
skew_p1_exact <- skewness(prog1, na.rm = TRUE) 

#prog2
mean_p2 <- mean(prog2, na.rm = TRUE)
median_p2 <- median(prog2, na.rm = TRUE)
sd_p2 <- sd(prog2, na.rm = TRUE)
skew_p2 <- (3*(mean_p2 - median_p2))/sd_p2
skew_p2_exact <- skewness(prog2, na.rm = TRUE) 

#histograms
par (mfrow = c(2,2))
hist(arch1, xlab = "Architecture",
     main = " Semester 1", ylim = c(0, 35), col="lightyellow")
hist(arch2, xlab = "Architecture",
     main = " Semester 2", ylim = c(0, 35), col="lightyellow")
hist(prog1, xlab = "Programming",
     main = " ", ylim = c(0, 35), col="lightyellow")
hist(prog2, xlab = "Programming",
     main = " ", ylim = c(0, 35), col="lightyellow")

# NO.2

# read scores

f_scores <- c(57, 59, 78, 79, 60, 65, 68, 71, 75, 48, 51, 55, 56, 41, 43,
              44, 75, 78, 80, 81, 83, 83, 85)
m_scores <- c(48, 49, 49, 30, 30, 31, 32, 35, 37, 41, 86, 42, 51, 53, 56,
              42, 44, 50, 51, 65, 67, 51, 56, 58, 64, 64, 75)

# stem and leaf
stem(f_scores)
stem(m_scores)

# box plot

boxplot(f_scores, m_scores, horizontal = TRUE,
        main="Scores of 50 students in Computing",
        names = c("Females", "Males"), col = c("pink", "blue"))




