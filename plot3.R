dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
ssdata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(ssData$Date, ssData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
sm1 <- as.numeric(ssData$Sub_metering_1)
sm2 <- as.numeric(ssData$Sub_metering_2)
sm3 <- as.numeric(ssData$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(datetime, sm1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, sm2, type="l", col="red")
lines(datetime, sm3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=2, lwd=4, col=c("black", "red", "blue"))
dev.off()