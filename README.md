# Exploratory-Data-Analysis

This Repository contains **1st course work for Coursera Data Science specialization Exploratory Data Analysis curse.**

Scripts create plots using **base plotting** in R.

##Repository contains:
- 4 R scripts (Plot1.R, Plot2.R, etc.)
- 4 png files with a width of 480 pixels and a height of 480 pixels (Plot1.png, Plot2.png, etc.)

Every scripts creates plot using base plotting in R and saves it in .png file.

##Dataset:
Scripts use dataset from the UC Irvine Machine Learning Repository (https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip). 

Dataset contains measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

##Original dataset includes 9 variables (Information from UCI web site):
- Date: Date in format dd/mm/yyyy
- Time: time in format hh:mm:ss
- Global_active_power: household global minute-averaged active power (in kilowatt)
- Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
- Voltage: minute-averaged voltage (in volt)
- Global_intensity: household global minute-averaged current intensity (in ampere)
- Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
- Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
- Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

Only data from the dates **2007-02-01 and 2007-02-02** is used in scripts.
Every script cleans up names of variables and adds column DataTime (except for Plot1.R), that contains both date and time of measurement. 
Scripts check if there is a dataset in working directory and automaticly download it, if needed.

#Scripts:
- **Plot1.R** creates histogram of Global Power Activity 
- **Plot2.R** creates line plot of global active power changes in time period
- **Plot3.R** creates plot of 1 2 and 3 energy sub metering in time period
- **Plot4.R** creates four different line plots and places them in one png file. These are: global active power dynamics, energy sub metering dynamics, voltage dynamics, global reactive power dynamics in appropriate time period.

