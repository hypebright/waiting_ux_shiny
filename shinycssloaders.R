library(shiny)
library(shinycssloaders)

ui <- fluidPage(
  
  h1('Welcome to my app!'),
  br(),
  actionButton(inputId = "click", label = "Click me", icon = icon("rocket")),
  withSpinner(
    plotOutput("plot"),
    type = 4,
    color = "grey",
    caption = div(strong("Loading"), br(), em("Please wait"))
  )
  
)
server <- function(input, output) {
  
  output$plot <- renderPlot({
    
    input$click
    
    Sys.sleep(1.5)
    plot(runif(10))
    
  })
  
}

shinyApp(ui, server)