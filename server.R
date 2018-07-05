
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

## Load libraries
library(shiny)
library(ggplot2)

## Function
function(input, output) {
  dataset <- reactive({
    diamonds[sample(nrow(diamonds), input$sampleSize),]
  })
  
  output$plot <- renderPlot({
    
    p <- ggplot(dataset(), aes_string(x=input$x, y=input$y)) + geom_point(size = 5, alpha = 0.2)
    
    if (input$color != 'None')
      p <- p + aes_string(color=input$color)
    
    if (input$smooth)
      p <- p + geom_smooth()
    
    print(p)
    
  }, height=750)
  
}
