

pacman::p_load(pacman, rio, tidyverse)

#ladowanie i przygotowywanie danych

df<-import("data/StateData.xlsx")%>%
    as_tibble()%>%
    select(
      state_code,
      psychRegions,
      instagram:modernDance
    )%>%
    mutate(psychoRegions= as_factor(psychRegions))%>%
    print()

#recode
df%>%
  mutate(relaxed = recode(psychRegions, 
                          "Relaxed and Creative" = "yes",
                          "Friendly and Conventional" = "no",
                          .default = "no"))%>%
                           select(state_code,psychRegions, relaxed)

#case_when

df2<-df%>%
     mutate(likeArts = case_when(
       museum > 1 | scrapbook > 1 | modernDance > 1 ~ "yes",
       TRUE ~ "no"))

df2%>%
  select(state_code,likeArts,museum:modernDance)%>%
  print()


# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)

