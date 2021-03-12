library(corrplot)
library("ggpubr")

corelationMatrix <- function(inputData) {
  
  pearsonCor<-cor(inputData)
  round(pearsonCor,2)
  
  corrplot(pearsonCor, method="number", type="lower")
}