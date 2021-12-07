library(tidyverse)
library(ggplot)
library(dplyr)


heart <- read.csv("/Users/ashleyrabanales/Projects_ST/rabanales_personal3.R/heart_failure_clinical_records_dataset.csv")

head(heart)

heart2 <- heart %>%
  mutate(age_group = case_when(
    age < 18 ~ "young",
    age >= 18 & age < 60 ~ "adult",
    TRUE ~ "elder")
  )

heart2 %>%
  dplyr::mutate(age_group = fct_relevel(age_group,
                                        "young", "adult", "elder")) %>%

heart2 %>%
  ggplot(aes(x = high_blood_pressure, y = sex)) +
  geom_point(size = 1) +
  facet_grid(age_group)  +
  theme_bw() +
  labs(
    title = "Gun Death Rates",
    caption = "Data from FiveThirtyEight.",
    tag = "Figure 1",
    x = "Month",
    y = "Count",
    colour = "Race") +
  scale_color_brewer(palette = "Set1")

ggsave(file = "gun_visualizationR.png", width = 15, height = 7)
#line graph

