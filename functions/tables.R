#---- Functions for tables ----

table_top_5_wins <- function(data_ufc_method_clean = NULL) {
  table <- data_ufc_method_clean %>% 
    count(f1name) %>% 
    filter(n > 16) 
  
  kable(table,  align  =  "c")   
}  
