##plot2

plot2 <- function(){
  ##reding data
  ## This first line will likely take a few seconds. Be patient!
  NEI <- readRDS("summarySCC_PM25.rds")
  SCC <- readRDS("Source_Classification_Code.rds")
  
  source("plot1.R")
  
  ##subset Balrimor data
  NEI_Baltimor <- subset(NEI, fips=="24510")
  
  png(filename="plot2.png")
  
  main = "Total PM2.5 Emissions From Baltimor City"
  
  ##First aggregate data by year to have sum of emissions
  emissionsByYear <- aggregate(Emissions ~ year, NEI_Baltimor, sum)
  
  #make a barplot
  with(emissionsByYear, barplot(
    (Emissions),
    names.arg=year,
    xlab="Year",
    ylab="PM2.5 Emissions (Tons)",
    main=main))
  
  dev.off()
}