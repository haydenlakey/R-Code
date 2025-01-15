library(fpp2)
library(ggplot2)
library(forecast)

fit = glm(cases ~ sex + income, family = 'binomial', data = logreg)
summary(fit)

medschl = as.factor(step$medschl)
region = as.factor(step$region)

fitfull = lm(length ~ ., data = step)
summary(fitfull)

fitempty = lm(length ~ 1, data = step)

step.model = step(fitempty, formula(fitfull), direction = 'forward')
summary(step.model)