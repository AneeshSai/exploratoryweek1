dataFil<-"household_power_consumption.txt"
data<-read.table(dataFil,header=TRUE,sep=";",stringsAsFactors = FALSE,dec=".")
ssdata<-data[data$Date%in% c("1/2/2007","2/2/2007"),]
globalActivepower<-as.numeric(ssdata$Global_active_power)
png("plot1.png",width=480,height=480)
hist(globalActivepower,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()