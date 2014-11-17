library(shiny)
shinyUI(fluidPage(
  titlePanel("Visualizing the Chi-Square Distribution"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("deg_f",
                  "degrees of freedom:",
                  min = 1,
                  max = 20,
                  value = 10,
                  step = 1)
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
))