

library(tidyquant)
library(dplyr)
library(ggplot2)

# 1. Define tickers
tickers <- c("AAPL", "AMZN", "GOOGL", "TSLA", "META", "MSFT", "NVDA", "SPY")

# 2. Download daily stock price data from Yahoo Finance
prices <- tq_get(
  tickers,
  from = "2020-01-01",
  to = Sys.Date(),
  get = "stock.prices"
)
# 3. Check the data
head(prices)

ggplot(prices, aes(x = date, y = adjusted, color = symbol)) +
  geom_line() +
  labs(
    title = "Adjusted Stock Prices from Yahoo Finance",
    x = "Date",
    y = "Adjusted Price",
    color = "Ticker"
  ) +
  theme_minimal()
