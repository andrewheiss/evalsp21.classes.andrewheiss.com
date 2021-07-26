# Code:graph curso --------------------------------------------------------
# Load packes -------------------------------------------------------------
pacman::p_load(tidyverse, gganimate, lubridate)
# Load data ---------------------------------------------------------------

data <- read.csv(file = "https://raw.githubusercontent.com/learn-R/www-learn-R-uah/master/static/data/plan.csv", sep = ";", encoding =  "Latin-1",
                 nrows = 21)

animate(data %>% filter(!is.na(content_number)) %>% 
  mutate(unit = as_factor(unit),
           date = lubridate::dmy(date),
         group = "statistics") %>% 
ggplot(aes(x=date, y = sesion, color = unit)) + 
      geom_step(aes(group = group), size = 1.5) + 
  # geom_rect(aes(xmin = dplyr::lag(date,3), xmax = dplyr::lead(date), ymin = 1, ymax = Inf, fill = unit), 
  #           alpha = 0.1, stat = "identity", color = NA) +
  scale_x_date(date_breaks = "1 week", date_labels = "%d %b") +
  geom_point(aes(y=sesion),size = 2.2, shape = 15) +
  guides(group = F, fill = F, color = F) +
  geom_text(aes(x = date, y = 10.5, label = stringr::str_wrap(text_unit,20)),
            size = 4, fontface = "bold",
            color= "black", check_overlap = T) +
  transition_reveal(date, keep_last = T) +
  view_follow() +
  coord_cartesian(clip = 'off') + 
  labs(title = '¡Evolución del curso!', y = 'Clases', x = "fecha", caption = "por V. Andrade") + 
  theme_minimal(),  width = 900, height = 600, 
end_pause = 13,
fps = 10, rewind = FALSE, duration = 20)

anim_save(filename = "static/media/plan.gif", last_animation())
