## Load and exec the file loadAndCleanData
## The code behind this file works to load the data
source("loadAndCleanData.R")

## Open device
png(filename = "plot5.png")

## Plot construction
subset <- NEI[NEI$fips == "24510", ] 

motor <- SCC[grep("motor", SCC$Short.Name, ignore.case = T), ]
motor <- subset[subset$SCC %in% motor$SCC, ]

motorEmissions <- aggregate(Emissions ~ year,
                            data = motor,
                            FUN = sum)

plot(motorEmissions,
     type = "b",  
     main = "pm25 total Emissions From Motor Vehicle\n from 1999 to 2008 in Baltimore City",
     xlab = "Year", ylab = "pm25 Emission")

## Close device
dev.off()

