source('load_data.R')

png(filename = "plot3.png", width = 480, height = 480)

plot(data$DateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub mettering", col="Black")
lines(data$DateTime, data$Sub_metering_2, col="Red")
lines(data$DateTime, data$Sub_metering_3, col="Blue")
legend("topright", legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd=2, col=c("Black", "Red", "Blue"))

dev.off()