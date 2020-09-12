
pacman::p_load(pacman,rio,tidyverse)

df<-import("data/StateData.xlsx")%>%
    as_tibble()%>%
    select(state_code,region,psychRegions)%>%
    mutate(psychRegions = as_factor(psychRegions))%>%
    print()

summary(df)

df%>%
  select(region)%>%
  summary()

df%>%
  select(region)%>%
  table() 

#summary factors
df%>%
  select(psychRegions)%>%
  summary()

df%>%
  select(psychRegions)%>%
  table()

#summarize multiple factors

df<-df%>%
  mutate(region=as_factor(region))%>%
  mutate(psychRegions = as_factor(psychRegions))%>%
  print()

summary(df)

# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
