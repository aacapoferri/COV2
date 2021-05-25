
###################################################
#              COVID-19 Deaths by Region          #
#                 Version 1.0 (Jan 2021)          #
#             Written by Adam A. Capoferri        #               
###################################################

#This will graph the number of reported deaths. Currently set as a discrete time-scale but can be altered to continuous. Practice dataset is the deathbyregion.csv file.

library(ggplot2)
library(dplyr)
data2<-read.csv("~/Desktop/deathsbyregion.csv")
gg<-ggplot(data=data2, aes(x=Month, y=Sample, group=Region)) + geom_line(aes(color=Region))
gg_regioncases<-gg + ylim(0, 80000) + scale_color_manual(values=c("#FF0000", "#0000ff", "#FF00FF", "#008080")) + theme(axis.text.y=element_text(size=10), axis.text.x=element_text(size=10), axis.title=element_text(size=10), axis.text = element_text(size = 10))
p<- gg_regioncases + theme_classic() + ylab("Number of individuals") + theme(legend.title=element_blank()) + scale_x_discrete(name="Month", limits=c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug"))
p
