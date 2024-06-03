# Investment Portfolio

## Overview

This project presents an optimized investment portfolio, focusing on maximizing returns while managing risk. The analysis includes a diverse range of assets, particularly emphasizing the technology and financial sectors.

### Assets Included
- AAPL (Apple)
- AMZN (Amazon)
- CSPX.CL (SPDR S&P 500 ETF)
- GRUPOSURA.CL (Grupo Sura)
- ICOLCAP.CL (iShares COLCAP ETF)
- IUFS.CL (iShares U.S. Financials ETF)
- IUIT.CL (iShares U.S. Technology ETF)
- NU (Nubank)
- PFGRUPSURA.CL (Preferred Grupo Sura)
- UBER (Uber Technologies Inc.)
- VOO (Vanguard S&P 500 ETF)

## Optimal Portfolio Allocation

The tangency portfolio, which maximizes the Sharpe ratio, suggests the following asset allocation:

| Asset        | Weight |
|--------------|--------|
| AAPL         | 0.0%   |
| AMZN         | 0.0%   |
| CSPX.CL      | 0.0%   |
| GRUPOSURA.CL | 0.0%   |
| ICOLCAP.CL   | 0.0%   |
| IUFS.CL      | 0.0%   |
| IUIT.CL      | 36%    |
| NU           | 0%     |
| PFGRUPSURA.CL| 0.0%   |
| UBER         | 64%    |
| VOO          | 0.0%   |
| **TOTAL**    | **100%**|

## Risk and Return Analysis

The risk and return profile of the optimal portfolio is as follows:

| Metric                 | Value           |
|------------------------|-----------------|
| Risk (Standard Deviation) | 35.9304%     |
| Return (Annualized)    | 33%             |

## Efficient Frontier

The efficient frontier represents a range of portfolios that provide the highest expected return for a given level of risk. 

![Efficient Frontier](https://i.imgur.com/5fg5Nnz.png)

## Optimal Portfolio Weights

![Efficient Frontier](https://i.imgur.com/Z32RplP.png[/img])

It is observed that the Markowitz model assigned weight to companies with the best risk/return ratio and also considered the correlation between them to minimize risk. In this case, Uber and the Chilean ETF IUIT diversify into Chilean technology companies. Historically, Uber has had very high returns, albeit with moderate volatility, and IUIT has had balanced risk and return. On the other hand, although Nubank had good returns, the model decides not to allocate weight to it in the optimal portfolio due to its not high level of risk compared to the return. Finally, it should be noted that the Markowitz model uses historical data, so a more in-depth study of the companies is recommended, as stocks do not tend to behave the same way over a prolonged period of time.

## Recommendations

Based on the financial analysis, here are some key recommendations:

1. **Focus on Technology and Financial Sectors**: The optimal portfolio heavily allocates to the technology (e.g., IUIT.CL) and financial sectors (e.g., NU). This indicates a high growth potential in these areas.
2. **Diversification**: Although the optimal portfolio is concentrated in a few assets, consider diversifying further to reduce risk. Incorporate assets with lower risk profiles to balance the portfolio.
3. **Risk Management**: Carefully manage the balance between risk and return. Adjust allocations based on individual risk tolerance and prevailing market conditions.

## Detailed Analysis

For a more detailed analysis, refer to the following files:

- `Results.xlsx`: Detailed portfolio optimization results.
- `.png`: Comprehensive visualizations of the analysis.
- `Codigo_Proyect.R`: In-depth analytical procedures.

---

> **Note**: This is a preliminary analysis. Please review and validate the data and results before making any investment decisions.
