NormalityTests <- function(data)
{
  sink(file = "tests/Shapiro-Wilk-normality-tests.txt")
  shapiro.test(data$age)
  shapiro.test(data$chol)
  shapiro.test(data$trestbps)
  shapiro.test(data$thalach)
  sink()
}