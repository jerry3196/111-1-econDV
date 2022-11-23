library(dplyr)
library(ggplot2)
X1 <- read.csv("C:/Users/User/Desktop/HPM/hp/X1_2.csv")
X1 %>% filter(X1$mindistance1 <= 0.2)  %>% mutate(距離=200)-> X1_2001
X1 %>% filter(X1$mindistance1 <= 0.4 & X1$mindistance1 > 0.2) %>% mutate(距離=400) -> X1_4001
X1 %>% filter(X1$mindistance1 <= 0.6 & X1$mindistance1 > 0.4) %>% mutate(距離=600)-> X1_6001
X1 %>% filter(X1$mindistance1 <= 0.8 & X1$mindistance1 > 0.6) %>% mutate(距離=800)-> X1_8001
X1 %>% filter(X1$mindistance1 <= 1 & X1$mindistance1 > 0.8)  %>% mutate(距離=1000) -> X1_10001
X1 %>% filter(X1$mindistance2 <= 0.2)  %>% mutate(距離=200)-> X1_2002
X1 %>% filter(X1$mindistance2 <= 0.4 & X1$mindistance2 > 0.2) %>% mutate(距離=400) -> X1_4002
X1 %>% filter(X1$mindistance2 <= 0.6 & X1$mindistance2 > 0.4) %>% mutate(距離=600)-> X1_6002
X1 %>% filter(X1$mindistance2 <= 0.8 & X1$mindistance2 > 0.6) %>% mutate(距離=800)-> X1_8002
X1 %>% filter(X1$mindistance2 <= 1 & X1$mindistance2 > 0.8)  %>% mutate(距離=1000) -> X1_10002
X1 %>% filter(X1$mindistance3 <= 0.2)  %>% mutate(距離=200)-> X1_2003
X1 %>% filter(X1$mindistance3 <= 0.4 & X1$mindistance3 > 0.2) %>% mutate(距離=400) -> X1_4003
X1 %>% filter(X1$mindistance3 <= 0.6 & X1$mindistance3 > 0.4) %>% mutate(距離=600)-> X1_6003
X1 %>% filter(X1$mindistance3 <= 0.8 & X1$mindistance3 > 0.6) %>% mutate(距離=800)-> X1_8003
X1 %>% filter(X1$mindistance3 <= 1 & X1$mindistance3 > 0.8) %>% mutate(距離=1000) -> X1_10003
X <- data.frame(距離.公尺=c(200,200,200,400,400,400,600,600,600,800,800,800,1000,1000,1000),
                數量=c(length(X1_2001$state),length(X1_2002$state),length(X1_2003$state),
                length(X1_4001$state),length(X1_4002$state),length(X1_4003$state),
                length(X1_6001$state),length(X1_6002$state),length(X1_6003$state),
                length(X1_8001$state),length(X1_8002$state),length(X1_8003$state),
                length(X1_10001$state),length(X1_10002$state),length(X1_10003$state)),
                設施=c("教堂","寺廟","清真寺"))
ggplot(data = X, aes(x = 距離.公尺, y = 數量, fill = 設施)) +
  geom_bar(stat = "identity")+
  scale_x_continuous(breaks=seq(0,1000,200),limits=c(100,1100))+
  labs(title = "房地產距離最近各宗教設施之距離分布圖",
       subtitle = "2013-2019",
       caption = "Source:本研究自行整理")
