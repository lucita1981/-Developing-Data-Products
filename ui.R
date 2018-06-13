#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


shinyUI(pageWithSidebar(

  headerPanel("Iris Clustering: Plotting Two Variables"),

  sidebarPanel(
    
    h4("* Select variables to be plotted:"),
    selectInput("x", "First Variable:", 
                list("Sepal length" = "Sepal.Length",
                     "Sepal width"  = "Sepal.Width",
                     "Petal length" = "Petal.Length",
                     "Petal width"  = "Petal.Width")),
    selectInput("y", "Second Variable:",
                list("Sepal length" = "Sepal.Length",
                      "Sepal width"  = "Sepal.Width",
                      "Petal length" = "Petal.Length",
                      "Petal width"  = "Petal.Width"))
  ),
  
  mainPanel(
    tabsetPanel(
      tabPanel("Plot", 
               plotOutput("Plot")),
      
      tabPanel("Instructions", 
              h5 ("To start, select two variables from the list."),
              h5 ("You can select among the iris variables:"),
              h6 ("1. Sepal Length"),
              h6 ("2. Sepal Width"),
              h6 ("3. Petal length"),
              h6 ("4. Petal Width"),
              h5 ("Then, you can see the plot in the plot panel using species as colors"),
              h5 ("and, the * symbols show the cluster centres,"),
              h6 ("")
    ))
  )
 )
)
