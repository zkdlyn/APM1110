
# NO. 6-------------------------------------------------------------------------

# Table

table <- matrix(c(1,15,50,2,20,15,3,25,80,4,40,85), ncol = 3, byrow = TRUE)
colnames(table) <- c("Server", "Percentage of Messages", "Percentage of errors")
knitr::kable(table)
#  What is the probability of receiving an email containing an error?
prob_error <- ((0.40*0.01)+(0.25*0.02)+(0.35*0.015))
prob_error

# What is the probability that a message will arrive without error?
prob_no_error <- 1- prob_error
prob_no_error

# If a message arrives without error, what is the probability that it was sent through server 1?
prob_m1_e <- (0.4*(1-0.01)/prob_no_error)
prob_m1_e


# NO. 9 ------------------------------------------------------------------------

# Given
P_A <- 0.20  # P(A)
P_B <- 0.70  # P(B)
P_C <- 0.10  # P(C)

P_G_given_A <- 0.10  # P(G|A)
P_G_given_B <- 0.40  # P(G|B)
P_G_given_C <- 0.20  # P(G|C)

# P(G)
P_G <- P_G_given_A * P_A + P_G_given_B * P_B + P_G_given_C * P_C
P_not_G <- 1 - P_G
cat("P(G'):",P_not_G,"\n")

# Tree Diagram
tree <- list(
  A = c(G = P_G_given_A, not_G = 1 - P_G_given_A),
  B = c(G = P_G_given_B, not_G = 1 - P_G_given_B),
  C = c(G = P_G_given_C, not_G = 1 - P_G_given_C)
)

P_B_given_G <- tree$B["G"] * P_B / P_G  # P(B|G)
P_B_given_not_G <- tree$B["not_G"] * P_B / P_not_G
P_C_given_G <- tree$C["G"] * P_C / P_G
P_C_given_not_G <- tree$C["not_G"] * P_C / P_not_G
P_not_C_given_not_G <- 1 - P_C_given_not_G

# Table
probability_table <- data.frame(
  Event = c("P(G)", "P(G')", "P(B|G)", "P(B|G')", "P(C|G)", "P(C'|G')"),
  Probability = round(c(P_G, P_not_G, P_B_given_G, P_B_given_not_G, P_C_given_G, P_not_C_given_not_G),4)
)

print(probability_table)


# NO. 13 -----------------------------------------------------------------------

# What is the probability that this spyware infects the system?
prob_infect <- (0.7*(1-0.6)) + (0.3*(1-0.8))
prob_infect

# If the spyware is detected, what is the probability that it came through the Internet?
prob_detect <- (0.7*(0.6)) + (0.3*(0.8))
prob_detect

prob_internet_detect <- (0.7*0.6)/prob_detect
prob_internet_detect
