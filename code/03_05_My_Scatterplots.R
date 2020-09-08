pacman::p_load(pacman, rio, tidyverse)

#import data

df<-import("data/StateData.xlsx")%>%
        as_tibble()%>%
        select(
          state_code,
          psychRegions,
          instagram:modernDance
        )%>%
        mutate(
          psychRegions = as.factor(psychRegions)
        )%>%
         print()
  
#scatterplots
 
df%>%
  select(instagram:modernDance)%>%
  plot()

df%>%
  select(scrapbook:modernDance)%>%
  plot()


#z opcjami
df%>%
  select(scrapbook:modernDance)%>%
  plot(
   main= "Scatterplot of Google Searches by State",
   xlab = "Searches for \"scrapbook\"",
   ylab = "Searches for \"modernDance\"",
   col ="red3",
   pch = 20
  )

?pch

#dodaj regresje liniowa
df%>%
  lm(modernDance ~ scrapbook, data = .)%>%
  abline()


# REMOVE OUTLIE
df%>%
  select(state_code,scrapbook)%>%
  filter(scrapbook > 1)%>%
  print()


# Bivariate scatterplot without outlier

df%>%
  select(scrapbook:modernDance)%>%
  filter(scrapbook < 4)%>%
  plot(
    main = "Scatterplot of Google Searches by State",
    xlab = "Searches for \"scrapbook\"",
    ylab = "Searches for \"modern dance\"",
    col  = "red3",  # Color of points
    pch  = 20,   
    
  )

# Add fit line without outlier
df%>%
  filter(scrapbook <4)%>%
  lm(modernDance~scrapbook, data = .)%>%
  abline()



# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)# CLEAN UP #################################################




  