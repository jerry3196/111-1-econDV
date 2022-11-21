library(dplyr)
library(ggplot2)
X1 <- read.csv("C:/Users/User/Desktop/HPM/hp/X1_2.csv")
X1 %>% filter(X1$mindistance1 <= 0.2)  %>% mutate(距離="200m")-> X1_200
X1 %>% filter(X1$mindistance1 <= 0.4 & X1$mindistance1 > 0.2) %>% mutate(距離="400m") -> X1_400
X1 %>% filter(X1$mindistance1 <= 0.6 & X1$mindistance1 > 0.4) %>% mutate(距離="600m")-> X1_600
X1 %>% filter(X1$mindistance1 <= 0.8 & X1$mindistance1 > 0.6) %>% mutate(距離="800m")-> X1_800
X1 %>% filter(X1$mindistance1 <= 1 & X1$mindistance1 > 0.8)  %>% mutate(距離="1000m") -> X1_1000
#X1 %>% filter(X1$mindistance1 > 1) %>% mutate(mindistance1x=6)-> X1_1001
X1 <- rbind(X1_200,X1_400)
X1 <- rbind(X1,X1_600)
X1 <- rbind(X1,X1_800)
X1 <- rbind(X1,X1_1000)
#X1 <- rbind(X1,X1_1001)
X1 %>% mutate(數量=X1$mindistance2) -> X1
X1 %>% mutate(設施="教堂") -> X1_1
X1 <- read.csv("C:/Users/User/Desktop/HPM/hp/X1_2.csv")
X1 %>% filter(X1$mindistance2 <= 0.2)  %>% mutate(距離="200m")-> X1_200
X1 %>% filter(X1$mindistance2 <= 0.4 & X1$mindistance2 > 0.2) %>% mutate(距離="400m") -> X1_400
X1 %>% filter(X1$mindistance2 <= 0.6 & X1$mindistance2 > 0.4) %>% mutate(距離="600m")-> X1_600
X1 %>% filter(X1$mindistance2 <= 0.8 & X1$mindistance2 > 0.6) %>% mutate(距離="800m")-> X1_800
X1 %>% filter(X1$mindistance2 <= 1 & X1$mindistance2 > 0.8)  %>% mutate(距離="1000m") -> X1_1000
#X1 %>% filter(X1$mindistance2 > 1) %>% mutate(mindistance1x=6)-> X1_1001
X1 <- rbind(X1_200,X1_400)
X1 <- rbind(X1,X1_600)
X1 <- rbind(X1,X1_800)
X1 <- rbind(X1,X1_1000)
#X1 <- rbind(X1,X1_1001)
X1 %>% mutate(數量=X1$mindistance1) -> X1
X1 %>% mutate(設施="寺廟") -> X1_2
X1 <- read.csv("C:/Users/User/Desktop/HPM/hp/X1_2.csv")
X1 %>% filter(X1$mindistance3 <= 0.2)  %>% mutate(距離="200m")-> X1_200
X1 %>% filter(X1$mindistance3 <= 0.4 & X1$mindistance3 > 0.2) %>% mutate(距離="400m") -> X1_400
X1 %>% filter(X1$mindistance3 <= 0.6 & X1$mindistance3 > 0.4) %>% mutate(距離="600m")-> X1_600
X1 %>% filter(X1$mindistance3 <= 0.8 & X1$mindistance3 > 0.6) %>% mutate(距離="800m")-> X1_800
X1 %>% filter(X1$mindistance3 <= 1 & X1$mindistance3 > 0.8) %>% mutate(距離="1000m") -> X1_1000
#X1 %>% filter(X1$mindistance3 > 1) %>% mutate(mindistance1x=6)-> X1_1001
X1 <- rbind(X1_200,X1_400)
X1 <- rbind(X1,X1_600)
X1 <- rbind(X1,X1_800)
X1 <- rbind(X1,X1_1000)
#X1 <- rbind(X1,X1_1001)
X1 %>% mutate(數量=X1$mindistance3) -> X1
X1 %>% mutate(設施="清真寺") -> X1_3
X1<-rbind(X1_1,X1_2)
X1<-rbind(X1,X1_3)

colnames(X1)[47]

ggplot(data=X1,mapping=aes(x=距離, y=設施))+
  geom_point(shape=20,alpha=0.5,mapping=aes(color=距離,size=數量))+
  geom_point(#shape=20,#size=1,
  mapping=aes(color=距離))
