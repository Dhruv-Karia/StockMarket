# Load libraries
library(shiny)
library(shinybusy)
<<<<<<< HEAD
library(shinythemes)
=======
library(tidyverse)
library(rvest)
library(quantmod)
library(dplyr)
library(ggplot2)
library(DT)

>>>>>>> f45bfe6a1fb4543d597d44dbac73ab67ad377fd8

# Source UI and server
source("app_ui.R")
source("app_server.R")

# Run shiny app
shinyApp(ui = ui, server = server)