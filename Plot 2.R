#read in text file to energy
energy <- read.table("household_power_consumption.txt",sep=";", header =TRUE)
#subset on date for the two days
twodays <- subset(energy,energy$Date=="1/2/2007" | energy$Date =="2/2/2007")
#setting time to Thur-Sat
datetime <-strptime(paste(twoday$sDate, twodays$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#plot
plot(datetime,as.numeric(twoday$Global_active_power), type="l", ylab="Global Active Power (kilowatts)", xlab="")

dev.copy(png,'plot2.png', width = 480, height = 480)
dev.off()
