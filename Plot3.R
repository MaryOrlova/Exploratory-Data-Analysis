###This code was created as a part of Data Science Exploratory Data Analysys cours###
##It creates plot of 1 2 and 3 energy sub mettering in time period from 2007-02-01 to 2007-02-01##

#Checking if there is file in working direcotory.
if (!file.exists("household_power_consumption.txt")) {
  url<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(url, destfile = "PowerConsumption.zip")
  unzip("PowerConsumption.zip")
}

#Reading data into R
PowerCons<-read.table("household_power_consumption.txt", sep=";", header=TRUE, dec=".", na.strings="?")

#Converting date from factor format to date format
PowerCons$Date<-as.Date(PowerCons$Date,format="%d/%m/%Y")

#Cleaning column names
colnames(PowerCons)<-c("Date", "Time", "GlobalActivePower", "GlobalReactivePower", "Voltage", "GlobalIntensity", "Submetering1", "Submetering2", "Submetering3")

#Selecting data of needed time interval
d1<-as.Date("2007-02-01")
d2<-as.Date("2007-02-02")
PowerCons<-PowerCons[PowerCons$Date %in% d1:d2,]
PowerCons$DateTime<-ymd(PowerCons$Date)+hms(PowerCons$Time)

#Creating png file
png(filename="Plot3.png", width=480, height=480, units="px", bg="white")

#Creating plot
plot(PowerCons$DateTime,PowerCons$Submetering1, type="l", xlab="", ylab="Energy sub metering")
lines(PowerCons$DateTime,PowerCons$Submetering2, col="red")
lines(PowerCons$DateTime,PowerCons$Submetering3, col="blue")
legend("topright", lty=1, col=c("black","red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" ))

#Closing graphic device
dev.off()
