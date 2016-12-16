##plot5.R - motor vehicle
plot5 <- function(){
  ##reding data
  ## This first line will likely take a few seconds. Be patient!
  NEI <- readRDS("summarySCC_PM25.rds")
  SCC <- readRDS("Source_Classification_Code.rds")
  
  # because motor vehicle means be on the road, we can subset type "ON-ROAD"
  #and use fips == "24510" to extract data for Baltimor City
  NEIOnRoad <- subset(NEI, fips == "24510" & type == "ON-ROAD")
  
  png(filename="plot5.png")
  
  g <- ggplot(NEIOnRoad, aes(factor(year), Emissions))
  print(g + geom_bar(stat="identity") + facet_grid(.~type) + 
    labs(x="year", y=expression("Total PM"[2.5]*" Emission (Tons)")) + 
    labs(title=expression("PM2.5 Emissions from Motor Vehicle, Baltimore City"))
  )
  
  dev.off()
}