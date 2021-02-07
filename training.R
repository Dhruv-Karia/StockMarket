library(tidymodels)
library(purrr)
library(tidyquant)
library(tidyverse)
library(mondate)
library(data.ta)

# content <- read_html("http://gambiste.com/")
# tables <- content %>% html_table(fill = TRUE)
# df <- do.call(rbind.data.frame, tables)
df <- read.csv("data/gambiste-backup.csv")
tickers = df$Symbol[1:10]

df_adjusted <- df %>%
  select(Symbol, Score, X3.Months.Perf, Rank) %>%
  top_n(-10)
df_adjusted$Rank <- NULL

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
prices <- as.data.frame(prices)
setDT(prices, keep.rownames = "Symbol")[]

prices_df <- merge(df_adjusted, prices)


