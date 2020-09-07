

pacman::p_load(pacman, tidyverse)

?diamonds
diamonds

?plot
?barplot

plot(diamonds$cut)

diamonds%>%
  select(color)%>%
   plot()

diamonds%>%
  select(cut,price)%>%
  plot()
  
diamonds%>%
  select(clarity)%>%
  barplot()

?table

diamonds%>%
  select(clarity)%>%
  table()%>%
  barplot()

diamonds%>%
  select(clarity)%>%
  table()%>%
  sort(decreasing = TRUE)%>%
  barplot()


diamonds%>%
  select(clarity)%>%
  table()%>%
  barplot(
    main = "czystosc diamentow",
    sub ="(Source: ggplot2::diamonds)",
    horiz = T, #rysuj wykres horyzontalnie
    ylab = "czystosc",
    xlab = "czestotliwosc",
    xlim = c(0,15000), #limit dla X
    border = T,
    col = "red3"
  )



diamonds%>%
  select(color, clarity)%>%
  plot()

df<-diamonds%>%
  select(color, clarity)%>%
  table()%>%
  print()

df%>%
  barplot(legend=rownames(.))

df%>%
  barplot(
    legend=rownames(.),
    beside = T)

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

  
