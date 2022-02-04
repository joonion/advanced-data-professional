#install.packages("shiny")
library(shiny)

runExample("01_hello")
runExample("02_text")
runExample("03_reactivity")

#install.packages("rsconnect")
library(rsconnect)
rsconnect::setAccountInfo(name='joonion',
                          token='36F966525B1AC7ADF2D05331A5B53F23',
                          secret='KN/FBcfbTEHDvoSNBAy8+a4t0WGBwzxz4lmacnxr')
rsconnect::deployApp('path/to/your/app')
