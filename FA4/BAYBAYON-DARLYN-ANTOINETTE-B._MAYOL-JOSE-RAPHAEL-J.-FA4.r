# QUESTION 4

# Table 
sensor <- c(1,2,3,4)
pcent_img_supplied <- c(15,20,25,40)
pcent_rel_img <- c(50,60,80,85)

table <- matrix(c(1,15,50,2,20,15,3,25,80,4,40,85), ncol = 3, byrow = TRUE)
colnames(table) <- c("Sensor", "% of Images Supplied", "% of Relevant Images")
knitr::kable(table)

# What is the overall percentage of relevant images?

# Formula: overall_R = P(S1) * P(R|S1) + P(S2) * P(R|S2) + P(S3) * P(R|S3) + P(S4) * P(R|S4)

overall_R <- (0.15*0.5)+(0.2*0.6)+(0.25*0.8)+(0.4*0.85)
overall_R





# QUESTION 6

# Sample Space
sample_space <- c("HH", "HT", "TH", "TT")

# Given Events
E1 <- c("HH", "TT")
E2 <- c("HH", "HT")
E3 <- c("TH", "HH")

# Probability Function
get_probability <- function(event, sample_space) {
  count <- sum(sample_space %in% event)
  probability <- count / length(sample_space)
  return(probability)
}

# Probabilities for each event
P_E1 <- get_probability(E1, sample_space)
P_E2 <- get_probability(E2, sample_space)
P_E3 <- get_probability(E3, sample_space)
P_E1_E2 <- get_probability(intersect(E1, E2), sample_space)
P_E1_E3 <- get_probability(intersect(E1, E3), sample_space)
P_E2_E3 <- get_probability(intersect(E2, E3), sample_space)
P_E1_E2_E3 <- get_probability(intersect(intersect(E1, E2), E3), sample_space)

cat("P(E1):", P_E1,"; P(E2):", P_E2,"; P(E3):", P_E3,"\n",
    "P(E1 b) E2):", P_E1_E2,"; P(E1 b) E3):", P_E1_E3,"; P(E2 b) E3):", P_E2_E3,"\n",
    "P(E1 b) E2 b) E3):", P_E1_E2_E3,"\n"
    )

# Check pairwise independence
pairwise_independence <- (P_E1_E2 == P_E1 * P_E2) &
  (P_E1_E3 == P_E1 * P_E3) &
  (P_E2_E3 == P_E2 * P_E3)

# Check mutual independence
mutual_independence <- (P_E1_E2_E3 == P_E1 * P_E2 * P_E3)

cat("Pairwise Independence:", pairwise_independence, "\n",
    "Mutual Independence:", mutual_independence, "\n")
