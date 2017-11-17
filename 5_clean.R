# 0-Clean.R

library(dplyr)
library(lubridate)

storms <- read.csv("5_storms.csv")

storms <- storms %>% 
  mutate(time = ymd_h(paste(year, month, day, hour))) %>% 
  select(name, year, time, lat, long, pressure, wind, type)

storms <- storms %>% filter(type != "Extratropical")

write.csv(storms, file = "5_storms.csv", row.names = FALSE)
