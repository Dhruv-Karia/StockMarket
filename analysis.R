library(tidyverse)
library(rvest)
library(BatchGetSymbols)

content <- read_html("http://gambiste.com/")

tables <- content %>% html_table(fill = TRUE)
df <- do.call(rbind.data.frame, tables)


