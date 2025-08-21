#Question 01
setwd("C:\\Users\\IT24103418\\Desktop\\IT24103418")
branch_data<-read.table("Exercise.txt",header =TRUE, sep=",")
head(branch_data)


#Question_02
str(branch_data)


#Question_03
boxplot(branch_data$Sales,
        main = "Boxplot of Sales",
        ylab = "Sales",
        col = "red")

#Question_04
fivenum(branch_data$Advertising)

summary(branch_data$Advertising)


IQR(branch_data$Advertising)

#Question_05
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  lower <- Q1 - 1.5 * IQR
  upper <- Q3 + 1.5 * IQR
  outliers <- x[x < lower | x > upper]
  return(outliers)
}
find_outliers(branch_data$Years)


