
library(shiny)
library(waiter)
library(shinyjs)

ui <- fluidPage(
  
  useWaiter(),
  
  useShinyjs(),
  
  waiterShowOnLoad(
    html = tagList(spin_flowers(),
                   br(),
                   br(),
                   sample(
                     c("Reticulating Splines",
                       "Interpreting Family Values",
                       "Fabricating Imaginary Infrastructure",
                       "Recomputing Mammal Matrix",
                       "Activating Deviance Threshold",
                       "Composing Melodic Euphony",
                       "Homogenizing Interest Anatomy",
                       "Normalizing Social Network",
                       "Compiling Reticulated Splines",
                       "Simulating Program Execution"),
                     1)
    )
  ),
  
  h1('Welcome to my app!')
  
)

server <- function(input, output, session){
  
  # do some heavy server stuff here
  
  # hide the waiter 3 seconds after start-up
  delay(3000, {
    waiter_hide()
  })
  
}

shinyApp(ui, server)