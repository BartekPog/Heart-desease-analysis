library(corrplot)
library(ggpubr)

generatecorrelationMatrix <- function(inputData) {
  pearsonCor<-cor(inputData)
  round(pearsonCor,2)
  corrplot(pearsonCor, method="number", type="lower")
  ggsave("images/correlationPlot.png")
}
