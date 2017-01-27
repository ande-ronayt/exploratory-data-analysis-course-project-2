##My test file
## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

##Have total emissions from PM2.5 decreased in the United States 
##from 1999 to 2008? Using the base plotting system, make a plot 
##showing the total PM2.5 emission from all sources for each of 
##the years 1999, 2002, 2005, and 2008.

##As we can see from the barplot, total emissions from PM2.5 decreased in the United States from 1999 to 2008

##2
##Have total emissions from PM2.5 decreased in the Baltimore City, 
##Maryland (fips == "24510") from 1999 to 2008? Use the base 
##plotting system to make a plot answering this question.

##In full picture total emissions from PM2.5 have decreased in Baltimore City, Maryland from 1999 to 2008.


##3
##Of the four types of sources indicated by the type 
##(point, nonpoint, onroad, nonroad) variable, 
##which of these four sources have seen decreases 
##in emissions from 1999-2008 for Baltimore City? 
##Which have seen increases in emissions from 1999-2008? 
##Use the ggplot2 plotting system to make a plot answer this question.

#The non-road, nonpoint, on-road source types are decreased overall from 1999-2008 in Baltimore City.
#The point source has big significant increase from 1999-2005, and then it decrease again in 2008 to little bit above the 1999 value.


##4
#Across the United States, how have emissions from 
#coal combustion-related sources changed from 1999-2008?

#Emissions from coal combustion related sources have decreased from 1999-2008

##5
#How have emissions from motor vehicle sources 
#changed from 1999-2008 in Baltimore City?

#Emissions from motor vehicle sources have decreased from 1999-2008 in Baltimore City!

#LA County has more emissions compare to Baltimore, and Emissions in LA was increasing from 1999-2005, then decreas in 2008 but still more than was in 1999