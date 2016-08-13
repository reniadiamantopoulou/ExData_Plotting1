################################################################################

#Data Science Specialization, Coursera
#     Exploratory Data plotting 

# Cretaed by Renia Diamantopoulou
#14 August 2016

################################################################################

png("plot2.png",width=480,height=480)
plot(dataToUse$Timestamp,dataToUse$GlobalActivePower , type = "l" ,xlab ="", ylab = "Global Active Power (kilowatts)")
dev.off()
source('power_consumption.r')