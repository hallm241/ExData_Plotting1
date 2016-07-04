source("Dataprep.R")

par(mfrow =c(1,1))
ylab <- "Global Active Power (Kilowatts)"
with(data,plot(datetime,Global_active_power,type ="n", ylab = ylab, xlab =""))
with(data,lines(datetime,Global_active_power, type ="l"))
