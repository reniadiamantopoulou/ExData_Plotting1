################################################################################

#Data Science Specialization, Coursera
#     Exploratory Data plotting 

# Cretaed by Renia Diamantopoulou
#14 August 2016

################################################################################

png("plot3.png",width=480,height=480)
plot(dataToUse$Timestamp,dataToUse$Submetering1 , type = "l" , ylab = "Energy Sub Metering" ,xlab ="", col = "black")
points(dataToUse$Timestamp,dataToUse$Submetering2 , type = "l" , ylab = "Energy Sub Metering" ,xlab ="", col = "red")
points(dataToUse$Timestamp,dataToUse$Submetering3 , type = "l" , ylab = "Energy Sub Metering" , xlab ="",col = "blue")
legend("topright" , legend = c("Submetering_1" , "Submetering_2" , "Submetering_3") , col = c("black" , "red" , "blue"), lty=c(1,1,1))

dev.off()
source('power_consumption.r')