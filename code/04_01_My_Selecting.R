

pacman::p_load(pacman, rio, tidyverse)

df<-import("data/StateData.xlsx")%>%
   as_tibble()%>%
   select(
     state_code,
     region,
     psychRegions,
     instagram:modernDance
   )%>%
   mutate(psychRegions =as_factor(psychRegions) )%>%
   print()

#filtrowanie po 1 zmiennej
df%>%
    filter(entrepreneur > 1)%>%
    print()

df%>%
  filter(region == 'South')%>%
  print()

df%>%
  filter(psychRegions == 'Relaxed and Creative')%>%
  print()

#multiple variables

df%>%
  filter(region == "South" |
           psychRegions == "Relaxed and Creative")%>%
           print()

df%>%
  filter(region == "South" &
           psychRegions == "Relaxed and Creative")%>%
  print()

df%>%
  filter(region == "South" &
           psychRegions != "Relaxed and Creative")%>%
  print()


# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)



