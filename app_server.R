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
    candleChart(
      dataInput(),
      up.col = "darkgreen",
      dn.col = "red",
      theme = "white",
      name = input$symb
    )
  })
  
  output$news <- renderDataTable({
    Sys.setenv("NEWS_API_KEY" = "e9521f43b756474db9c3d82833252b6f")
    news_results <- get_everything(query = input$chooseQuery, source = input$chooseSource, api_key = Sys.getenv("NEWS_API_KEY"))
    articles <- news_results$results_df
    return(articles)
  })
  
  output$scatter <- renderDataTable({
    fig <- ggplot(data = df, aes(x = df$X3.Months.Perf, y = df$Score, color = Rating)) +
      geom_point()+
      labs(
        title = "Fat title",
        x = "Bruh 1",
        y = "Bruh 2"
      )
    scatter_plot <- ggplotly(fig)
    return(scatter_plot)
  })
}