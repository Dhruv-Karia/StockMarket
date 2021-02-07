library(models)
library(purrr)
library(tidyquant)
library(tidyverse)
library(mondate)

# content <- read_html("http://gambiste.com/")
# tables <- content %>% html_table(fill = TRUE)
# df <- do.call(rbind.data.frame, tables)
df <- read.csv("data/gambiste-backup.csv")
tickers = df$Symbol[1:10]

df_adjusted <- select(df, Rank, Symbol, Score, X3.Months.Perf)

getSymbols(tickers,
           from = mondate(as.Date(Sys.time())) - 3,
           src = 'yahoo',
           auto.assign = TRUE,
           verbose=TRUE,
           simplify = FALSE)

prices <- map(tickers,function(x) Ad(get(x)))
prices <- reduce(prices,merge)
colnames(prices) <- tickers
prices <- t(prices)
