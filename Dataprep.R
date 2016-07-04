## download zip data to a temp file
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)

## read txt file data - start at 1st of Feb 2007, and read for 2 days worth of observations.
txt_file <- "household_power_consumption.txt"
data <- read.table(unz(temp, txt_file), header = FALSE, sep = ";", na.strings = "?", skip = 66637, nrows = 2*24*60)

## Extract and assign the variable headings.
names(data) <- read.table(unz(temp, txt_file), header = FALSE, sep = ";", nrows = 1, colClasses = "character")

## Add a date time variable
datetime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
data <- cbind(datetime,data)


## drop the temp file
unlink(temp)