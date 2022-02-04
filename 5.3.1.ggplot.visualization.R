#install.packages("ggplot2")
library(ggplot2)

data("ChickWeight")
str(ChickWeight)
head(ChickWeight)

ggplot(data = ChickWeight,
       mapping = aes(x = Time, 
                     y = weight,
                     col = Diet,
                     group = Chick)) +
    geom_line()

ggplot(data = ChickWeight,
       mapping = aes(x = Time, 
                     y = weight,
                     col = Diet)) +
    geom_point(alph=.3) +
    geom_smooth(alpha=.2, size=1)

h <- ggplot(ChickWeight,
            aes(x = Time, y = weight, col = Diet))
h + geom_point(alpha=.3)    

h <- ggplot(ChickWeight,
            aes(x = Time, y = weight, col = Diet))
h + geom_smooth(alpha=.4, size=3)

ggplot(subset(ChickWeight, Time == 21),
       aes(x = weight, col = Diet)) +
    geom_density(size = 2)

ggplot(subset(ChickWeight, Time == 21),
       aes(x = weight, fill = Diet)) +
    geom_histogram(col = "grey", bindwidth = 50) +
    facet_grid(Diet ~ .)

ggplot(subset(ChickWeight, Time == 21),
       aes(x = weight, fill = Diet)) +
    geom_histogram(col = "grey", bindwidth = 50) +
    facet_grid(. ~ Diet)

data(mtcars)
str(mtcars)
head(mtcars)

p <- qplot(wt, mpg, col = hp, data = mtcars)
p + coord_cartesian(ylim = c(0, 40))
p + scale_color_continuous(breaks = c(100, 300))
p + guides(col = "colourbar")

m <- mtcars[1:10, ]
p %+% m

c <- ggplot(mtcars, aes(factor(cyl)))
c + geom_bar()
c + geom_bar(fill = "red")
c + geom_bar(col = "red")
c + geom_bar(fill = "yellow", col = "red")

k <- ggplot(mtcars, aes(factor(cyl), fill = factor(vs)))
k + geom_bar()

??movies
str(movies)

m <- ggplot(movies, aes(x = rating))
m + geom_histogram()
m + geom_histogram(aes(fill = ..count..))

data("economics")
str(economics)
head(economics)

b <- ggplot(economics, aes(x = date, y = unemploy))
b + geom_line()
b + geom_line(col = "red")
b + geom_line(col = "red", size = 3)
b + geom_line(col = "red", size = 2, linetype=1)
b + geom_line(col = "red", size = 2, linetype=2)
b + geom_line(col = "red", size = 2, linetype=3)
b + geom_line(col = "red", size = 2, linetype=4)

df <- data.frame(x = rnorm(5000), y = rnorm(5000))

h <- ggplot(df, aes(x, y))
h + geom_point()
h + geom_point(alpha = 0.5)
h + geom_point(alpha = 0.1)

h <- ggplot(df, aes(x, y))
h + geom_point(alpha = 0.2, col = "blue")

p <- ggplot(mtcars, aes(wt, mpg))
p + geom_point(size = 4)
p + geom_point(size = 4, aes(col = factor(cyl)))
p + geom_point(size = 4, aes(shape = factor(cyl)))

library(reshape2)
library(plyr)

rescale.01 <- function (x) (x - min(x)) / diff(range(x))
ec_scaled <- data.frame(date=economics$date,
                        colwise(rescale.01)(economics[, -(1:2)]))
ecm <- melt(ec_scaled, id = "date")

f <- ggplot(ecm, aes(date, value))
f + geom_line(aes(linetype = variable))

data(diamonds)
str(diamonds)
head(diamonds)

k <- ggplot(diamonds, aes(carat, ..density..))
k <- k + geom_histogram(binwidth = 0.2, fill = "steelblue") 
k + facet_grid(. ~ cut)
k + facet_grid(cut ~ .)

w <- ggplot(diamonds, aes(clarity, fill = cut))
w + geom_bar()
w + geom_bar(aes(order = desc(cut)))
