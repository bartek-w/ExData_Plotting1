source('load_data.R')

png(filename = "plot4.png", width = 480, height = 480)

par(mfrow=c(2, 2))

plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

plot(data$DateTime, data$Voltage, type="l", xlab="", ylab="Voltage")

plot(data$DateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub mettering", col="Black")
lines(data$DateTime, data$Sub_metering_2, col="Red")
lines(data$DateTime, data$Sub_metering_3, col="Blue")
legend("topright", legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd=2, col=c("Black", "Red", "Blue"), box.lwd=0)

plot(data$DateTime, data$Global_reactive_power, type="l", xlab="", ylab="Global_reacive_power")

dev.off()