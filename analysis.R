library(tidyverse)
library(rvest)
library(BatchGetSymbols)
library(plotly)
library(ggplot2)
library(quantmod)
content <- read_html("http://web.archive.org/web/20210131152856/http://gambiste.com/index.php/gambiste-daily-stock-rating/")
tables <- content %>% html_table(fill = TRUE)
df <- do.call(rbind.data.frame, tables)

<<<<<<< HEAD
# Scatter <- 
=======

>>>>>>> 76760978f265974cddc11dcf5dd125a137642587
