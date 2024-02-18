library(knitr)

# use R to illustrate that the probability of getting:
# TOSSING A COIN

# number of experiments 
num_exp <- 1000

# simulate experiment
coin_tosses <- sample(c("H", "T"), num_exp, replace = TRUE)

# get the cumulative percentage of heads
heads <- cumsum(coin_tosses == "H")/(1:num_exp)

# create data frame
coin_tosses_mat <- matrix(coin_tosses, ncol =1) 
coin_tosses_df <- as.data.frame(coin_tosses_mat)
colnames(coin_tosses_df) <- "Result"

coin_tosses_df[,"Cumulative % (Heads)"] <- heads
kable(head(coin_tosses_df, 50))

# plot line graph
plot(1:num_exp, heads, type = "l",
     xlab = "number of tosses", ylab = "probability of heads",
     main = "Probability of getting a head if a fair coin is tossed repeatedly")


# DRAWING RED CARD

# number of experiments 
num_exp <- 1000

# simulate experiment
draw_card <- sample(c("Spade", "Heart", "Club", "Diamond"), num_exp, replace = TRUE)
# get the cumulative percentage of red cards
red_cards <- c("Heart", "Diamond")
draw_red <- cumsum(draw_card %in% red_cards)/(1:num_exp)

# create data frame
draw_card_mat <- matrix(draw_card, ncol =1) 
draw_card_df <- as.data.frame(draw_card_mat)
colnames(draw_card_df) <- "Card"

draw_card_df[,"Cumulative % (Red Card)"] <- draw_red
kable(head(draw_card_df, 20))

plot(1:num_exp, draw_red, type = "l",
     xlab = "number of cards drawn", ylab = "probability of red cards",
     main = "Probability of drawing a red card from a well-shuffled standard deck")


# GETTING EVEN NO. ROLLING FAIR DIE

num_exp <- 1000
# simulate experiment
roll_die <- sample(c(1,2,3,4,5,6), num_exp, replace = TRUE)

# get the proportion of even numbers
even_num <- c(2,4,6)
roll_even <- cumsum(roll_die %in% even_num)/(1:num_exp)

# create data frame
roll_die_mat <- matrix(roll_die, ncol=1)
roll_die_df <- as.data.frame(roll_die_mat)
colnames(roll_die_df)<- "Result"

roll_die_df[,"Cumulative % (Even Num)"] <- roll_even
kable(head(roll_die_df, 20))


plot(1:num_exp, roll_even, type = "l",
     xlab = "number of rolls", ylab = "probability",
     main = "Probability of rolling an even number")


# An experiment consists of tossing two fair coins. Use R to simulate this experiment 100 times and obtain the relative frequency of each possible outcome. Hence, estimate the probability of getting one head and one tail in any order.


toss_two_coins <- sample(c("HT", "HH", "TH", "TT"), 100 ,replace = TRUE)


table_relfreq <- table(toss_two_coins)/100
kable(table_relfreq)
