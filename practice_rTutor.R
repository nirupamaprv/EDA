# Set working directory
getwd()
setwd('Documents/nimmu/Udacity/eda-course-materials/lesson4')
list.files()

# Set dataframe by loading the dataset
pf <- read.csv('faithful.csv', sep = '\t')
names(pf)

# Find the correlation coefficient of eruption duration and waiting time in the
# data set faithful. Observe if there is any linear relationship between the variables.
duration = faithful$eruptions   # eruption durations 
waiting = faithful$waiting      # the waiting period 
cor(duration, waiting)          # apply the cor function 

# Find the mean eruption duration in the data set
duration = faithful$eruptions     # the eruption durations 
mean(duration)                    # apply the mean function


# Find the median of the eruption duration in the data set faithful.
duration = faithful$eruptions     # the eruption durations 
median(duration)                  # apply the median function

# Find the quartiles of the eruption durations in the data set faithful.
duration = faithful$eruptions     # the eruption durations
quantile(duration)                # apply the quantile function 

# Find the quartiles of the eruption waiting periods in the data set faithful.
waiting = faithful$waiting      # the waiting period 
quantile(waiting)                # apply the quantile function 

# Find the range of the eruption duration in the data set faithful.
duration = faithful$eruptions     # the eruption durations 
max(duration) - min(duration)     # apply the max and min functions

# Find the range of the eruption waiting periods in faithful.
waiting = faithful$waiting     # the waiting period durations 
max(waiting) - min(waiting)     # apply the max and min functions

# Find the interquartile range of eruption duration in the data set faithful.
duration = faithful$eruptions     # the eruption durations 
IQR(duration)                     # apply the IQR function 

# Find the interquartile range of eruption waiting periods in faithful.
waiting = faithful$waiting     # the eruption waiting periods 
IQR(waiting)                     # apply the IQR function 


# Find the box plot of the eruption duration in the data set faithful.
duration = faithful$eruptions       # the eruption durations
boxplot(duration, horizontal=TRUE)  # horizontal box plot


# Find the box plot of the eruption waiting periods in faithful.
waiting = faithful$waiting       # the eruption waiting periods
boxplot(waiting, horizontal=TRUE)  # horizontal box plot

# Find the variance of the eruption duration in the data set faithful.
duration = faithful$eruptions    # the eruption durations 
var(duration)                    # apply the var function

# Find the variance of the eruption waiting periods in faithful.
waiting = faithful$waiting    # the eruption durations 
var(waiting)                    # apply the var function


# Find the standard deviation of the eruption duration in the data set faithful.
duration = faithful$eruptions    # the eruption durations 
sd(duration)                     # apply the sd function

# Find the standard deviation of the eruption waiting periods in faithful.
waiting = faithful$waiting    # the eruption waiting periods  
sd(waiting)                     # apply the sd function

# Find the covariance of eruption duration and waiting time in the data set faithful.
# Observe if there is any linear relationship between the two variables.
duration = faithful$eruptions   # eruption durations 
waiting = faithful$waiting      # the waiting period 
cov(duration, waiting)          # apply the cov function 
# The covariance of eruption duration and waiting time is about 14. It indicates 
# a positive linear relationship between the two variables.

# Find the correlation coefficient of eruption duration and waiting time in the data set 
# faithful. Observe if there is any linear relationship between the variables.
duration = faithful$eruptions   # eruption durations 
waiting = faithful$waiting      # the waiting period 
cor(duration, waiting)          # apply the cor function: duration vs waiting
cor(waiting, duration)          # apply cor function: waiting vs duration
# The correlation coefficient of eruption duration and waiting time is 0.90081. 
# Since it is rather close to 1, we can conclude that the variables are positively 
# linearly related.


# Find the third central moment of eruption duration in the data set faithful.
# We apply the function moment from the e1071 package. As it is not in the core R library,
# the package has to be installed and loaded into the R workspace.
#library(e1071)                    # load e1071 
install.packages("e1071", dep = TRUE, type = "source")
duration = faithful$eruptions     # eruption durations
install.packages("moments")
library(moments)
moment(duration, order=3) 
moment(duration, order=2) 

# compute moments
library(e1071) 
#3rd moment
moment(faithful$eruptions,  order=3, center=T)
#1rd moment
moment(faithful$eruptions, order=1, center=FALSE, absolute=FALSE, na.rm=FALSE)

# We apply the function moment from the e1071 package. As it is not in the 
# core R library, the package has to be installed and loaded into the R workspace.
# compute moments
library(e1071)                    # load e1071 
duration = faithful$eruptions     # eruption durations 
moment(duration, order=3, center=TRUE) 


# compute skewness of eruption duration in the data set faithful.
# We apply the function skewness from the e1071 package to compute the skewness 
# coefficient of eruptions. As the package is not in the core R library, it has to be 
# installed and loaded into the R workspace.
library(e1071)                    # load e1071 
duration = faithful$eruptions     # eruption durations 
skewness(duration)                # apply the skewness function 
# The skewness of eruption duration is -0.41355. It indicates that the eruption duration
# distribution is skewed towards the left.


# Find the skewness of eruption waiting period in faithful.
library(e1071)                    # load e1071 
waiting = faithful$waiting     # eruption waiting periods 
skewness(waiting)                # apply the skewness function 
# The skewness of eruption waiting periods is -0.414025. It indicates that the eruption duration
# distribution is skewed towards the left.

# Find the kurtosis of eruption duration in the data set faithful.
# We apply the function kurtosis from the e1071 package to compute the kurtosis of 
# eruptions. As the package is not in the core R library, it has to be installed and 
# loaded into the R workspace.
library(e1071)                    # load e1071 
duration = faithful$eruptions     # eruption durations 
kurtosis(duration)                # apply the kurtosis function
# The kurtosis of eruption duration is -1.5116, which indicates that eruption duration
# distribution is platykurtic. This is consistent with the fact that its histogram is not
# bell-shaped.

# Find the kurtosis of eruption waiting period in faithful.
library(e1071)                    # load e1071 
waiting = faithful$waiting     # eruption waiting periods 
kurtosis(waiting)                # apply the kurtosis function
# The kurtosis of eruption duration is -1.156263, which indicates that eruption duration
# distribution is platykurtic. This is consistent with the fact that its histogram is not
# bell-shaped.

#TEST dcor.ttest function
