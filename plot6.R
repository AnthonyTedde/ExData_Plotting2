## Load and exec the file loadAndCleanData
## The code behind this file works to load the data
source("loadAndCleanData.R")

## Library
library(ggplot2)

## Open device
png(filename = "plot6.png")

## Plot construction
subset <- NEI[NEI$fips == "24510" | NEI$fips == "06037", ] 

motor <- SCC[grep("motor", SCC$Short.Name, ignore.case = T), ]
motor <- subset[subset$SCC %in% motor$SCC, ]

ggplot(motor, aes(year, Emissions, color = fips))+
    geom_line(stat = "summary", fun.y = "sum") +
    ylab("pm2.5 Emissions") +
    ggtitle("Emissions From Motor Vehicle Sources \nfrom 1999 to 2008 in Baltimore City and Los Angeles County ")

## Close device
dev.off()

