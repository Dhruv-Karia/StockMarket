page_one <- tabPanel(
  "[Actual Data]"
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