source("analysis.R")
home_page <- tabPanel(
  sidebarLayout(
  #   "Top Recent Stock Prices",
     sidebarPanel(
      
     ),
     mainPanel(
  #     "title"
  #    # plotOutput(outputId = "")
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
    home_page,
    page_two
  )
)