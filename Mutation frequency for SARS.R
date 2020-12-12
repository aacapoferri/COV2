#Make sure that ggplot and ggrepel are installed
#remotes::install_github("mattcowgill/ggannotate") #download all dependencies
library(ggplot2)
library(ggrepel)
library(ggeasy)

#Reads file in based on where you have set the source
newsarscov1<-read.csv("~/Desktop/COVID/LOCKED/freq/Clade GR Phase 3.csv") 

#This will create a generic plot of Mutation Frequency vs genome position
#Having the column of Gene, will color the points based on the Gene 
ggplot(newsarscov1, aes(x=Position, y=Frequency))+geom_point() + geom_point(aes(col=Gene), size=1.5)

#Filtering required rows. In this example, only going to filter where mutation frequency>0.15
newsarscov1_sub<-newsarscov1[newsarscov1$Frequency>0.05,]
newsarscov1$Mutation<-ifelse(newsarscov1$Frequency>0.05, newsarscov1_sub$Mutation, "")

#Setting the base plot and changes the labels 
#By changing x=Gene instead of Position, you get stacked points
gg<-ggplot(newsarscov1, aes(x=Position, y=Frequency)) + geom_point(aes(col=Gene), size=1) + labs(title="Clade V Phase 1", y="Relative Mutation Proportion", x="SARS-CoV-2 Genome") #+ scale_x_discrete(limits=c("orf1a", "orf1b", "S gene", "E gene", "M gene", "N gene"))

#Plot the text and label that REPELS each other. It also keeps the gene order correct
nextgg<-gg+geom_text_repel(aes(label=Mutation), size=3, data=newsarscov1_sub) + scale_color_discrete(breaks=c("orf1a", "orf1b", "S gene", "E gene", "M gene", "N gene")) + theme(axis.text.y=element_text(size=20), axis.text.x=element_text(size=15), axis.title=element_text(size=20), axis.text = element_text(size = 20))

#Can make all white background and eliminates legend.
#Hashtag second theme to have genome position visualized.
p<- nextgg + theme_classic() + theme(axis.ticks.x = element_blank(),
                                     axis.text.x = element_blank())#+ theme(legend.position = "none")
p
#ggannotate::ggannotate(p)