
pacman::p_load(pacman, rio, tidyverse)

#load and prepared data

df <-import("data/StateData.xlsx")%>%
     as_tibble()%>%
     select(
       state_code,
       psychRegions,
       instagram:modernDance
     )%>%
     mutate(psychRegions = as_factor(psychRegions))%>%
     print()

#average variables
df%>%
  mutate(
    socialMedia = (instagram + facebook + retweet)/3,
    artsCraft = (museum + scrapbook + modernDance)/3
  )%>%
  select(state_code,socialMedia,artsCraft)

#reverse coding

df%>%
  mutate(
    outgoing = (volunteering + (privacy * -1)) / 2
  )%>%
  select(state_code,outgoing,volunteering, privacy)

browseURL("https://CRAN.R-project.org/package=psych")
browseURL("https://CRAN.R-project.org/package=Scale")

# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)