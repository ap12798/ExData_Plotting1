#read in text file to energy
energy <- read.table("household_power_consumption.txt",sep=";", header =TRUE)
#subset on date for the two days
twodays <- subset(energy,energy$Date=="1/2/2007" | energy$Date =="2/2/2007")
#setting time to Thur-Sat
datetime <-strptime(paste(twodays$Date, twodays$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#plots
plot(datetime, as.numeric(twodays$Sub_metering_1), type="l", ylab="Energy sub metering", xlab="")

lines(datetime, as.numeric(twodays$Sub_metering_2), type="l", col="red")

lines(datetime, as.numeric(twodays$Sub_metering_3), type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.copy(png,'plot3.png', width = 480, height = 480)
dev.off()
