# Define server
source("scripts/analysis.R")
source(".Renviron")

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
  
  output$news <- renderText({
    Sys.setenv("NEWS_API_KEY" = "e9521f43b756474db9c3d82833252b6f")
    news_results <- get_headlines(query = "Biden",
                                 api_key = Sys.getenv("NEWS_API_KEY"))
    response <- GET("http://newsapi.org/v2/everything?q=apple&from=2021-02-05&to=2021-02-05&sortBy=popularity&apiKey=e9521f43b756474db9c3d82833252b6f", query = news_results)
    body <- fromJSON(content(response, "text"))
    return(news_results)
  })
}