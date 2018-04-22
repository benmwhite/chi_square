library(shiny)
library(ggplot2)
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    x <- seq(from = 0, to = 40, by = 0.05)
    y <- dchisq(x, input$deg_f)
    crit <- qchisq(input$alpha, input$deg_f, lower.tail = input$tail)
    qplot(x, y, geom = "line", xlim = c(0, 40),
          ylim = c(0, 0.3), 
          main = paste0("Chi-Square Distribution, df =", 
                       as.character(input$deg_f), 
                       ", critical value = ", 
                       as.character(round(crit, 3))),
          xlab = "chi-square", ylab = "density") + 
      geom_vline(xintercept = crit, color = "red") +
      theme_minimal() 
  })
})

