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
  "Mission Statement",
  sidebarLayout(
    sidebarPanel(
      h1("About Us:"),
      p("We are Augene Pak, Dhruv Karia, Justin Zeng, and Max Bennett. We are
        Informatics majors in the University of Washington and are each a member
        of the Information School's class of 2024.")
    ),
    mainPanel(
      h1("Our Mission:"),
      p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
        veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
        commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
        velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
        occaecat cupidatat non proident, sunt in culpa qui officia deserunt
        mollit anim id est laborum.")
    ),
    position = "right"
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
      position = "bottom-right",
      timeout = 50
  )
)
