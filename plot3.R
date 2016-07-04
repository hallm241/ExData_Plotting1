## Source the code for reading the data to a dataframe named "data". The "Dataprep.R" script
## is in the top level for the repo (which is assumed as the working directory)
source("Dataprep.R")

## set graphical parameter to single graph (incase set otherwise)
par(mfrow =c(1,1))

## Construct graph in screen device
ylab <- "Energy sub metering"
with(data,plot(datetime,Sub_metering_1,type ="n", ylab = ylab, xlab =""))
with(data,lines(datetime,Sub_metering_1, col = "black"))
with(data,lines(datetime,Sub_metering_2, col = "red"))
with(data,lines(datetime,Sub_metering_3, col = "blue"))

label <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright", legend = label, col = c("black","blue","red"), lwd = 1)


## Copy graph to png file
dev.copy(png, file = "plot3.png")
dev.off()