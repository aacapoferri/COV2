
###################################################
#              Stripping Gaps from alignments     #
#                 Version 1.0 (Jan 2021)          #
#             Written by Adam A. Capoferri        #               
###################################################

#As the title suggests this is to remove all gaps from sequences in alignments. Rinse and repeat for each dataset.

library(seqinr)
x=read.fasta("/Desktop/AC_USA_wave1_clade_G.fas.mafft.fas")
new=lapply(seq(length(x)), function(i) {
  s2c(gsub("-","",c2s(getSequence(x[[i]]))))
})
write.fasta(new,names=names(x),file="AC_USA_wave1_clade_G.fas.mafft_gapstripped.fasta",nbchar=60)
