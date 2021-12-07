library(tidyverse)
library(ggplot2)
library(dplyr)
library(magrittr)
library(statar)
library(RColorBrewer)

heart <- read.csv("/Users/ashleyrabanales/Projects_ST/rabanales_personal3.R/heart_failure_clinical_records_dataset.csv")

head(heart)

#creating new groups for age
heart2 <- heart %>%
  mutate(age_group = case_when(
     age <= 50 ~ "40-50",
     age <= 64 ~ "50-64",
     age >= 65 ~"65+"
  )) 

#rearranging/ might not be needed..?
heart2 %>%
  mutate(sex2 = case_when(
      sex == '1' ~ "Men",
      sex == '0' ~ "Women"
  ))

head(heart$age_group)
head(heart$sex)
print(heart$sex2)

head()

#scatter plot
heart2$sex <- factor(heart2$sex, levels = c("0", "1"),
                       labels = c("Female", "Male"))
ggplot(heart2, mapping = aes(x = creatinine_phosphokinase,
 y = platelets/10, color = age_group)) +
  geom_point(size = 1) +
  theme_bw() +
  facet_wrap(~sex, nrow = 1) +
  labs(
    title = "Counts of CPK and Platelets in Age Group",
    caption = "Data from FiveThirtyEight.",
    tag = "Figure 1:",
    x = "Creatine Phosphokinase (CPK)",
    y = "Platelets",
    color = "Age") +
  scale_color_brewer(palette = "Set2")

ggsave(file = "fig_1R.png", width = 8, height = 5)

#############################

head(heart2)
tab(heart2, sex)
tab(heart2, anaemia)
tab(heart2, high_blood_pressure)
##fig 2. barplot
#grouping time 
heart3 <- heart2 %>%
  mutate(new_time = case_when(
     time <= 57 ~ "4-57 days",
     time <= 114 ~ "58-114 days",
     time <= 171 ~ "115-171 days",
     time <= 228 ~ "172-228 days",
     time >=  229 ~"229+ days"
  ))

########
##releveling the group 
library(forcats)
library(ggplot2)


heart3$DEATH_EVENT <- factor(heart3$DEATH_EVENT, levels = c("0", "1"),
                       labels = c("No", "Yes"))
ggplot(data = heart3) +
  geom_bar(mapping = aes(x = new_time, fill = DEATH_EVENT),
  position = "dodge") +
  facet_wrap(~ sex, nrow = 2) +
  scale_fill_brewer(palette = "Set3") + 
    labs(
    title = "Follow-up Period (days) by Patient Deceased",
    caption = "Data from FiveThirtyEight.",
    tag = "Figure 2:",
    x = "Days",
    y = "Count",
    fill = "Death Occured") + theme_bw()


  ggsave(file = "fig_2R.png", width = 8, height = 5)


#fig 3. ling graph
heart2$diabetes <- factor(heart2$diabetes, levels = c("0", "1"),
                       labels = c("No - Diabetes", "Yes - Diabetes"))
ggplot(data = heart2) + 
  geom_point(mapping = aes(x = serum_sodium, y = serum_creatinine, color = age_group)) +
  geom_smooth(mapping = aes(x = serum_sodium, 
  y =  serum_creatinine, color = age_group)) +
    facet_wrap(~diabetes, nrow = 1) +
  labs(
    title = "Serum Sodium and Creatinine in Diabetes",
    caption = "Data from FiveThirtyEight.",
    tag = "Figure 3:",
    x = "Serum Sodium",
    y = "Serum Creatinine",
    color = "Diabetes by Age Group") +
  scale_color_brewer(palette = "Paired")

ggsave(file = "fig_3R.png", width = 8, height = 4)
  

