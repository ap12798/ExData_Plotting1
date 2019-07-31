#read in text file to energy
energy <- read.table("household_power_consumption.txt",sep=";", header =TRUE)
#format(object.size(energy), units = "Mb")
#subset on date for the two days
twodays <- subset(energy,energy$Date=="1/2/2007" | energy$Date =="2/2/2007")
#setting variable to numeric
Globalactivepower <-as.numeric(as.character(twodays$Global_active_power))
#plot
hist(Globalactivepower,col="red",main="Golbal Active Power",xlab = "Global Active Power(kilowatts)")

dev.copy(png,'plot1.png', width = 480, height = 480)
dev.off()
