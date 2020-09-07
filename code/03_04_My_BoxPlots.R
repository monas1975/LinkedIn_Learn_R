pacman::p_load(pacman, tidyverse)

?diamonds
diamonds

?plot
?boxplot

boxplot(diamonds$price)

diamonds %>%
  select(price) %>%
  boxplot()

#boxplot z opcjami

diamonds%>%
  select(price) %>%
  boxplot(
    horizontal = T,
    notch = T,
    main = "boxplot dla ceny diamentow",
    sub = "(Source: ggplot2::diamonds)",
    xlab = "cena diamentow",
    col = "red3"
  )
  

#boxplots by groups
diamonds%>%
  select(color,price)%>%
  plot()


diamonds%>%
  select(color,price)%>%
  boxplot(
    price ~ color, #tylda wskazuje na formule
    data = . ,
    col ="red3"
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