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
  )
)

page_two <- tabPanel(
  sidebarLayout(
    sidebarPanel(
      p("t")
    ),
    mainPanel(
      h1("title")
    )
  )
)

ui <- fluidPage(
  navbarPage(
    "Stocklytics",
    home_page,
    page_two
  ),
  add_busy_spinner(
      spin = "fingerprint",
      color = "#000000",
      margins = c(40, 20),
      height = "5%",
      width = "5%",
      position = "bottom-right"
  )
)
