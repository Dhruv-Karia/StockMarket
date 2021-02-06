source("scripts/top_ten.R")
home_page <- tabPanel(
  "Overview",
  titlePanel("Stock Visualizations"),
  sidebarLayout(
    sidebarPanel(
      helpText(
        "Select a date range and a stock to examine.
        Information collected from Yahoo Finance."
      ),
      #textInput("symb", "Symbol", "AMC"),
      dateRangeInput(
        "dates",
        "Date range",
        start = "2013-01-01",
        end = as.character(Sys.Date())
      ),
      
      selectInput("symb", "Top Stocks:",
                  c(symbols)),
      
      actionButton("get", "Get Stock"),
      br(),
      br(),
      checkboxInput("log", "Plot y axis on log scale",
                    value = FALSE)
    ),
    
    mainPanel(
      plotOutput("plot"),
      br(),
      br(),
      DT::dataTableOutput("top_ten")
    ),
  )
)

page_two <- tabPanel("Mission Statement",
                     sidebarLayout(sidebarPanel(
                       h1("About Us:"),
                       p(
                         "We are Augene Pak, Dhruv Karia, Justin Zeng, and
                         Max Bennett. We are Informatics majors in the
                         University of Washington and are each a member of the
                         Information School's class of 2024."
                       )
                     ),
                     mainPanel(
                       h1("Our Mission:"),
                       p(
                         "Lorem ipsum dolor sit amet, consectetur adipiscing
        elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        Veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
        commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
        velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
        occaecat cupidatat non proident, sunt in culpa qui officia deserunt
        mollit anim id est laborum."
                       )
                     ),
                     position = "right"))

# Define UI
ui <- fluidPage(
  theme = shinytheme("yeti"),
  navbarPage("Stocklytics",
             home_page,
             page_two),
  # Loading icon
  add_busy_spinner(
    spin = "fingerprint",
    color = "#333333",
    margins = c(40, 20),
    height = "5%",
    width = "5%",
    position = "bottom-right",
    timeout = 50
  )
)
