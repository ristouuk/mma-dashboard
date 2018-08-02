#---- Functions for visualizations ----

plot_submission_victories <- function(data_ufc_method_clean = NULL) {
  data_ufc_method_clean %>% 
    filter(method == "SUB") %>%
    filter(method_d != "Punches") %>% 
    count(method_d) %>% 
    filter(n >= 10) %>% 
    ggplot(aes(x = reorder(x = factor(method_d), X = n), y = n)) +
    geom_col(fill = "steelblue3") +
    coord_flip() +
    labs(
      x = NULL,
      y = "Count", 
      title = "Submission victories in the UFC, 1993-2016",
      caption = "Source: https://www.reddit.com/r/datasets/comments/47a7wh/ufc_fights_and_fighter_data/"
    ) +
    theme_minimal()
}


