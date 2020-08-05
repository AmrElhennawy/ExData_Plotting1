# Question 4
png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
plot(HouseholdData$DateTime, HouseholdData$Global_active_power, type = "n", 
     ylab="Global Active Power", xlab="")
lines(HouseholdData$DateTime, HouseholdData$Global_active_power)

plot(HouseholdData$DateTime, HouseholdData$Voltage, type = "n", 
     ylab="Voltage", xlab="Datetime")
lines(HouseholdData$DateTime, HouseholdData$Voltage)

plot(HouseholdData$DateTime, HouseholdData$Sub_metering, type = "n", ylab =  "Energy sub metering", 
     xlab = "")
lines(HouseholdData$DateTime, HouseholdData$Sub_metering)
lines(HouseholdData$DateTime, HouseholdData$Sub_metering.1, col = "red")
lines(HouseholdData$DateTime, HouseholdData$Sub_metering.2, col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("sub_metering_1", "sub_metering_1","sub_metering_1"))

plot(HouseholdData$DateTime, HouseholdData$Global_reactive_power, type = "n", 
     ylab = "Global reactive Power",  xlab = "Datetime")
lines(HouseholdData$DateTime, HouseholdData$Global_reactive_power)
dev.off()
