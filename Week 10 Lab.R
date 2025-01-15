install.packages('fpp3')
library(ggplot2)
library(forecast)
library(fpp2)

df = forecast::wineind
train = window(df, start = c(1980,1), end = c(1983,12))
print(train)
autoplot(train) + ggtitle('Training Data')

test = window(df, start = c(1984,1), end = c(1985,12))
print(test)
autoplot(test) + ggtitle('Test Data')

Holty = hw(train, seasonal = c('multiplicative'), h = 24)

autoplot(train) + autolayer(Holty)

Holty[["model"]]

ggAcf(train)
accuracy(Holty, test)
