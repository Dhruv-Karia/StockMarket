source("scripts/top_ten.R")

home_page <- tabPanel(
  "Twitter Analytics",
  titlePanel("Stock Visualizations"),
  fluidPage(
    sidebarLayout(
      sidebarPanel(
        helpText(
          "Select a date range and a stock to examine.
          Information collected from Yahoo Finance."
        ),
        dateRangeInput(
          "dates",
          "Date range",
          start = "2020-09-05",
          end = as.character(Sys.Date())
        ),
        selectInput("symb", "Top Stocks:",
                    c(symbols))
      ),
      mainPanel(
        plotOutput(
          "plot"
        ),
        br(),
        br()
      )
    ),
    datatable(top_table, 
              rownames = FALSE,
              options = list(searching = FALSE,
                             lengthChange = FALSE,
                             paging = FALSE,
                             initComplete = JS(
                               "function(settings, json) {",
                               "$(this.api().table().header()).css({'background-color': '#333333', 'color': '#fff'});",
                               "}")
              )
    )
  )
)




mission <- tabPanel("Mission Statement",
                    sidebarLayout(sidebarPanel(
                      h1("ABOUT US"),
                      p(
                        "We are Augene Pak, Dhruv Karia, Justin Zeng, and
                         Max Bennett. We are Informatics majors at the
                         University of Washington and are each a member of the 
                         Class of 2024."
                      ),
                      tags$img(src = "https://ischool.uw.edu/sites/default/files/2020-03/iSchool_og.png", width = "325px")
                      # https://pbs.twimg.com/profile_images/1113979497261359107/jl4sZWA8_400x400.png
                    ),
                    mainPanel(
                      h1("OUR MISSION"),
                      p("Our mission is to provide efficient, comprehensive, and
                      intuitive information regarding the effect of social media
                      exposure on the stock market."
                      ),
                      h1("ABOUT STOCKLYTICS"),
                      p("Our app uses Twitter, Reddit, and popular news sources
                        around the globe to determine which stocks were talked
                        about the most. We do not provide a predictive platform
                  that guarantees increased performance on future investments.")
                    ),
                    position = "right"))

news_page <- tabPanel("News Analytics",
                      sidebarLayout(
                        sidebarPanel(
                          h1("Choose a Company"),
                          selectInput("chooseQuery", "Options", c(symbols)),
                          h1("Choose a Source"),
                          selectInput("chooseSource", "Options", terms_sources$sources)
                        ),
                        mainPanel(
                          h1("News"),
                          dataTableOutput("news")
                        )
                      ),
)

reddit <- tabPanel("Reddit Analytics",
                   sidebarLayout(
                     sidebarPanel(
                       h1("Choose a Company"),
                       selectInput("reddit1", "Options", c(symbols)),
                       h1("Choose a Subreddit"),
                       selectInput("reddit2", "Options", c("stocks", "wallstreetbets", "investing"))
                     ),
                     mainPanel(h1("Reddit Engagement for Each Stock"),
                               withSpinner(imageOutput("r_graph"))),
                   ))

# Define UI
ui <- fluidPage(
  theme = shinytheme("yeti"),
  navbarPage("Stocklytics",
             home_page,
             news_page,
             reddit,
             mission),
  # Loading icon
  add_busy_spinner(
    spin = "fingerprint",
    color = "#333333",
    margins = c(40, 20),
    height = "5%",
    width = "5%",
    position = "bottom-right",
    timeout = 5
  )
)