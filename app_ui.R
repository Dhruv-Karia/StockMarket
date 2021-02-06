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
  sidebarLayout(
    sidebarPanel(),
    mainPanel()
  )
)

ui <- fluidPage(
  navbarPage(
    page_one,
    page_two
  )
)