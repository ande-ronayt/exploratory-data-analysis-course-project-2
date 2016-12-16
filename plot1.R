##plot1.R - base plotting system
plot1 <- function(toPng = T){
  ##reding data
  ## This first line will likely take a few seconds. Be patient!
  NEI <- readRDS("summarySCC_PM25.rds")
  SCC <- readRDS("Source_Classification_Code.rds")
    
  if (toPng)
      png(filename="plot1.png")
  
  main = "Total PM2.5 Emissions From All US Sources"
  
  ##First aggregate data by year to have sum of emissions
  emissionsByYear <- aggregate(Emissions ~ year, NEI, sum)
  
  #make a barplot
  with(emissionsByYear, barplot(
    (Emissions)/10^6,
    names.arg=year,
    xlab="Year",
    ylab="PM2.5 Emissions (10^6 Tons)",
    main=main))
  
  if (toPng)
      dev.off()
}