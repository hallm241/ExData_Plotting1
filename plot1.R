source("Dataprep.R")

par(mfrow =c(1,1))
Heading <- "Global Active Power"
xlab <- "Global Active Power (kilowatts)"
hist(data$Global_active_power, col = "red", main = Heading, xlab = xlab)
