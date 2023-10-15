library(shiny)
library(waiter)

ui <- fluidPage(
  
  useWaiter(),
  useHostess(),
  
  waiterShowOnLoad(
    html = tagList(    
      hostess_loader(
        "loader", 
        preset = "fan", 
        text_color = "#f2f2f2",
        class = "label-center",
        center_page = TRUE
      ),
      br(),
      tagAppendAttributes(style = "margin-left:-50px",
                          p(
                            sample(
                              c(
                                "We're loading the app. Fetching stardust...",
                                "The app is almost ready. Summoning unicorns...",
                                "Hold on, the app is being loaded! Chasing rainbows...",
                                "Loading the app: sending telepathic messages...",
                                "We're loading the app: teaching squirrels to water ski...",
                                "App is loading! Counting clouds...",
                                "We're preparing the app for you, that means: taming wild pixels..."
                              ),
                              1)
                          ))
    )
  ),
  
  h1('Welcome to my app!')
  
)

server <- function(input, output){
  hostess <- Hostess$new("loader")
  
  for(i in 1:10){
    Sys.sleep(runif(1) / 2)
    hostess$set(i * 10)
    if(i == 10) {
      waiter_hide()
    }
  }
  }

shinyApp(ui, server)