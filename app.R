# Load libraries
library(shiny)
library(shinybusy)
library(tidyverse)
library(rvest)
library(quantmod)
library(dplyr)
library(ggplot2)


# Source UI and server
source("app_ui.R")
source("app_server.R")

# Run shiny app
shinyApp(ui = ui, server = server)