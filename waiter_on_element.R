library(shiny)
library(waiter)

ui <- fluidPage(
  
  autoWaiter(color = "white",
             html = tagList(spin_flowers(), 
                            br(), br(),
                            tagAppendAttributes(style = "color:black", 
                                                p("Loading plot...")
                            )
             )),
  
  h1('Welcome to my app!'),
  br(),
  actionButton(inputId = "click", label = "Click me", icon = icon("rocket")),
  plotOutput("plot")
  
)
server <- function(input, output) {
  
  output$plot <- renderPlot({
    
    input$click
    
    Sys.sleep(1.5)
    plot(runif(10))
    
  })
  
}

shinyApp(ui, server)
