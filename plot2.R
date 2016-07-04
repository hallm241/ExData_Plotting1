## Source the code for reading the data to a dataframe named "data". The "Dataprep.R" script
## is in the top level for the repo (which is assumed as the working directory)
source("Dataprep.R")

## set graphical parameter to single graph (incase set otherwise)
par(mfrow =c(1,1))

## Construct graph in screen device
ylab <- "Global Active Power (Kilowatts)"
with(data,plot(datetime,Global_active_power,type ="n", ylab = ylab, xlab =""))
with(data,lines(datetime,Global_active_power, type ="l"))

## Copy graph to png file
dev.copy(png, file = "plot2.png")
dev.off()