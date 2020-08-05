# Question 3
png("plot3.png", width = 480, height = 480)
plot(HouseholdData$DateTime, HouseholdData$Sub_metering, type = "n", ylab =  "Energy sub metering", 
     xlab = "")
lines(HouseholdData$DateTime, HouseholdData$Sub_metering)
lines(HouseholdData$DateTime, HouseholdData$Sub_metering.1, col = "red")
lines(HouseholdData$DateTime, HouseholdData$Sub_metering.2, col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("sub_metering_1", "sub_metering_1","sub_metering_1"))
dev.off()