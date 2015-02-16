
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/getEd()
#

library(shiny)

shinyServer(function(input, output) {
  output$height <- renderText({
    # calculate how high the ball will reach
    h<-round(input$h+(input$v^2)/(2*9.81), digits=2)
    paste(c(h,"meters"), sep=" ")
  })
  
})
