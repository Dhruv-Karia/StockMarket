library(tidyverse)
library(rvest)
library(BatchGetSymbols)
library(plotly)

content <- read_html("http://gambiste.com/")

tables <- content %>% html_table(fill = TRUE)
df <- do.call(rbind.data.frame, tables)

# Scatter <- 