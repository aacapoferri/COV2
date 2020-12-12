setwd("~/Desktop")
library(ggplot2)
cladeprop<-read.csv("~/Desktop/COVID/R scripts for analysis/cladeprop.csv")
gg<-ggplot(cladeprop, aes(x=Month, y=Percentage, fill=Clade)) + 
  geom_area(alpha=0.60 , size=0, colour=("black")) + theme_classic()
gg_new<-gg + scale_fill_brewer(palette="Set1") + theme(axis.text.y=element_text(size=12, face="bold"), axis.text.x=element_text(size=12, face="bold"), axis.title=element_text(size=12, face="bold"), axis.text = element_text(size = 12, face="bold")) + scale_x_continuous(breaks = 1:11, labels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov")) + labs(y="Proportion of Sequences")
gg_new