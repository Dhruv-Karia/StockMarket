# Define server
source("analysis.R")
server <- function(input, output) {
  output$plot <- renderPlotly({
    plot
  })
}