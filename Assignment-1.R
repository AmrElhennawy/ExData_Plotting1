library(dplyr)
library(lubridate)
## , colClasses = c("Date", "POSIXct", rep("numeric", 7))
HouseholdData <- read.table("household_power_consumption.txt",  header = TRUE, nrows = 2880, 
                            sep = ";", quote = "", dec = ".", strip.white = TRUE, skip = 66636, 
                            col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power",
                                          "Voltage", "Global_intensity", rep("Sub_metering", 3))
                            , na.strings = "?")
write.csv(HouseholdData, "Data.csv")
HouseholdData <-tibble::as_tibble(HouseholdData)
HouseholdData$Date <- as.Date(HouseholdData$Date, format = "%d/%m/%Y", tz = "Europe/Paris")
HouseholdData$DateTime <- strptime(paste(HouseholdData$Date, HouseholdData$Time), format="%Y-%m-%d %H:%M:%S")
HouseholdData$Weekday <- sapply(HouseholdData$Date, wday, label = TRUE)

