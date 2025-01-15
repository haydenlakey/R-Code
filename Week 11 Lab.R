install.packages('fpp3')
install.packages('forecast')
install.packages('ggplot2')

library(forecast)
library(fpp3)
library(ggplot2)

dt = ts(fpp3::us_change$Consumption)
autoplot(dt)
summary(dt)

ndiffs(dt)

train = window(dt, end = 170)
test = window(dt, start = 171)

ggAcf(train)
ggPacf(train)

AR1 = Arima(dt, order = c(3,0,3))
AR2 = auto.arima(dt)

print(AR1)
print(AR2)

checkresiduals(AR2)