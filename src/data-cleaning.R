library(tidyverse)
library(ggplot2)

cleanData <- function(data){
  
  # Data preparation
  
  # Renaming Values
  data$sex <- ifelse(data$sex==1,"male","female")
  
  data$cp <- recode(data$cp, `1`="typical-angina", `2`="atypical-angina", `3`="non-anginal-pain", `4`="asymptomatic", .default="MISSING")
  
  data$fbs <- ifelse(data$fbs==1, TRUE, FALSE)
  
  data$restecg <- recode(data$restecg, `0`="normal", `1`="ST abnormality", `2`="LVH", .default="MISSING")
  
  data$exang <- ifelse(data$exang==1, TRUE, FALSE)
  
  data$slope <- recode(data$slope, `0`="upsloping", `1`="flat", `2`="downsloping", .default="MISSING")
  
  data$ca <- as.numeric(data$ca)
  
  data$thal <- as.numeric(data$thal)
  data$thal <- recode(data$thal, `3`="normal", `6`="fixed defect", `7`="rev. defect", .default="MISSING")
  
  data$diag <- as.factor(data$diag)
  
  # missing values
  sapply(data, function(x) sum(is.na(x)))
  
  # Removing oultier values which do not lay in the (q0.25 - 1,5IQR; q0,75 + 1,5IQR) range
  dataClean <- data[!(data$chol %in% boxplot.stats(data$chol)$out),]
  dataClean <- dataClean[!(dataClean$thalach %in% boxplot.stats(dataClean$thalach)$out),]
  dataClean <- dataClean[!(dataClean$oldpeak %in% boxplot.stats(dataClean$oldpeak)$out),]
  dataClean <- dataClean[!(dataClean$trestbps %in% boxplot.stats(dataClean$trestbps)$out),]
  return(dataClean)
}

roughlyCleanData <- function(data){
  
  # Data preparation
  names(data)[1] <- "age"
  
  # missing values
  sapply(data, function(x) sum(is.na(x)))
  
  # Removing oultier values which do not lay in the (q0.25 - 1,5IQR; q0,75 + 1,5IQR) range
  dataClean <- data[!(data$chol %in% boxplot.stats(data$chol)$out),]
  dataClean <- dataClean[!(dataClean$thalach %in% boxplot.stats(dataClean$thalach)$out),]
  dataClean <- dataClean[!(dataClean$oldpeak %in% boxplot.stats(dataClean$oldpeak)$out),]
  dataClean <- dataClean[!(dataClean$trestbps %in% boxplot.stats(dataClean$trestbps)$out),]
  return(dataClean)
}



