##plot6 - comparing

plot6 <- function(toPng){
  ##reding data
  ## This first line will likely take a few seconds. Be patient!
  NEI <- readRDS("summarySCC_PM25.rds")
  SCC <- readRDS("Source_Classification_Code.rds")
  
  NEIBaltimoreOnRoad <- subset(NEI, fips == "24510" & type == "ON-ROAD")
  NEILAOnRoad <- subset(NEI, fips == "06037" & type == "ON-ROAD")
  
  NEIdata <- rbind(NEIBaltimoreOnRoad, NEILAOnRoad)
  NEIdata$fips[NEIdata$fips=="24510"]='Baltimore'
  NEIdata$fips[NEIdata$fips=="06037"]='Los Angeles'
  
  if (toPng)
      png(filename="plot6.png")
  
  g <- ggplot(NEIdata, aes(factor(year), Emissions))
  print(g + geom_bar(stat="identity") + facet_grid(.~fips) + 
    labs(x="year", y=expression("Total PM"[2.5]*" Emission (Tons)")) + 
    labs(title=expression("PM2.5 Emissions from Motor Vehicle, Baltimore and LA by Source Type"))
  
  )
  
  if (toPng)
      dev.off()
}