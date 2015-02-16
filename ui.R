# A shiny demo app that take the velocity a ball is thrown as input, and out put the height in meters that ut reaches before # falling down.
library(shiny)

shinyUI(fluidPage(
  
  # Application title
  headerPanel("Throwing a ball"),
  
  # Sidebar with a slider input for velovity value
  sidebarPanel(
        h5("This Shiny app calculate the max height of a balls curve when thrown in a set velocity. Note that the height is not dependent on the angle the ball is thrown at."),
        h6("Use the slider to set the throwing velocity of the ball. 46 m/s is the fastest recorded baseball throw. Below the slider you can enter the height above ground from where you are standing when throwing."),
        sliderInput("v",
                label="Throwing velocity (m/s)",
                min = 0,
                max = 46,
                value = 1),
        numericInput("h",
                   label="Height above ground from where the ball is thrown (m)",
                   min=0,
                  value = 0)
  ),
  
  # Output the thrown height in meters
  mainPanel(
        h4("Max thrown height in meters"),
    h1(textOutput("height"))
  )
))
