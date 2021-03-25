library(tidyverse) # includes many useful data analysis tools
library(ggplot2)
library(GGally)

source("src/data-cleaning.R")
source("src/plots/BarPlots.R")
source("src/plots/DensityPlots.R")
source("src/plots/box-and-whiskers.R")
source("src/plots/Scatterplot-Matrix.R")
source("src/plots/2D-density.R")
source("src/plots/corelationMatrix.R")
source("src/plots/corelationPlot.R")
source("src/plots/Boxplots.R")
source("src/tests/normality_tests.R")
source("src/tests/linearCorelation.R")

# install packages:
## source("src/install-packages.R")
## installPackages()

DATA_FILE <- "data/processed.cleveland.data"

# Data import
data <- read.csv(DATA_FILE)

# Data cleaning
dataClean <- cleanData(data)
## Required for Correlation Plots (text data returns errors)
#dataRClean <- roughlyCleanData(data)

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

## Correlation Matrix
generatecorrelationMatrix(dataRClean)

## Correlation Plot
generateCorrelationPlots(dataRClean)

# Boxplots generation
generateBoxPlots(dataClean)

# Hyphotheses testing
NormalityTests(dataClean)

# Hyphotheses testing
linearCorelation (dataClean)
