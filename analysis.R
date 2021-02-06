library(tidyverse)
library(rvest)
library(BatchGetSymbols)
<<<<<<< HEAD
library(quantmod)
content <- read_html("http://web.archive.org/web/20210131152856/http://gambiste.com/index.php/gambiste-daily-stock-rating/")
tables <- content %>% html_table(fill = TRUE)
df <- do.call(rbind.data.frame, tables)








=======
library(plotly)
library(ggplot2)

content <- read_html("http://web.archive.org/web/20210131152856/http://gambiste.com/index.php/gambiste-daily-stock-rating/")

tables <- content %>% html_table(fill = TRUE)
df <- do.call(rbind.data.frame, tables)
>>>>>>> dec854889d9dc4f4f5997a02965a59142adde915
