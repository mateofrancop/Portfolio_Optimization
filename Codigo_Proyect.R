## Importing Data in R

matriz.precios <- read.table("precios.csv", header=TRUE,
                        sep=";", row.names="Fecha")


## Returns Matrix

n <- nrow(matriz.precios)
n
matriz_rendimientos <- log(matriz_precios[2:n, ] / matriz_precios[1:(n-1), ])
 > View(matriz_rendimientos)

## Portfolio Performance and Volatility

rendimiento.esperado = colMeans(matriz.rendimientos)

pesos.iguales = rep(1/20, 20)


rendimiento.portafolio = t(pesos.iguales)%*%rendimiento.esperado
rendimiento.portafolio

varianza.covarianza = cov(matriz.rendimientos)
    


varianza.portafolio = t(pesos.iguales)%*%(varianza.covarianza%*%pesos.iguales)
varianza.portafolio

s.d.portafolio = sqrt(varianza.portafolio)
s.d.portafolio

# install.packages("fPortfolio")
# install.packages("timeSeries")
# install.packages("quantmod")
# install.packages("dplyr")
# install.packages("PerformanceAnalytics")
# install.packages("ggplot2")

library(fPortfolio)
library(timeSeries)
library(quantmod)
library(dplyr)
library(PerformanceAnalytics)
library(ggplot2)

# We must convert the returns matrix into a time series

matriz.rendimientos = as.timeSeries(matriz.rendimientos)

# Let's construct the efficient frontier

frontera.eficiente = portfolioFrontier(
  matriz.rendimientos, `setRiskFreeRate<-`(portfolioSpec(), 0.1225/250), 
  constraints = "LongOnly")


# Now let's plot the efficient frontier
# We only need two arguments. The first is the 'frontera.eficiente' variable we just created, and the second is

# 1: Frontera Eficiente
# 2: Portafolio de M�nima Varianza
# 3: Portafolio de Tangencia
# 4: Riesgo/Retorno de cada Acci�n
# 5: Portafolio de Pesos Iguales
# 6: Frontera de dos Activos
# 7: Portafolio Monte Carlo
# 8: Raz�n de Sharpe


plot(frontera.eficiente, c(7))
plot(frontera.eficiente, c(8))
plot(frontera.eficiente, c(1,3,7,8))

## Weights of the Portfolios on the Efficient Frontier

# Let's set the weights of the portfolios on the efficient frontier

pesos.frontera = getWeights(frontera.eficiente)
View(pesos.frontera)
write.csv(pesos.frontera, "pesosfrontera.csv")

# Let's set the risk/return points on the efficient frontier

riesgo.rendimiento.frontera = frontierPoints(frontera.eficiente)
riesgo.rendimiento.frontera
View(riesgo.rendimiento.frontera)
plot(riesgo.rendimiento.frontera)
write.csv(riesgo.rendimiento.frontera, "riesgorendimientofrontera.csv")

### Weights of the Minimum Variance and Tangency Portfolios

portafolio.var.min = minvariancePortfolio(
  matriz.rendimientos, `setRiskFreeRate<-`(portfolioSpec(), 0.0165/12), 
  constraints = "LongOnly")

pesos.var.min = getWeights(portafolio.var.min) 
View(pesos.var.min)
barplot(pesos.var.min)
pie(pesos.var.min)

portafolio.tangencia = tangencyPortfolio(
  matriz.rendimientos, `setRiskFreeRate<-`(portfolioSpec(), 0.0165/12), 
  constraints = "LongOnly")
pesos.port.tangencia = getWeights(portafolio.tangencia)
View(pesos.port.tangencia)
barplot(pesos.port.tangencia)
pie(pesos.port.tangencia)