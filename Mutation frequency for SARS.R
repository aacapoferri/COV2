###################################################
# Generating Genomic Map with annotated mutations #
#                 Version 1.0 (Jan 2021)          #
#             Written by Adam A. Capoferri        #               
###################################################

#This script was written in order to run through genomic regions with frequencies of mutations annotated. This came as a necessity for additional mutational analyses for SARS-CoV-2 but can be broadly applied. I apologize in advance with how clunky the code actually is....I am sure there is a more direct way.

#Also make sure you set to the correct directory first!

#Install packages: ggplot2, ggrepel, and ggeasy
install.packages(c("ggplot2", "ggrepel", "ggeasy"))

#Access libraries
library(ggplot2)
library(ggrepel)
library(ggeasy)

#Read file for analysis: Ensure title heads from A to D are: Position, Mutation, Frequency, Gene. Column A is position. The position can be arbitrary or reflect the true genomic position. Column B is the name of the mutation. Column C is the frequency of the mutation. Column D is the name of the gene
sarscov2<-read.csv("MutationFrequency.csv") 

#This will create a generic plot of Mutation Frequency vs position. Having the column of Gene, will color the points based on the Gene 
ggplot(sarscov2, aes(x=Position, y=Frequency))+geom_point() + geom_point(aes(col=Gene), size=1.5)

#Filtering required rows. In this example, only going to filter where mutation frequency>0.05 (5%). This threshold can be changed based on the user. 
sarscov2_sub<-sarscov2[sarscov2$Frequency>0.05,]
sarscov2$Mutation<-ifelse(sarscov2$Frequency>0.05, sarscov2_sub$Mutation, "")

#Setting the base plot and changes the labels. For title change as necessary.
gg<-ggplot(sarscov2, aes(x=Position, y=Frequency)) + geom_point(aes(col=Gene), size=1) + labs(title="Clade GH", y="Relative Mutation Proportion", x="SARS-CoV-2 Genome") 

#Plot the text and label that repels (ggrepel) each other. It also keeps the gene order correct
nextgg<-gg+geom_text_repel(max.overlaps = Inf, min.segment.length = 0, aes(label=Mutation,), size=3, data=sarscov2_sub) + scale_color_discrete(breaks=c("orf1a", "orf1b", "S gene", "E gene", "M gene", "N gene")) + theme(axis.text.y=element_text(size=20, face="bold"), axis.text.x=element_text(size=15, face="bold"), axis.title=element_text(size=20, face="bold"), axis.text = element_text(size = 20, face="bold"))

#Makes an all white background.
p<- nextgg + theme_classic() + theme(axis.ticks.x = element_blank(),
                                     axis.text.x = element_blank()) 

#Setting the cartesian y-axis from 0 to 1. Also adds the 'threshold' line. In this case it is a red dashed line. 
pp<-p+coord_cartesian(ylim=c(0,1)) + geom_hline(yintercept=0.05, linetype="dashed", color = "red")

#Show graph
pp
