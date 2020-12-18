#Create a Scatterplot using the data frame Height weight (import from library gcookbook) with the x-axis as ageyear and y-axis as height
library(ggplot2)
View(heightweight)
heightweight[,c("sex","ageYear","heightIn")]
ggplot(heightweight,aes(x=ageYear,y=heightIn,colour=sex))+geom_point()