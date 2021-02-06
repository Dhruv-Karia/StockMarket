# Define server
source("scripts/analysis.R")
source("apikey.R")

server <- function(input, output) {
  
  dataInput <- reactive({
    getSymbols(
      input$symb,
      src = "yahoo",
      from = input$dates[1],
      to = input$dates[2],
      auto.assign = FALSE
    )
  })
  
  finalInput <- reactive({
    return(dataInput())
  })
  
  output$plot <- renderPlot({
    candleChart(dataInput(),
                up.col = "darkgreen",
                dn.col = "red",
                theme = "white")
  })
  
  output$top_ten <- renderDataTable({
    source("scripts/top_ten.R")
    return(top)
  })
  
  output$news <- renderText({
    news_results <- get_headlines(query = input$chooseSymb,
                                 sources = input$chooseSource,
                                 api_key = Sys.getenv("NEWS_API_KEY"))
    return(news_results)
  })
}