
pacman::p_load(pacman, tidyverse)

?diamonds
diamonds

?hist

hist(diamonds$price)

#z opcjami

hist(diamonds$price,
     breaks = 7, # na ile dzielimy
     main = "cena diamentow histogram",
     sub    = "(Source: ggplot2::diamonds)",
     ylab = "czestotliwosc",
     xlab = "cena",
     border = NA ,# brak obrysu
     col="red3"
     )


# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
