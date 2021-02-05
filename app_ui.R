page_one <- tabPanel()

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