library(httr)
library(dplyr)

authentication <- readLines("v1x_key.R")
password <- authentication[2]
key <- authentication[3]

season_stats_url <- "https://api.mysportsfeeds.com/v2.0/pull/nfl/2017-2018-regular/team_stats_totals.json"

all_data_json <- GET(all_data_url, add_headers("X-API-KEY" = propublica_key))
all_data <- (content(all_data_json, "text") %>% fromJSON())$results$members[[1]]



received_json <- GET(season_stats_url, add_headers("X-API-KEY" = propublica_key)) 
  
  #content(GET(season_stats_url), "text") %>% fromJSON()
