
library(tidyverse)
library(ggplot2)


cleanData <- function(data){
  
  
  # Data preparation
  names(data)[1] <- "age"
  
  # missing values
  sapply(data, function(x) sum(is.na(x)))
  
  # Renaming Values
  # data$sex <- ifelse(data$sex==1,"male","female")
  
  data$cp <- recode(data$cp, `0`="typical-angina", `1`="atypical-angina", `2`="non-anginal-pain", `3`="asymptomatic", .default="MISSING")
  
  # data$fbs <- ifelse(data$fbs==1, TRUE, FALSE)
  
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
  
  # Renaming Values
  # data$sex <- ifelse(data$sex==1,"male","female")
  # data$fbs <- ifelse(data$fbs==1, TRUE, FALSE)
  
  # Removing oultier values which do not lay in the (q0.25 - 1,5IQR; q0,75 + 1,5IQR) range
  dataClean <- data[!(data$chol %in% boxplot.stats(data$chol)$out),]
  dataClean <- dataClean[!(dataClean$thalach %in% boxplot.stats(dataClean$thalach)$out),]
  dataClean <- dataClean[!(dataClean$oldpeak %in% boxplot.stats(dataClean$oldpeak)$out),]
  dataClean <- dataClean[!(dataClean$trestbps %in% boxplot.stats(dataClean$trestbps)$out),]
  return(dataClean)
}



