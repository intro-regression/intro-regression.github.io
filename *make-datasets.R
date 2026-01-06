## Script for making data sets used in the book---------------------------------

library(tidyverse)

## Ch 5: SLR Inference Parks data-----------------------------------------------

# read in the data
parks <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-06-22/parks.csv')

# remove dollar signs and rename variables
parks <- parks |>
  mutate(spend = str_replace(spend_per_resident_data, "\\$", ""),
         spend = as.numeric(spend), 
         playgrounds = playground_data
  ) |>
  filter(year == 2020) |>
  select(rank, city, spend, playgrounds)

parks |> write_csv("data/parks.csv")
