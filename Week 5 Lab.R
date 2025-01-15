mean(calls$Calls)
mean(calls$Executions)

sd(calls$Calls)
sd(calls$Executions)

var(calls$Calls)
var(calls$Executions)

cor(x = calls$Calls, y = calls$Executions)
plot(x = calls$Calls, y = calls$Executions)

fit = lm(Executions ~ Calls, data = calls)

summary(fit)
anova(fit)
confint(fit)