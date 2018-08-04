#---- Functions for visualizations ----

plot_submission_victories <- function(data_ufc_method_clean = NULL) {
  data_ufc_method_clean %>% 
    filter(method == "SUB") %>%
    filter(method_d != "Punches") %>% 
    count(method_d) %>% 
    filter(n >= 10) %>%
    mutate(proportion = n / sum(n)) %>% 
    ggplot(aes(x = reorder(x = factor(method_d), X = n), y = n)) +
    geom_col(fill = "steelblue3") +
    coord_flip() +
    labs(
      x = NULL,
      y = "Count", 
      title = "Submission victories in the UFC, 1993-2016",
      caption = "Source: https://www.reddit.com/r/datasets/comments/47a7wh/ufc_fights_and_fighter_data/"
    ) +
    ylim(0, 300) +
    geom_text(aes(label = percent(proportion)),
              hjust = -0.1, vjust = 0.45, size = 3) +
    theme_minimal()
}

plot_victory_method <- function(data_ufc_method_clean = NULL) {
data_ufc_method_clean %>% 
  filter(method == c("KO", "DEC", "SUB")) %>% 
  count(method) %>% 
  mutate(proportion = n / sum(n)) %>% 
  ggplot(aes(x = method, y = n)) +
  geom_col(fill = "steelblue3") +
  labs(
    x = NULL,
    y = "Count", 
    title = "How fights are won in the UFC, 1993-2016",
    caption = "Source: https://www.reddit.com/r/datasets/comments/47a7wh/ufc_fights_and_fighter_data/"
  ) +
  scale_x_discrete(labels = c("Decision", "Knockout", "Submission")) +
    geom_text(aes(label = percent(proportion)),
              vjust = -0.9, size = 3) +    
  theme_minimal()
}
 
plot_knockout_victories <- function(data_ufc_method_clean = NULL) {
data_ufc_method_clean %>% 
  filter(method == "KO") %>% 
  count(method_d) %>% 
  filter(n > 15) %>% 
  mutate(proportion = n / sum(n)) %>%  
  ggplot(aes(x = reorder(x = factor(method_d), X = n), y = n)) +
  geom_col(fill = "steelblue3") +
  coord_flip() +
  labs(
    x = NULL,
    y = "Count", 
    title = "Knockout victories in the UFC, 1993-2016",
    caption = "Source: https://www.reddit.com/r/datasets/comments/47a7wh/ufc_fights_and_fighter_data/"
  ) +
    geom_text(aes(label = percent(proportion)),
              hjust = -0.1, vjust = 0.45, size = 3) +  
  theme_minimal()
}

plot_which_round_fights_end <- function(data_ufc_method_clean = NULL) {
data_ufc_method_clean %>% 
  select(f1name, round) %>% 
  select(-f1name) %>% 
  group_by(round) %>% 
  count(round) %>%
  ungroup(round) %>% 
  mutate(proportion = n / sum(n)) %>% 
  ggplot(aes(x = round, y = n)) +
  geom_col(fill = "steelblue3") +
  geom_text(aes(label = percent(proportion)),
            vjust = -0.9, size = 3) + 
  labs(
    x = NULL,
    y = "Count", 
    title = "Which round fights end in the UFC, 1993-2016",
    caption = "Source: https://www.reddit.com/r/datasets/comments/47a7wh/ufc_fights_and_fighter_data/"
  ) +
  theme_minimal()
}