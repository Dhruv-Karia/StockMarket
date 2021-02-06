# Load libraries
library(shiny)
library(shinybusy)

# Source UI and server
source("app_ui.R")
source("app_server.R")

# Run shiny app
shinyApp(ui = ui, server = server)