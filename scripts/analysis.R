library(tidyverse)
library(rvest)
library(quantmod)
library(ggplot2)
library(BatchGetSymbols)
library(plotly)

# comment this if gambiste is clownin us
# content <- read_html("http://gambiste.com/")

df <- read.csv("./data/scrapeddf.csv", stringsAsFactors = FALSE)

# comment this if gambiste is clownin us
# tables <- content %>% html_table(fill = TRUE)
# comment this if gambiste is clownin us 
# df <- do.call(rbind.data.frame, tables)

<<<<<<< HEAD
#content <- read_html("http://gambiste.com/")
#tables <- content %>% html_table(fill = TRUE)
#df <- do.call(rbind.data.frame, tables)
f <- file.choose()
df <- read.csv(f)

=======
>>>>>>> aceaab1fd94e078fd4f2a00d5f3d3225342369d4
top <- head(df, 10)
symbols <- top[['Symbol']]

result <- sapply(symbols, getSymbols, src = 'yahoo', auto.assign = FALSE, 
                 from = as.Date(Sys.time())-182, verbose=TRUE, simplify = FALSE)


#plot(result$SNDL, main = "Visualizations")
for (x in symbols) {
  
  candle <- candleChart(result[[x]], up.col="darkgreen",dn.col="red",theme = "white", name = x)
}


