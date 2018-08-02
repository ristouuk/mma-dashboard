library(readr)
ufc_data <- read_csv("data/ufc data - Sheet1.csv")
View(ufc_data)

library(tidyverse)
  
ufc_data$method_d <- str_replace(ufc_data$method_d, "Elbow$", "Elbows")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Rear Naked Choke", "Rear-Naked Choke")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Submission \\(Rear-Naked Choke", "Rear-Naked Choke")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Submission \\(Guillotine Choke", "Guillotine Choke")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Submission \\(Armbar", "Armbar")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Submission \\(Triangle Choke", "Triangle Choke")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Submission \\(Kimura", "Kimura")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Submission \\(Brabo Choke", "Brabo Choke")


str_extract(ufc_data$method_d, "Elbow$")



saveRDS(ufc_data_cleaned_chokes, here::here("data", "ufc_data_cleaned_chokes.rds"))

