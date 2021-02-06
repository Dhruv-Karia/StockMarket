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
      ),
    ),
    mainPanel(
      "title"
     # plotOutput(outputId = "")
    )
  )
)
page_two <- tabPanel(
  "Mission Statement",
  sidebarLayout(
    sidebarPanel(
      "[Where we're from / who we are]"
    ),
    mainPanel(
      "[Why we're doing this]"
    )
  )
)

ui <- fluidPage(
  navbarPage(
    page_one,
    page_two
  )
)