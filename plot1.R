## by nocebo

## This script creates plot1.png for Coursera's "Johns Hopkins University: Exploratory Data Analysis"
## course project week 1. Please consider reading the README-file in the repository.

## This script is in need of data from the UC Irvine Machine Learning Repository. You can get it here:
## https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
## Please download the file and unzip it in your working directory.

## First we want to check which data we actually need to read in. We don't need all the data all the
## time, that's why we specify the rows we want. To know which data we want, we need to read in all
## the data just once and explore it a little bit. I made it as a comment, because I don't want to
## stress your RAM. Which data do we want?
## rawdata <- read.table("household_power_consumption.txt", header = FALSE, sep = ";",
##    stringsAsFactors = FALSE, na.strings="?")
## lines <- which(rawdata$Date == "1/2/2007" | rawdata$Date == "2/2/2007")
## The data we just created in "lines" shows us, that the data we are interested in starts with the row
## 66637 and ends 2880 rows later (length(lines)).

## Now we read in the data we want.
data <- read.table("household_power_consumption.txt", header = FALSE, sep = ";", stringsAsFactors = FALSE, 
                   na.strings="?", skip = 66637, nrow = 2880)

## Because we skipped the first lines, the variable names are missing. So we read these in and assign it
## as column names to the existing data.
header <- read.table("household_power_consumption.txt", header = FALSE, sep = ";", nrow = 1,
                     stringsAsFactors = FALSE)
colnames(data) <- unlist(header)

## Now we create a new column, in which the Date and the Time is combined. We also get rid of the Date and
## and Time columns already existing in the data.
datetime <- paste(data$Date, data$Time)
data <- cbind(datetime, data)
data <- data[-c(2, 3)]

## We now can convert the newly created datetime column into POSIXt date format
data$datetime <- strptime(data$datetime, format = "%d/%m/%Y %H:%M:%S")

## Now we finally have clean, small data of interest to work with.

## Open the png-Device with the specified width and height, demanded in the project's description.
png("plot1.png", width = 480, height = 480)

## Create the histogram as presented in the project's description.
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency", main = "Global Active Power")

## Close the Device.
dev.off()

## You can find the graph in your working directory now. If you want to see the graph in R Studio just
## execute the following lines of code without the hashes:
## hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", 
##        ylab = "Frequency", main = "Global Active Power")
