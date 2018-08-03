#---- Functions for tables ----

table_top_5_wins <- function(data_top_5_most_wins = NULL) {
  table <- data_top_5_most_wins %>% 
    count(f1name, method) %>% 
    spread(method, n, fill = as.integer(0)) %>% 
    adorn_totals(where = "col") %>% 
    arrange(-Total) 
  
names(table) <- c("Fighter", "Decisions", "Knockouts", "Other", 
                                 "Submissions", "Total") 

table <- as.data.frame(table)
  
  kable(table,  align  =  "c")  %>%
    kable_styling(full_width  =  TRUE) 
}  

