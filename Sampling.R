#This graphs the number of sequences broken down by month. If can be made into a continuous axis. Practice dataset is the sampling.csv file. 

library(ggplot2)
library(dplyr)
data<-read.csv("~/Desktop/sampling.csv")
gg<-ggplot(data=data, aes(x=Month, y=Sample, group=Subset)) + geom_line(aes(color=Subset))
gg_new<-gg + ylim(0, 2200000) + scale_color_manual(values=c("#FF0000", "#000000", "#0000ff")) + theme(axis.text.y=element_text(size=10), axis.text.x=element_text(size=10), axis.title=element_text(size=10), axis.text = element_text(size = 10))
p<- gg_new + theme_classic() + scale_x_discrete(name="Month", limits=c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug")) + ylab("Number of individuals") + theme(legend.title=element_blank())
p
