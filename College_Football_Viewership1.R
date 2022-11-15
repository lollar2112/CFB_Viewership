
install.packages('ggplot')
library('ggplot2')

B10_Reg_Overall %>%
  ggplot(aes(SCHOOL, `1M_TOT`))+
  geom_bar(stat = 'identity', position = "dodge", alpha = 0.5)+
  theme_bw()+
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  labs(title = "Big Ten Viewership by School",
       x = "School", y = "Viewers in Millions")+
  geom_label(aes(label = 1M_RS))



  

  
