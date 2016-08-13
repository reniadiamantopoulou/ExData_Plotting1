################################################################################

#Data Science Specialization, Coursera
#     Exploratory Data plotting 

# Cretaed by Renia Diamantopoulou
#14 August 2016

################################################################################
datareading <- function(){
###############################################################################
# Calcuate the memory the dataset will require in memory before reading it in R

library(pryr)
print(object_size("household_power_consumption.txt"))

###############################################################################

###############################################################################
# READ DATA BETWEEN DATES: 2007-02-02 AND 2007-02-02
###############################################################################


power_data <- read.csv("household_power_consumption.txt" , header = TRUE , sep = ";" ,na.strings = "?",
                       col.names = c("Date", "Time", "GlobalActivePower",
                                     "GlobalReactivePower", "Voltage", "GlobalIntensity",
                                     "Submetering1", "Submetering2", "Submetering3"),
                       colClasses = c( "character", "character", "numeric",
                                       "numeric", "numeric", "numeric", "numeric",
                                       "numeric", "numeric"))
dataToUse <- with(subset(power_data, Date == "1/2/2007" | Date == "2/2/2007"),
                  data.frame(Timestamp = strptime(paste(Date, Time),format="%d/%m/%Y %H:%M:%S"),
                             GlobalActivePower, GlobalReactivePower, Voltage,
                             GlobalIntensity, Submetering1, Submetering2,
                             Submetering3))

dataToUse
}