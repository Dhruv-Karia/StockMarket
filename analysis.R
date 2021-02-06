library(tidyverse)
library(rvest)
library(BatchGetSymbols)
library(plotly)
library(ggplot2)
library(quantmod)

content <- read_html("http://gambiste.com/")
tables <- content %>% html_table(fill = TRUE)
df <- do.call(rbind.data.frame, tables)

plot <- ggplot(df, aes(x = `3 Months perf`, y = rating)) +
  geom_point()

