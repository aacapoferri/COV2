library(ggplot2)
library(ggrepel)
library(dplyr)
#Phase 1: Need to calculate the proportions for each region to enter into the value=c(")
df <- data.frame(group = c("Northeast", "South", "Midwest", "West"), value = c(14.8, 18.6, 19.0, 47.6))
head(df)

bp<-ggplot(df, aes(x="", y=value, fill=group))+geom_bar(width = 1, stat="identity", color="black")
bp
pie<-bp+coord_polar("y", start=0)+theme_void()
pie_new<-pie+ scale_fill_brewer(palette="Set2")+guides(fill = guide_legend(title = "Region"))+scale_fill_discrete(breaks=c("Northeast", "South", "Midwest", "West", "Territory"))
pie_new
