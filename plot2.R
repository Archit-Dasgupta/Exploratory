setwd("C:/Users/MAHE/Exploratory")
dfull <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
d <- subset(dfull, Date %in% c("1/2/2007","2/2/2007"))
d$Date <- as.Date(d$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(d1$Date), d$Time)
d$Datetime <- as.POSIXct(datetime)
with(d, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})
