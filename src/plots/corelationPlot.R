library(corrplot)
library("ggpubr")

corelationPlot <- function(inputData1, inputData2, label1, label2) {
  
  ggscatter(data, x = inputData1, y = inputData2,
            add = "reg.line", conf.int = TRUE, 
            cor.coef = TRUE, cor.method = "pearson",
            xlab = label1, ylab = label2)
}