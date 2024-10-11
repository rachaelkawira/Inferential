datasets::ChickWeight -> chicken
summary(chicken)
colnames(chicken)
colSums(is.na(chicken))
boxplot(chicken)
unique(chicken)
anova_result <- aov(weight~Diet,data=chicken)
summary(anova_result)
lm(weight ~ Time, data = chicken)
install.packages("ggplot2")
library(ggplot2)
ggplot(chicken, aes(x = Time, y = weight)) +
  geom_point(color = "blue") +  # Scatter plot with blue points
  geom_smooth(method = "lm", color = "red", se = FALSE) +  # Adds a red linear regression line without confidence intervals
  labs(title = "Weight vs Time", x = "Time", y = "Weight") +  # Labels for the plot
  theme_minimal()
lm(weight ~ Time + Diet, data = chicken)
install.packages("lme4")
library("lme4")
lmer(weight ~ Time + (1 | Chick), data = chicken)
cor.test(chicken$weight,chicken$Time)
aggregate(weight ~ Diet, data=chicken, summary)
