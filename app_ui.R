# source("analysis.R")
page_one <- tabPanel(
  "placeholder1",
  fluidPage(
    "bruh1"
  )
)

page_two <- tabPanel(
  "placeholder2",
  fluidPage(
    "bruh2"
  )
)

page_three <- tabPanel(
  "placeholder3",
  fluidPage(
    "bruh3"
  )
)

ui <- fluidPage(
  navbarPage(
    "STOCKLYTICS",
    page_one,
    page_three,
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