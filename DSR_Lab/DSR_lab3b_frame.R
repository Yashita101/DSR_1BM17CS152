n1<-c(2:5)
n2<-seq(6,8,0.6)
n3<-c(11,13,15,17)
n1
n2
n3
df<-data.frame(n1,n2,n3)
df
sapply(df,mean)
lapply(df,median)
lapply(df,sd)
lapply(df,min)
lapply(df,max)
lapply(df,var)
lapply(df,IQR)