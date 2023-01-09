library(dplyr)
library(ggplot2)
X1 <- read.csv("C:/Users/User/Desktop/HPM/hp/code/虛擬變數模型/三種類型係數1.csv")

ggplot(data = X1, aes(x = 區間2, y = 係數, colour = 類型)) +
  geom_line(linetype = "solid",size=0.5)+
  geom_point(shape=20,alpha=1,size=1.5,mapping=aes(color=類型))+
  geom_point(shape=20,alpha=0.35,mapping=aes(color=類型,size=變異數))+
  #geom_errorbar(mapping=aes(x=區間2, ymin=係數-sqrt(變異數), ymax=係數+sqrt(變異數)), width=5, size=1)+ 
  labs(title = "各區間變數之係數",
       subtitle = "2013-2019",
       caption = "Source:本研究自行整理")

