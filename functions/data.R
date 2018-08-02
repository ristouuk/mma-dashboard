#---- Functions for cleaning data ----

data_clean_method <- function(data_ufc = NULL) {
  
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Elbow$", "Elbows")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Rear Naked Choke", "Rear-Naked Choke")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Submission \\(Rear-Naked Choke", "Rear-Naked Choke")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Submission \\(Guillotine Choke", "Guillotine Choke")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Submission \\(Armbar", "Armbar")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Submission \\(Triangle Choke", "Triangle Choke")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Submission \\(Kimura", "Kimura")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Submission \\(Brabo Choke", "Brabo Choke")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Submission \\(Arm-Triangle Choke", "Arm-Triangle Choke")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Submission \\(Anaconda Choke", "Anaconda Choke")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Unanimous", "Points")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Decision \\(Unanimous", "Points")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Split", "Points")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Majority", "Points")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Decision \\(Majority", "Points")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Punch$", "Punches")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Elbows and Punches", "Punches and Elbows")
  data_ufc$method_d <- str_replace(data_ufc$method_d, "Knee$", "Knees")
  
}
