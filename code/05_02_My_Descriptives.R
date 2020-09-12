
pacman::p_load(pacman, rio, tidyverse)

df <- import("data/StateData.xlsx")%>%
       as_tibble()%>%
       select(state_code,
              psychRegions,
              instagram:modernDance)%>%
       mutate(psychRegions=as_factor(psychRegions))%>%
       print()

df%>%summary()

df%>%select(entrepreneur)%>%summary()

fivenum(df$entrepreneur)

boxplot(df$entrepreneur)
boxplot(df$entrepreneur,notch = T, horizontal = T)
boxplot.stats(df$entrepreneur)

p_load(psych)
?psych
p_help(psych,web = F)
describe(df$entrepreneur)
describe(df)

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
