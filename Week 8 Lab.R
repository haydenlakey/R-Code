library(forecast)
library(fpp2)
library(ggplot2)

df = wineind
autoplot(df)
mva = ma(df, 12, centre = TRUE)
mva
autoplot(df) + autolayer(mva)

decomp = decompose(df, type = c('multiplicative'))

simp_mod = snaive(df, h = 24)
autoplot(df) + autolayer(simp_mod)
