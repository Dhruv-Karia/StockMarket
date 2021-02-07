#content <- read_html("http://gambiste.com/")
#tables <- content %>% html_table(fill = TRUE)
#df <- do.call(rbind.data.frame, tables)
f <- file.choose()
df <- read.csv(f)
top <- head(df, 10)
symbols <- top[['Symbol']]