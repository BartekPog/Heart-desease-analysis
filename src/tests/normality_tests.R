library(ggpubr)
library(ggplot2)

NormalityTests <- function(data)
{
  dataChol <- data[data$oldpeak != 0,]

  ggqqplot(data$age)
  ggsave("images/age_QQ_plot.png")
  ggqqplot(data$chol)
  ggsave("images/chol_QQ_plot.png")
  ggqqplot(data$trestbps)
  ggsave("images/trestbps_QQ_plot.png")
  ggqqplot(data$thalach)
  ggsave("images/thalach_QQ_plot.png")
  ggqqplot(dataChol$oldpeak)
  ggsave("images/oldpeak_QQ_plot.png")

  sink(file = "tests/Shapiro-Wilk-normality-tests.txt")
  shapiro.test(data$age)
  shapiro.test(data$chol)
  shapiro.test(data$trestbps)
  shapiro.test(data$thalach)
  shapiro.test(dataChol$oldpeak)
  sink()
}