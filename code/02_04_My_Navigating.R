# File:     02_04_Navigating.R
# Project:  LearningR

# INSTALL AND LOAD PACKAGES ################################

# Load base packages manually
library(datasets) #ladowanie przykladowego datasetu

#ladowanie i przygotowywanie danych
?iris

df<-iris
head(df)

#analizowanie danych

hist(df$Sepal.Length, main="Histogram of Sepal.Length", xlab= "length in cm", ylab= "frequency")

#czyszczenie
# Clear environment
rm(list = ls()) 

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
