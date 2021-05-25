library(seqinr)
x=read.fasta("/Users/capoferria/Desktop/dir_aligned/dir_aligned_ref_removed/AC_USA_wave1_clade_G.fas.mafft.fas")
new=lapply(seq(length(x)), function(i) {
  s2c(gsub("-","",c2s(getSequence(x[[i]]))))
})
write.fasta(new,names=names(x),file="AC_USA_wave1_clade_G.fas.mafft_gapstripped.fasta",nbchar=60)

x=read.fasta("/Users/capoferria/Desktop/dir_aligned/dir_aligned_ref_removed/AC_USA_wave1_clade_GH.fas.mafft.fas")
new=lapply(seq(length(x)), function(i) {
  s2c(gsub("-","",c2s(getSequence(x[[i]]))))
})
write.fasta(new,names=names(x),file="AC_USA_wave1_clade_GH.fas.mafft_gapstripped.fasta",nbchar=60)

x=read.fasta("/Users/capoferria/Desktop/dir_aligned/dir_aligned_ref_removed/AC_USA_wave1_clade_GR.fas.mafft.fas")
new=lapply(seq(length(x)), function(i) {
  s2c(gsub("-","",c2s(getSequence(x[[i]]))))
})
write.fasta(new,names=names(x),file="AC_USA_wave1_clade_GR.fas.mafft_gapstripped.fasta",nbchar=60)

x=read.fasta("/Users/capoferria/Desktop/dir_aligned/dir_aligned_ref_removed/AC_USA_wave1_clade_L.fas.mafft.fas")
new=lapply(seq(length(x)), function(i) {
  s2c(gsub("-","",c2s(getSequence(x[[i]]))))
})
write.fasta(new,names=names(x),file="AC_USA_wave1_clade_L.fas.mafft_gapstripped.fasta",nbchar=60)

x=read.fasta("/Users/capoferria/Desktop/dir_aligned/dir_aligned_ref_removed/AC_USA_wave1_clade_O.fas.mafft.fas")
new=lapply(seq(length(x)), function(i) {
  s2c(gsub("-","",c2s(getSequence(x[[i]]))))
})
write.fasta(new,names=names(x),file="AC_USA_wave1_clade_O.fas.mafft_gapstripped.fasta",nbchar=60)

x=read.fasta("/Users/capoferria/Desktop/dir_aligned/dir_aligned_ref_removed/AC_USA_wave1_clade_S.fas.mafft.fas")
new=lapply(seq(length(x)), function(i) {
  s2c(gsub("-","",c2s(getSequence(x[[i]]))))
})
write.fasta(new,names=names(x),file="AC_USA_wave1_clade_S.fas.mafft_gapstripped.fasta",nbchar=60)

x=read.fasta("/Users/capoferria/Desktop/dir_aligned/dir_aligned_ref_removed/AC_USA_wave1_clade_V.fas.mafft.fas")
new=lapply(seq(length(x)), function(i) {
  s2c(gsub("-","",c2s(getSequence(x[[i]]))))
})
write.fasta(new,names=names(x),file="AC_USA_wave1_clade_V.fas.mafft_gapstripped.fasta",nbchar=60)

x=read.fasta("/Users/capoferria/Desktop/dir_aligned/dir_aligned_ref_removed/AC_USA_wave2_clade_G.fas.mafft.fas")
new=lapply(seq(length(x)), function(i) {
  s2c(gsub("-","",c2s(getSequence(x[[i]]))))
})
write.fasta(new,names=names(x),file="AC_USA_wave2_clade_G.fas.mafft_gapstripped.fasta",nbchar=60)

x=read.fasta("/Users/capoferria/Desktop/dir_aligned/dir_aligned_ref_removed/AC_USA_wave2_clade_GH.fas.mafft.fas")
new=lapply(seq(length(x)), function(i) {
  s2c(gsub("-","",c2s(getSequence(x[[i]]))))
})
write.fasta(new,names=names(x),file="AC_USA_wave2_clade_GH.fas.mafft_gapstripped.fasta",nbchar=60)

x=read.fasta("/Users/capoferria/Desktop/dir_aligned/dir_aligned_ref_removed/AC_USA_wave2_clade_GR.fas.mafft.fas")
new=lapply(seq(length(x)), function(i) {
  s2c(gsub("-","",c2s(getSequence(x[[i]]))))
})
write.fasta(new,names=names(x),file="AC_USA_wave2_clade_GR.fas.mafft_gapstripped.fasta",nbchar=60)

x=read.fasta("/Users/capoferria/Desktop/dir_aligned/dir_aligned_ref_removed/AC_USA_wave2_clade_O.fas.mafft.fas")
new=lapply(seq(length(x)), function(i) {
  s2c(gsub("-","",c2s(getSequence(x[[i]]))))
})
write.fasta(new,names=names(x),file="AC_USA_wave2_clade_O.fas.mafft_gapstripped.fasta",nbchar=60)

x=read.fasta("/Users/capoferria/Desktop/dir_aligned/dir_aligned_ref_removed/AC_USA_wave2_clade_S.fas.mafft.fas")
new=lapply(seq(length(x)), function(i) {
  s2c(gsub("-","",c2s(getSequence(x[[i]]))))
})
write.fasta(new,names=names(x),file="AC_USA_wave2_clade_S.fas.mafft_gapstripped.fasta",nbchar=60)