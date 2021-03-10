library(tidyverse) # includes many useful data analysis tools
library(ggplot2)

source("src/data-cleaning.R")
source("src/plots/box-and-whiskers.R")

DATA_FILE <- "data/heart.csv"


# Data import
data <- read.csv(DATA_FILE)

# Data cleaning
dataClean <- cleanData(data)

# Graph generation
generateBoxAndWhiskers(dataClean)

# Hyphotheses testing