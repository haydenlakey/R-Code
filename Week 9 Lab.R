library(forecast)
library(fpp2)
library(ggplot2)

df = forecast::wineind
dt = window(df, start = c(1980,1), end = c(1985,12))
dt
autoplot(dt)

lamb = BoxCox.lambda(dt)
lamb
Box = BoxCox(dt, lambda = lamb)
final = diff(Box, lag = 12)

autoplot(final)

ndiffs(final)

Acf(final)
checkresiduals(final)