#plot4.R - coal related data

plot4 <- function(toPng = T){
  ##reding data
  ## This first line will likely take a few seconds. Be patient!
  NEI <- readRDS("summarySCC_PM25.rds")
  SCC <- readRDS("Source_Classification_Code.rds")
  
  coalData <- grepl("coal", SCC$Short.Name, ignore.case=TRUE)|
    grepl("coal", SCC$EI.Sector,ignore.case = T)
  
  coalData <- SCC[coalData, ]
  coalData <- NEI[NEI$SCC %in% coalData$SCC, ]
  
  if (toPng)
      png(filename="plot4.png")
  
  g <- ggplot(coalData, aes(factor(year), Emissions))
  print(g + geom_bar(stat="identity") +
    labs(x="year", y=expression("Total PM"[2.5]*" Emission (Tons)")) + 
    labs(title=expression("PM2.5 Emissions from coal combustion-related sources in US"))
  )
  
  if (toPng)
      dev.off()
  
}