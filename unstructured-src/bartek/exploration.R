
library(tidyverse)
library(ggplot2)


data <- read.csv("heart.csv")
names(data)[1] <- "age"
dhist(data["sex"])

table (data$exang)

# Przygotowanie danych
# missing values
sapply(data, function(x) sum(is.na(x)))

# Renaming
data$sex <- ifelse(data$sex==1,"male","female")

data$cp <- recode(data$cp, `0`="typical-angina", `1`="atypical-angina", `2`="non-anginal-pain", `3`="asymptomatic", .default= NA)

data$fbs <- ifelse(data$fbs==1, TRUE, FALSE)

#data$restecg <- 
  
recode(data$restecg, `0`="normal", `1`="ST-T-abnormality", `2`=)

# Poszukiwanie outlierów

# normalizacja bledu

# Boxplot
# Age
ggplot(data,aes(y=age)) +
  geom_boxplot(fill="coral1")+
  theme_light()

# Resting blood Pressure
ggplot(data,aes(y=trestbps)) +
  geom_boxplot(fill="coral1")+
  theme_light()

# Cholesterole
ggplot(data,aes(y=chol)) +
  geom_boxplot(fill="coral1")+
  theme_light()

# thalach - maximum heart rate achieved
ggplot(data,aes(y=thalach)) +
  geom_boxplot(fill="coral1")+
  theme_light()

# oldpeak - ST depression induced by exercise relative to rest
ggplot(data,aes(y=oldpeak)) +
  geom_boxplot(fill="coral1")+
  theme_light()




# Categorical:
# sex, cp, fbs, restecg, exang, slope, ca? thal?


trestbpsHist <- ggplot(data,aes(x=trestbps)) +
  geom_histogram()

thalachHist <- ggplot(data,aes(x=thalach)) +
  geom_histogram()

ggplot(data,aes(y=age,group=sex)) +
  geom_boxplot(fill="coral1")+
  theme_light() +
  facet_grid(. ~ sex)

ggplot(data,aes(y=age, x=chol,group=sex)) +
  geom_density_2d_filled()+
  theme_light() +
  facet_grid(. ~ sex)




data$target

table(data)


# https://ggplot2.tidyverse.org/reference/ggsave.html

