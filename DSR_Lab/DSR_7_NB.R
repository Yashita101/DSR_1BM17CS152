#Program 7 - Naive Bayes
install.packages("e1071")
library(e1071)
getwd()
df = read.csv("Dataset/bayes.csv")
str(df)
class(df)
testset = data.frame(Age="<=30",Income="Medium",JobSatisfaction=
                       "No",Desire="Fair",Enrolls="No")
testset
df = rbind(df,testset)
df
train = as.data.frame(df[1:14,])
test = as.data.frame(df[15,])
train
test
Bm = naiveBayes(Enrolls ~ Age+Income+JobSatisfaction+Desire,train)
Bm
res = predict(Bm,test)
res
modell = naiveBayes(Enrolls ~ ., train, laplace=.01)
modell
results1<-predict(modell,test)
results1