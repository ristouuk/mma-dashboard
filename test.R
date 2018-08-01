library(readr)
ufc_data <- read_csv("data/ufc data - Sheet1.csv")
View(ufc_data)

library(tidyverse)
ufc_data$method_d[grepl("Rear-Naked Choke", ufc_data$method_d)] <- "Rear-Naked Choke"
ufc_data$method_d[grepl("Rear Naked Choke", ufc_data$method_d)] <- "Rear-Naked Choke"
ufc_data$method_d[grepl("Guillotine Choke", ufc_data$method_d)] <- "Guillotine Choke"
ufc_data$method_d[grepl("Armbar", ufc_data$method_d)] <- "Armbar"
ufc_data$method_d[grepl("Triangle Choke", ufc_data$method_d)] <- "Triangle Choke"
ufc_data$method_d[grepl("Kimura", ufc_data$method_d)] <- "Kimura"
ufc_data$method_d[grepl("Heel Hook", ufc_data$method_d)] <- "Heel Hook"
ufc_data$method_d[grepl("Brabo Choke", ufc_data$method_d)] <- "Brabo Choke"
ufc_data_cleaned_chokes <- ufc_data

saveRDS(ufc_data_cleaned_chokes, here::here("data", "ufc_data_cleaned_chokes.rds"))

