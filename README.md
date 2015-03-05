# ReadMe

by nocebo
5th of March 2015

this ReadMe is part of an assignment in coursera's "john hopkins university: Exploratory Data Analysis", presented in nocebo's repository "exploratorydataanalysis"

## Content of nocebo's repository "exploratorydataanalysis"

- README: Explains how the scripts and the content are connected.

- plot1.R: Script which performs the read-in of the data [1], processes this raw data and creates the png file plot1.png in the current working directory.

- plot2.R: Script which performs the read-in of the data [1], processes this raw data and creates the png file plot2.png in the current working directory.

- plot3.R: Script which performs the read-in of the data [1], processes this raw data and creates the png file plot3.png in the current working directory.

- plot4.R: Script which performs the read-in of the data [1], processes this raw data and creates the png file plot4.png in the current working directory.

- plot1.png: A png file which is part of the course's project. It's a graph drawn from the data [1].

- plot2.png: A png file which is part of the course's project. It's a graph drawn from the data [1].

- plot3.png: A png file which is part of the course's project. It's a graph drawn from the data [1].

- plot4.png: A png file which is part of the course's project. It's a graph drawn from the data [1].

## Requirements

The scripts plot1.R, plot2.R, plot3.R, and plot4.R are in need of the following:

They the **data** [1] within your current working directory. The data can be obtained [here](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip)
Please unzip this data in the working directory.

## Credits and references

- **data** [1]: [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/index.html) “Individual household electric power consumption Data Set”

## Transformations to the original data (codebook)

The scripts plot1.R, plot2.R, plot3.R, and plot4.R do the following transformations to the data [1]:

- A new column "datetime" is created, containing the dates and the times in only one column

- The original columns Date and Time are deleted from the data

- The content of datetime is processed with strptime(), according to the pattern "%d/%m/%Y %H:%M:%S". This is needed to receive a POSIX class