
pacman::p_load(pacman, rio, tidyverse)

df <- import("data/StateData.xlsx") %>%
  as_tibble()%>%
  select(
    state_code,
    psychRegions,
    instagram:modernDance
  )%>%
  mutate(psychRegions = as.factor(psychRegions))%>%
  rename(y=psychRegions)%>%
  print()

# ANALYZE DATA #############################################
#claustering


hc <- df%>%
  dist%>% ## Compute distance/dissimilarity matrix
  hclust  # # Compute hierarchical clusters

# Plot dendrogram
hc%>%plot(labels = df$state_code)

# Draw boxes around clusters
hc%>% rect.hclust(k=2, border = "grey80")
hc%>% rect.hclust(k=3, border = "grey60")
hc%>% rect.hclust(k=4, border = "grey40")

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

