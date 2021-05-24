###################################################
#               Generating Cases by Clade         #
#                 Version 1.0 (Jan 2021)          #
#             Written by Adam A. Capoferri        #               
###################################################

#This script was written to illustrate the GISAID clade of SARS-CoV-2 proportions overtime. But could be used for PANGO lineages as well. 

#Also make sure you set to the correct directory first!

#Make sure you have installed ggplot2

library(ggplot2)
cladeprop<-read.csv("~/Desktop/cladecases.csv")
gg<-ggplot(cladeprop, aes(x=Month, y=Percentage, fill=Clade), yaxp=c(0, 5000000, 200000)) + 
  geom_area(alpha=0.60 , size=0, colour=("black")) + theme_classic()
gg_new<-gg + ylim(0, 5000000) + scale_fill_brewer(palette="Set1") + theme(axis.text.y=element_text(size=12, face="bold"), axis.text.x=element_text(size=12, face="bold"), axis.title=element_text(size=12, face="bold"), axis.text = element_text(size = 12, face="bold")) + scale_x_continuous(breaks = 1:11, labels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov")) + labs(y="Projected Clade Distribution in COVID-19 Cases")
gg_new
