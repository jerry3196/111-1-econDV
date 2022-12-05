library(dplyr)
library(ggplot2)
X1 <- read.csv("C:/Users/User/Desktop/HPM/hp/code/虛擬變數模型/三種類型係數1.csv")

ggplot(data = X1, aes(x = 區間2, y = 係數, colour = 類型)) +
  geom_line(linetype = "dashed",size=1)+
  geom_point(shape=20,alpha=0.35,mapping=aes(color=類型,size=顯著性))+
  geom_point(shape=20,alpha=1,size=1.5,mapping=aes(color=類型))+
  labs(title = "各區間變數之係數",
       subtitle = "2013-2019",
       caption = "Source:本研究自行整理")

