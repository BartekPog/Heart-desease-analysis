library(tidyverse) # includes many useful data analysis tools
library(ggplot2)
library(GGally)

source("src/data-cleaning.R")
source("src/plots/box-and-whiskers.R")
source("src/plots/Scatterplot-Matrix.R")
source("src/plots/2D-density.R")
source("src/plots/BarPlots.R")

DATA_FILE <- "data/heart.csv"


# Data import
data <- read.csv(DATA_FILE)

# Data cleaning
dataClean <- cleanData(data)

# Graph generation
generateBoxAndWhiskers(dataClean)

## 2D - density plots
generate2DDensity(dataClean)

#Scatterplot Matrix generation
generateScatterPlot(dataClean)

# Barplots generation
generateBarPlots(dataClean)

# Hyphotheses testing
