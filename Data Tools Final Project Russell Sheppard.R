# Load the Dataset
survey

# Load Libraries

library(dplyr)
library(ggplot2)


summary(survey$family_history)
summary(survey$treatment)
summary(survey$mental_vs_physical)
summary(survey$seek_help)


ggplot(survey) + geom_bar(aes(x = family_history))

ggplot(survey) + geom_bar(aes(x = treatment))

ggplot(survey) + geom_bar(aes(x = mental_vs_physical))

ggplot(survey) + geom_bar(aes(x = seek_help))

#Plot with Line of Country and mental_vs_physical
plot(survey$Country, survey$mental_vs_physical,main="Mental Health Attitude treatment by Country", xlab = 'Country', ylab = "mental_vs_physical")
abline(lm(survey$Country~survey$mental_vs_physical), col="red")

ggplot(data=survey, aes(x = Country, y = treatment)) + geom_point() + geom_smooth()


