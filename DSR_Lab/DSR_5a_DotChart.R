install.packages("ggplot")
library(ggplot2)
head(mtcars)
dotchart(mtcars$mpg, labels=row.names(mtcars), cex=1, xlab="MPG",main="Miles Per Gallon Of Car")