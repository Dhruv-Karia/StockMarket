# Load libraries
library(shiny)
library(shinybusy)
library(shinythemes)
library(tidyverse)
library(rvest)
library(quantmod)
library(dplyr)
library(ggplot2)
library(DT)
library(newsanchor)
library(jsonlite)
library(httr)
library(thematic)
library(bslib)

# Source UI and server
source("app_ui.R")
source("app_server.R")

# Run shiny app
# thematic::thematic_shiny()
shinyApp(ui = ui, server = server)