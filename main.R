library(tidyverse) # includes many useful data analysis tools
library(ggplot2)

source("src/data-cleaning.R")
source("src/plots/box-and-whiskers.R")
<<<<<<< Updated upstream
=======
source("src/plots/Scatterplot-Matrix.R")
source("src/plots/2D-density.R")
source("src/plots/DensityPlots.R")
>>>>>>> Stashed changes

DATA_FILE <- "data/heart.csv"


# Data import
data <- read.csv(DATA_FILE)

# Data cleaning
dataClean <- cleanData(data)

## Density Plots
generateDensityPlots(dataClean)

# Graph generation
generateBoxAndWhiskers(dataClean)

# Hyphotheses testing