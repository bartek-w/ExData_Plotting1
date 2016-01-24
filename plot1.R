source('load_data.R')

png(filename = "plot1.png", width = 480, height = 480)
    
hist(data$Global_active_power,
     main="Global active power", 
     xlab = "Global active power (kilowatts)",
     xlim = c(0,6),
     col = "red")

dev.off()