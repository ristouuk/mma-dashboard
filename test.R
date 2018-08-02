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
ufc_data$method_d <- str_replace(ufc_data$method_d, "Submission \\(Arm-Triangle Choke", "Arm-Triangle Choke")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Submission \\(Anaconda Choke", "Anaconda Choke")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Unanimous", "Points")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Decision \\(Unanimous", "Points")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Split", "Points")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Majority", "Points")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Decision \\(Majority", "Points")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Punch$", "Punches")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Elbows and Punches", "Punches and Elbows")
ufc_data$method_d <- str_replace(ufc_data$method_d, "Knee$", "Knees")


          
str_extract(ufc_data$method_d, "Knee$") %>% View



saveRDS(ufc_data_cleaned_chokes, here::here("data", "ufc_data_cleaned_chokes.rds"))

