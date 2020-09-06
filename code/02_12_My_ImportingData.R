
# Install pacman ("package manager") if needed
if (!require("pacman")) install.packages("pacman")

# Load contributed packages with pacman

pacman::p_load(pacman,rlang, party, rio, tidyverse)


# LOAD AND PREPARE DATA ####################################

# Import CSV files with readr::read_csv() from tidyverse

library(dplyr)
df<-read_csv("data/StateData.csv")

# Import other formats with rio::import() from rio

df<-import("data/StateData.xlsx")%>%as_tibble()

#lub

df<-import("data/StateData.xlsx")%>%
          as_tibble()%>%
          select(state_code,
                 psychRegions,
                 instagram:modernDance)%>%
                 mutate(psychRegions=as.factor(psychRegions))%>%
                 rename(y=psychRegions)%>%
                 print()

# ANALYZE DATA #############################################
# Decision tree using party::ctree
# df[, -1]) excludes the state_code
#install.packages("partykit")
#library(partykit)

install.packages("multcomp")
library(multcomp)
install.packages("partykit")
library(partykit)
??ctree
fit <- ctree(y~ .,data=df[,-1])


