source("analysis.R")
home_page <- tabPanel(
  sidebarLayout(
    "Top Recent Stock Prices",
    sidebarPanel(
      sliderInput(
        inputId = "Week",
        label = "Week Slider",
        min = 0,
        max = 52,
        value = 52
      )
    ),
    mainPanel(
      "title"
     # plotOutput(outputId = "")
    )
  )
)
page_two <- tabPanel(
  fillPage(
    title = "Your Spotify Listening Habits",
    add_busy_spinner(
      spin = "fingerprint",
      color = "#000000",
      margins = c(40, 20),
      height = "5%",
      width = "5%",
      position = "bottom-right"
    )
  )
)

ui <- fluidPage(
  navbarPage(
    page_one,
    page_two
  )
)