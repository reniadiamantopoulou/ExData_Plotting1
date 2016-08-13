################################################################################

#Data Science Specialization, Coursera
#     Exploratory Data plotting 

# Cretaed by Renia Diamantopoulou
#14 August 2016

################################################################################

png("plot1.png",width=480,height=480)
hist(dataToUse$GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

source('power_consumption.r')