<<<<<<< HEAD
page_one <- tabPanel(
  "ScatterD3 Graph",
  sidebarLayout(
    sidebarPanel(
      helpText("Select a stock to examine. 
        Information will be collected from yahoo finance."),
      
      textInput("symb", "Symbol", "SPY"),
      
      dateRangeInput("dates", 
                     "Date range",
                     start = "2013-01-01", 
                     end = as.character(Sys.Date())),
      
      actionButton("get", "Get Stock"),
      
      br(),
      br(),
      
      checkboxInput("log", "Plot y axis on log scale", 
                    value = FALSE)
    ),
    
    mainPanel(plotOutput("plot"))
=======
source("analysis.R")

home_page <- tabPanel(
  "Overview",
  sidebarLayout(
    sidebarPanel(
      p("t")
    ),
    mainPanel(
      h1("title")
    )
>>>>>>> 3be5f4c3db0ad263e011031c87552d5d963c7528
  )
)

page_two <- tabPanel(
  "Mission Statement",
  sidebarLayout(
    sidebarPanel(
      h1("About Us:"),
      p("We are Augene Pak, Dhruv Karia, Justin Zeng, and Max Bennett. We are
        Informatics majors in the University of Washington and are each a member
        of the Information School's class of 2024.")
    ),
    mainPanel(
      h1("Our Mission:"),
      p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
        veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
        commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
        velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
        occaecat cupidatat non proident, sunt in culpa qui officia deserunt
        mollit anim id est laborum.")
    ),
    position = "right"
  )
)

ui <- fluidPage(
  includeCSS("style.css"),
  navbarPage(
    "Stocklytics",
    home_page,
    page_two
  ),
  add_busy_spinner(
<<<<<<< HEAD
    spin = "fingerprint",
    color = "#FFFFFF",
    margins = c(40, 20),
    height = "5%",
    width = "5%",
    position = "bottom-right",
    timeout = 50
=======
      spin = "fingerprint",
      color = "#FFFFFF",
      margins = c(40, 20),
      height = "5%",
      width = "5%",
      position = "bottom-right",
      timeout = 50
>>>>>>> 3be5f4c3db0ad263e011031c87552d5d963c7528
  )
)
