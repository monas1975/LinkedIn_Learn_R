

pacman::p_load(pacman, rio, tidyverse)

df <-import("data/StateData.xlsx")%>%
     as_tibble()%>%
     select(state_code, region, psychRegions)%>%
     mutate(psychRegions = as_factor(psychRegions))


# ANALYZE DATA #############################################

# Create contingency table

ct<- table(df$region, df$psychRegions)
ct

p_load(magritt)

ct %>%
  prop.table(1) %>%  # 1 is for row perdentages
  round(2) %>%
  multiply_by(100)

# Total percentages
ct %>%
  prop.table() %>%  # No argument for total percentages
  round(2) %>%
  multiply_by(100)


# Chi-squared testj (but n is small)
tchi <- chisq.test(ct)
tchi

# Additional tables
tchi$observed   # Observed frequencies (same as ct)
tchi$expected   # Expected frequencies
tchi$residuals  # Pearson's residual
tchi$stdres     # Standardized residual

# CLEAN UP #################################################


# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
