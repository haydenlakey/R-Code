cor(multreg[1:5])
Pool = as.factor(multreg$Pool)

fit = lm(Price ~ PlotSize + FloorArea + Distance + Trees + Pool + PlotSize*FloorArea, data = multreg)

summary(fit)
confint(fit)
predict(fit)