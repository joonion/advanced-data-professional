# hello_shiny/ui.R

library(shiny)

shinyUI(
    pageWithSidebar( # 1
        
        headerPanel("안녕, 샤이니!"), # 2
        
        sidebarPanel(
            sliderInput("obs", # 3
                        "관측값의 개수:", 
                        min = 1,
                        max = 1000,
                        value = 500)
        ), 
        mainPanel(
            plotOutput("distPlot")
        )
    )
)