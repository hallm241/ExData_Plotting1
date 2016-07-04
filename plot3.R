source("Dataprep.R")

par(mfrow =c(1,1))
ylab <- "Energy sub metering"
with(data,plot(datetime,Sub_metering_1,type ="n", ylab = ylab, xlab =""))
with(data,lines(datetime,Sub_metering_1, col = "black"))
with(data,lines(datetime,Sub_metering_2, col = "red"))
with(data,lines(datetime,Sub_metering_3, col = "blue"))

label <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright", legend = label, col = c("black","blue","red"), lwd = 1)