
library(shiny)
library(shinyjs)

ui <- fluidPage(
  useShinyjs(),
  h1("Update an action button"),
  actionButton(inputId = "click", label = "Click me", icon = icon("rocket"))
)

server <- function(input, output, session) {
  
  observeEvent(input$click, {
    # Disable the button and show the spinner icon
    disable("click")
    updateActionButton(session = session, 
                       inputId = "click", 
                       label = "I'm calculating stuff!", 
                       icon = icon("sync", class = "fa-spin"))
    
    # Re-enable the button and remove the spinner icon
    delay(3000, {
      enable("click")
      updateActionButton(session = session, 
                         inputId = "click",
                         label = "click me",
                         icon = icon("rocket"))
    })

  })
  
}

shinyApp(ui, server)
