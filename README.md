# Detection of Excess Returns in AI-Related Stocks

## Project Overview

This project examines whether AI-related assets show statistically significant positive excess returns after major AI-related events. The project focuses on daily returns and excess returns before and after selected AI events.

## Research Question

Do AI-related assets experience significant positive excess returns relative to the market after major AI events?

## Data

Daily stock price data is collected from Yahoo Finance using the `tidyquant` package in R. The analysis uses adjusted closing prices to calculate daily log returns.

## Assets Analyzed

The project focuses on the Magnificent Seven stocks:

| Ticker | Company | AI Category |
|---|---|---|
| AAPL | Apple | AI Devices / Consumer Technology |
| AMZN | Amazon | AI Cloud / E-commerce |
| GOOGL | Alphabet | AI Search / Cloud |
| TSLA | Tesla | AI / Autonomous Driving |
| META | Meta | AI Platforms / Advertising |
| MSFT | Microsoft | AI Software / Cloud |
| NVDA | Nvidia | AI Chips / Hardware |

## Benchmark

SPY, the S&P 500 ETF, is used as the market benchmark.

## Key Events

- November 2022: Release of ChatGPT
- 2023: NVIDIA earnings announcements associated with AI growth
- April 2026: Claude Mythos Preview announcement

## Methodology

The analysis uses an event study approach with a [-10, +10] trading-day event window around each major AI-related event.

Excess returns are calculated as:

```text
Excess Return = Stock Return - SPY Return
```
A t-test will be used to test whether post-event excess returns are statistically greater than zero. A linear regression model will also be used to control for market returns:
```text
Excess Return = Stock Return - SPY Return
```
## Hypothesis

-H₀: The average post-event excess return is equal to zero.
-H₁: The average post-event excess return is greater than zero.

## Tools Used
-R
-RStudio
-tidyquant
-dplyr
-ggplot2
-Yahoo Finance data
## Current Progress
-Created RStudio project
-Downloaded stock price data
-Generated adjusted price chart
-Confirmed that the data loads correctly

