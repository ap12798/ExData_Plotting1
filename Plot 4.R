#read in text file to energy
energy <- read.table("household_power_consumption.txt",sep=";", header =TRUE)
#subset on date for the two days
twodays <- subset(energy,energy$Date=="1/2/2007" | energy$Date =="2/2/2007")
#changing feature to numeric
Globalactivepower <-as.numeric(as.character(subsetting$Global_active_power))
#building layout for plots
par(mfrow = c(2, 2)) 
#plots
plot(datetime,as.numeric(twodays$Global_active_power), type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(datetime,as.numeric(twodays$Voltage) , type="l", xlab="datetime", ylab="Voltage")
plot(datetime,as.numeric(twodays$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(datetime,as.numeric(twodays$Sub_metering_2), type="l", col="red")
lines(datetime,as.numeric(twodays$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"), bty = "n", cex = .5)

#legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(datetime,as.numeric(twodays$Global_reactive_power), type="l", xlab="datetime", ylab="Global_reactive_power")

dev.copy(png,'plot4.png', width = 480, height = 480)
dev.off()