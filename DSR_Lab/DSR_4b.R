#install.packages("MASS")
#library(MASS)
install.packages("ggplot")
#library(ggplot2)
library(gcookbook)
birthwt
boxplot(birthwt$age~birthwt$ht,xlab='ageyear',ylab='height',col='gray90')