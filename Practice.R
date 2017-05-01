getwd()
setwd('//Users/SriramRanganathan/Documents/nimmu/Udacity/eda-course-materials/lesson2')
getwd()


statesInfo <- read.csv('stateData.csv')
View(statesInfo)

subset(statesInfo, state.region == 1)

statesInfo[statesInfo$state.region ==1 , ]


getwd()
setwd('//Users/SriramRanganathan/Documents/nimmu/Udacity/eda-course-materials/lesson2')
getwd()

reddit <- read.csv('reddit.csv')
table(reddit$employment.status)
summary(reddit)

str(reddit)
#Examining the 7 levels in the factor 'age.range'
levels(reddit$age.range)
#Making plot for above factor
library(ggplot2)
qplot(x =age.range, data = reddit)



