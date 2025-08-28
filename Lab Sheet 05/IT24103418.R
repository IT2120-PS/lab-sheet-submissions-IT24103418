#Exercise

#Question_01
setwd("C:\\Users\\user\\Desktop\\IT24103418")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
head(Delivery_Times)

#Question_02
breaks <- seq(20, 70, length.out = 10)
hist(Delivery_Times$Delivery_Time,
     breaks = breaks,
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     col = "green",
     border = "black")

#Question_03
#The distribution of delivery times is approximately symmetric and bell-shaped.Most 
#deliveries cluster around 40 minutes, with fewer very short or very long delivery times.
#This creates a slight right skew, meaning a few deliveries take longer than the typical 
#delivery time. 

#Question_04
breaks <- seq(20, 70, length.out = 10)
hist_data <- hist(Delivery_Times$Delivery_Time,
                  breaks = breaks,
                  right = FALSE,
                  plot = FALSE)
cum_freq <- cumsum(hist_data$counts)
plot(hist_data$breaks[-1], cum_freq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     col = "red", pch = 16)
