## Load and exec the file loadAndCleanData
## The code behind this file works to load the data
source("loadAndCleanData.R")

## Open device
png(filename = "plot4.png")

## Plot construction
coal <- SCC[grep("coal", SCC$Short.Name, ignore.case = T), ]
coal <- NEI[NEI$SCC %in% coal$SCC, ]

coalEmissions <- aggregate(Emissions ~ year,
                           data = coal,
                           FUN = sum)

plot(coalEmissions,
     main = "Coal total Combustion-related source from 1999 to 2008",
     type = "b",
     xlab = "Year", ylab = "Total pm2.5 Emission") 

## Close device
dev.off()

