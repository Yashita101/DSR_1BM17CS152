list.files()
grep(".csv",list.files(),value=T)
getwd()
setwd("C:/Users/Dell/Documents/DSR/Dataset")
b<-read.csv("bank-data.csv")
b
nrow(b)
ncol(b)
colnames(b)
str(b)
plot(b$age,b$income)