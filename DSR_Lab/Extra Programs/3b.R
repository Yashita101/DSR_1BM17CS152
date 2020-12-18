getwd()
data<-read.csv("Mult_Reg_Yield.csv")
data

dt<-sample(2,nrow(data),replace=TRUE, prob=c(0.7,0.3))
dt

train<-data[dt==1,]
test<-data[dt==2,]
train
test
fw.lm<-lm(X.Yield~Time+Temperature,train)
fw.lm
summary(fw.lm)
summary(fw.lm)$r.squared
plot(X.Yield~Time,train)
abline(fw.lm,lty=1,col="blue")

fw.lm1<-lm(X.Yield~Time,train)
fw.lm1
summary(fw.lm1)
summary(fw.lm1)$r.squared
plot(X.Yield~Time,train)
abline(fw.lm1,col="red")

new<-fitted(fw.lm1)
new
testpred<-predict(fw.lm1,test)
testpred
predict(fw.lm,data.frame(Time=200,Temperature=240))
predict(fw.lm1,data.frame(Time=200,Temperature=240))

