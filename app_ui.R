library(shiny)

source("analysis.R")

home_page <- tabPanel(
  "Home",
  sidebarLayout(
    sidebarPanel(
      p("The Data")
    ),
    mainPanel(
      h1("title")
    )
  )
)
page_two <- tabPanel(
  "Mission Statement",
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
  )
)
