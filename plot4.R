## Source the code for reading the data to a dataframe named "data". The "Dataprep.R" script
## is in the top level for the repo (which is assumed as the working directory)
source("Dataprep.R")

## set graphical parameter to 2 by 2 matrix of graphs
par(mfrow = c(2,2))

## Construct the 2x2 graphs in screen device
with(data, {
        plot(datetime,Global_active_power,type ="n", ylab = "Global Active Power (Kilowatts)", xlab ="")
        lines(datetime,Global_active_power)
        
        plot(datetime,Voltage,type ="n", ylab = "Voltage")
        lines(datetime,Voltage)
        
        plot(datetime,Sub_metering_1,type ="n", ylab = "Energy sub metering", xlab ="")
        lines(datetime,Sub_metering_1, col = "black")
        lines(datetime,Sub_metering_2, col = "red")
        lines(datetime,Sub_metering_3, col = "blue")
        label <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
        legend("topright", legend = label, col = c("black","blue","red"), lwd = 1, bty ="n")
        
        plot(datetime,Global_reactive_power,type="n")
        lines(datetime,Global_reactive_power)
        
})

## Copy graph to png file
dev.copy(png, file = "plot4.png")
dev.off()