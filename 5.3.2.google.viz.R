#install.packages("googleVis")
library(googleVis)

data("Fruits")
str(Fruits)
head(Fruits)

# Flash charts are no longer supported by most browsers.
# An alternative is plotly::ggplotly.

??gvisMotion
m1 <- gvisMotionChart(Fruits, idvar = "Fruit", timevar = "Year")
plot(m1)

# 지오차트 그리기

data("Exports")
str(Exports)
head(Exports)

g1 <- gvisGeoChart(Exports,
                   locationvar = "Country",
                   colorvar = "Profit")
plot(g1)

g2 <- gvisGeoChart(Exports, "Country", "Profit",
                   options = list(region = "150"))
plot(g2)

require(datasets)
str(state.name)
str(state.x77)
head(state.x77)
states <- data.frame(state.name, state.x77)
str(states)
head(states)

g3 <- gvisGeoChart(states, "state.name", "Illiteracy",
                   options = list(region = "US",
                                  displayMode = "regions",
                                  resolution = "provinces",
                                  width = 600,
                                  height = 400))
plot(g3)

data("CityPopularity")
str(CityPopularity)
head(CityPopularity)

colaxis <- "{values:[200,400,600,800],colors:['red','pink','orange','green']}"
colaxis
g4 <- gvisGeoChart(CityPopularity, locationvar = "City", colorvar = "Popularity",
                   options = list(region = "US",
                                  displayMode = "Markers",
                                  height = 350,
                                  colorAxis = colaxis))
plot(g4)

data("Andrew")
str(Andrew)
head(Andrew)

g5 <- gvisGeoChart(Andrew, "LatLong", "Speed_kt", 
                   options = list(region = "US"))
plot(g5)

g6 <- gvisGeoChart(Andrew, "LatLong", 
                   sizevar = "Speed_kt", colorvar = "Pressure_mb",
                   options = list(region = "US"))
plot(g6)

require(stats)
data(quakes)
str(quakes)
head(quakes)

df <- quakes
df$latlong <- paste(quakes$lat, quakes$long, sep = ":")
head(df)

g7 <- gvisGeoChart(df, "latlong", "depth", "mag",
                   options = list(displayMode = "Markers", 
                                  region = "009",
                                  colorAxis = "{colors:['red','grey']}",
                                  backgroundColor = "lightblue"))

plot(g7)
