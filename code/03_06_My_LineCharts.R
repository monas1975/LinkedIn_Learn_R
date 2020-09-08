pacman::p_load(pacman, tidyverse)

library(datasets)

?uspop
uspop

?ts #time  series

plot(uspop)

#plot with option


uspop%>%
  plot(
    main = "US Population 1790–1970 ",
    sub  = "(Source: datasets::uspop)",
    xlab = "Year",
    ylab = "Population (in millions)",
  )%>%
  abline(v = 1930, col = "red3")
  text(1930, 10, "1930", col = "red3") 
  abline(v = 1940, col = "red3")
  text(1940, 2, "1940", col = "red3")
   

  ?ts.plot
  ts.plot(uspop)
  
  
  ?plot.ts
  plot.ts(uspop)
  
  
  
  # MULTIPLE TIME SERIES #####################################

  # EuStockMarkets
  ?EuStockMarkets
  EuStockMarkets
  
  plot(EuStockMarkets)
  plot.ts(EuStockMarkets) 
  ts.plot(EuStockMarkets)
  
  # CLEAN UP #################################################
  
  # Clear environment
  rm(list = ls()) 
  
  # Clear packages
  p_unload(all)  # Remove all add-ons
  detach("package:datasets", unload = TRUE)  # For base
  
  # Clear plots
  dev.off()  # But only if there IS a plot
  
  # Clear console
  cat("\014")  # ctrl+L
  
  # Clear mind :)
  

  