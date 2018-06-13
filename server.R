#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
data("iris")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
    Data <- reactive({
    iris[, c(input$x, input$y)]
    })
  
  clusters <- reactive({
    kmeans(Data(), 3)
  })
  
  output$Plot <- renderPlot({  
    
    plot(Data(), col=clusters()$cluster, main = "Iris Clusters") + 
    points(clusters()$centers, pch = 8, cex = 4, lwd = 4)
    legend("topleft", legend= levels(iris$Species),col=c(1:3), pch = 16)
  })
})
  
