library(ggplot2)
library(dplyr)
library(plotly)
colors <- c("#032c67", "#f6cd58", "#7a8ad0", "#c50712", "#ff775b", "#e99f21")
chart1 <- ggplot(Book8, aes(x = Percent, y = reorder(Newspaper, Percent), fill = Person)) + 
  geom_bar(position = "fill", stat = "identity") +
  geom_text(aes(label = paste0(round(Percent), "%")), position = position_fill(vjust = 0.5), color = "white")+
  scale_fill_manual(values = colors) +
  scale_x_continuous(labels = NULL)+ 
  theme(plot.subtitle = element_text(vjust = 1), 
        plot.caption = element_text(vjust = 1), 
        legend.title = element_blank(), 
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        legend.position = "top", 
        legend.direction = "horizontal",
        panel.background = element_blank(),
        plot.background = element_blank(),
        text = element_text(inherit = TRUE))

# Interactive chart with percent removed and only Person label removed from legend
chart2 <- ggplot(Book8, aes(x = Percent, y = reorder(Newspaper, Percent), fill = Person)) + 
  geom_bar(position = "fill", stat = "identity") +
  scale_fill_manual(values = colors) +
  scale_x_continuous(labels = NULL)+ 
  theme(plot.subtitle = element_text(vjust = 1), 
        plot.caption = element_text(vjust = 1), 
        legend.title = element_blank(), 
        axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        legend.position = "top", 
        legend.direction = "horizontal",
        panel.background = element_blank(),
        plot.background = element_blank(),
        text = element_text(inherit = TRUE)) +
  labs(fill = "")

library(ggplot2)
library(plotly)
ggplotly(chart2, tooltip = c("Percent"))














