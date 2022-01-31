# descriptive statistics

data(iris)
str(iris)
head(iris)
summary(iris)

mean(iris$Sepal.Length)
median(iris$Sepal.Length)
var(iris$Sepal.Length)
sd(iris$Sepal.Length)
quantile(iris$Sepal.Length, 1/4)
quantile(iris$Sepal.Length, 3/4)
max(iris$Sepal.Length)
min(iris$Sepal.Length)

# MASS/Animals: 기초 통계량 보기

library(MASS)
data("Animals")
str(Animals)
head(Animals)
summary(Animals)
