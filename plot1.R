## Source the code for reading the data to a dataframe named "data". The "Dataprep.R" script
## is in the top level for the repo (which is assumed as the working directory)
source("Dataprep.R")

## set graphical parameter to single graph (incase set otherwise)
par(mfrow =c(1,1))

## Construct graph in screen device
Heading <- "Global Active Power"
xlab <- "Global Active Power (kilowatts)"
hist(data$Global_active_power, col = "red", main = Heading, xlab = xlab)

## Copy graph to png file
dev.copy(png, file = "plot1.png")
dev.off()