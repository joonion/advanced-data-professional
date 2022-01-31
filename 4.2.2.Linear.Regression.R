# Linear Regression

set.seed(2)
n <- 100
x <- runif(n, 0, 10)
y <- 2 + 3*x + rnorm(n, 0, 5)
df <- data.frame(x=x, y=y)
str(df)
head(df)

plot(df)

model.lm <- lm(y ~ x, data=df)
model.lm
summary(model.lm)

abline(model.lm, col="red")

# Multiple Linear Regression

set.seed(2)
n <- 10
x1 <- runif(n, 0, 10)
x2 <- runif(n, 10, 20)
x3 <- runif(n, 5, 30)
y <- 3 + 0.1*x1 + 0.2*x2 + 3*x3 + rnorm(n, 0, 5)

df <- data.frame(x1=x1, x2=x2, x3=x3, y=y)
str(df)
head(df)

model.lm <- lm(y ~ x1 + x2 + x3, data=df)
model.lm
summary(model.lm)

# 예제: 식이요법 방법을 적용한 닭 데이터

library(MASS)
data("ChickWeight")
str(ChickWeight)
class(ChickWeight)

chick <- with(ChickWeight, ChickWeight[Diet==1, ])
head(chick)

chick <- with(ChickWeight, ChickWeight[Chick==1, ])
head(chick)

# 시간의 경과에 따른 닭들의 몸무게 단순회귀분석
model.lm <- lm(weight~Time, data=chick)
model.lm

summary(model.lm)

# Polynomial Regression

data(cars)
str(cars)
head(cars)

df <- cars
df$speed2 <- cars$speed ^ 2
head(df)

model.lm <- lm(dist~speed+speed2, data=df)
model.lm

summary(model.lm)

# 예제: 주어진 데이터셋에 대한 적절한 회귀모형 찾기

x <- 1:9
y <- c(5, 3, 2, 3, 4, 6, 10, 12, 18)

df1 <- data.frame(x=x, y=y)
str(df1)
df1
plot(df1)

df2 <- cbind(df1, x2=x^2)
str(df2)
df2

model.lm1 <- lm(y~x, data=df1)
model.lm1
summary(model.lm1)
plot(model.lm1)

model.lm2 <- lm(y~x+x2, data=df2)
model.lm2
summary(model.lm2)
plot(model.lm2)
