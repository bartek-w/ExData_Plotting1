classes = structure(c("character", "character", "numeric", "numeric", "numeric",
                     "numeric", "numeric", "numeric", "numeric"))
#data = read.csv("household_power_consumption.txt", sep = ";", na.strings = '?', header = TRUE, colClasses=classes)
data = read.csv("household_power_consumption.txt", sep = ";", na.strings = '?', header = TRUE, colClasses=classes)
data <- subset(data, Date %in% c('1/2/2007', '2/2/2007'))
strptime(data$Time,'%Y%m%d%H%M%S')
data$DateTime <- strptime(apply(data.frame(data$Date, data$Time), 1, function(r) paste(r[1], r[2])), format="%d/%m/%Y %H:%M:%S")
