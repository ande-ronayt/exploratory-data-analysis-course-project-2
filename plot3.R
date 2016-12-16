##plot3.R ggplot2

plot3 <- function(){
  ##reding data
  ## This first line will likely take a few seconds. Be patient!
  NEI <- readRDS("summarySCC_PM25.rds")
  SCC <- readRDS("Source_Classification_Code.rds")
  
  library(ggplot2)
  
  #taking Balrimor City data
  NEI_Baltimor <- subset(NEI, fips=="24510")
  
  png(filename="plot3.png")
  
  g <- ggplot(NEI_Baltimor, aes(factor(year), Emissions))
  print(g + geom_bar(stat="identity") + facet_grid(.~type) + 
    labs(x="year", y=expression("Total PM"[2.5]*" Emission (Tons)")) + 
    labs(title=expression("PM2.5 Emissions, Baltimore City 1999-2008 by Source Type"))
  )
  dev.off()
}