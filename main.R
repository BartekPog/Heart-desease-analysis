library(tidyverse) # includes many useful data analysis tools
library(ggplot2)
library(GGally)
#install.packages("GGally")
#install.packages("corrplot")
#install.packages("ggpubr")
source("src/data-cleaning.R")
source("src/plots/BarPlots.R")
source("src/plots/DensityPlots.R")
source("src/plots/box-and-whiskers.R")
source("src/plots/Scatterplot-Matrix.R")
source("src/plots/2D-density.R")
source("src/plots/corelationMatrix.R")
source("src/plots/corelationPlot.R")

DATA_FILE <- "data/heart.csv"


# Data import
data <- read.csv(DATA_FILE)

# Data cleaning
dataRClean <- roughlyCleanData(data)
dataClean <- cleanData(data)


# Graph generation

## Barplots generation
generateBarPlots(dataClean)

## Density Plots
generateDensityPlots(dataClean)

## Box and whisker plots
generateBoxAndWhiskers(dataClean)

## Scatterplot Matrix generation
generateScatterPlot(dataClean)

## 2D - density plots
generate2DDensity(dataClean)

## Correlation Plotting
generateCorrelationPlot(dataClean)
generatecorrelationMatrix(dataRClean)

# Hyphotheses testing
