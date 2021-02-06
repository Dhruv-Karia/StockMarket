<<<<<<< HEAD
# Define server
source("analysis.R")
server <- function(input, output) {
  output$plot <- renderPlotly({
    plot
  })
=======
server <- function(input, output) {
  
  dataInput <- reactive({
    getSymbols(input$symb, src = "yahoo", 
               from = input$dates[1],
               to = input$dates[2],
               auto.assign = FALSE)
  })
  
  finalInput <- reactive({
    return(dataInput())
  })
  
  output$plot <- renderPlot({             
    candleChart(dataInput(), up.col="darkgreen",dn.col="red",theme = "white")
  })
  
  output$top_ten<-renderDataTable({
    source("scripts/top_ten.R")
    return(top)
  })
  
>>>>>>> f45bfe6a1fb4543d597d44dbac73ab67ad377fd8
}