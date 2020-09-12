

pacman::p_load(pacman, rio, tidyverse)

df <-import("data/StateData.xlsx")%>%
     as_tibble()%>%
     select(instagram:modernDance)%>%
     print()

#korelacja
cor(df)

df%>%cor()%>%round(2)

# SINGLE CORRELATION #######################################

# Can test one pair of variables at a time
# Gives r, hypothesis test, and confidence interval
cor.test(df$instagram, df$privacy)

#p-value
p_load(Hmisc)

df%>%print()
df%>%as.matrix()%>%print()

df%>%as.matrix()%>%
  rcorr()

# CLEAN UP #################################################
# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)