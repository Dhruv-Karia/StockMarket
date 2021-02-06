library(shiny)

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
  )
)
