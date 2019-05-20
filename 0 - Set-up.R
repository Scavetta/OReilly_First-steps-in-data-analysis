# 0 - Set-up

# This script resets and then populates the environment with some objects to work on
rm(list = ls())

PlantGrowth <- PlantGrowth
chickwts <- chickwts

# The USArrests data set, cleaned up, as per the help file:
arrests <- USArrests
arrests["Maryland", "UrbanPop"] <- 76.6 # correct value

## Restore the original percentages
arrests[c("Colorado", "Florida", "Mississippi", "Wyoming"), "UrbanPop"] <- arrests[c("Colorado", "Florida", "Mississippi", "Wyoming"), "UrbanPop"] + 0.5
arrests[c("Nebraska", "Pennsylvania"), "UrbanPop"] <- arrests[c("Nebraska", "Pennsylvania"), "UrbanPop"] - 0.5
library(dplyr)
arrests %>% 
  mutate(State = row.names(arrests)) %>% 
  select(State, Murder, Assault, Rape, UrbanPop) -> arrests

barley <- lattice::barley
