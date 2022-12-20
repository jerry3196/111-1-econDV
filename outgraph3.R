library(dplyr)
library(ggplot2)
X1 <- read.csv("C:/Users/User/Desktop/HPM/hp/code/虛擬變數模型/各年度各型態交易紀錄.csv")
ggplot(data = X1, aes(x = 年分, y = 交易數, colour = 型態)) +
  geom_line(linetype = "solid",size=0.5)+
  geom_point(shape=20,mapping=aes(color=型態,size=交易數))+
  scale_x_continuous(breaks=seq(102,108,1),limits=c(102,108))
  labs(title = "各區間變數之係數",
       subtitle = "2013-2019",
       caption = "Source:本研究自行整理")
