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
    candleChart(dataInput(), up.col="darkgreen",dn.col="red",theme = "white", name = input$symb)
  })
  
  output$top_ten<-renderDataTable({
    source("scripts/top_ten.R")
    return(top)
  })
  
}