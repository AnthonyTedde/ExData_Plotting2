## Load and exec the file loadAndCleanData
## The code behind this file works to load the data
source("loadAndCleanData.R")

## Load Library
library(ggplot2)

## Open device
png(filename = "plot3.png")

## Plot construction
sub <- NEI[NEI$fips == "24510", ]

ggplot(sub, aes(year, Emissions, color = type)) +
    geom_line(stat = "summary", fun.y = "sum") +
    ylab("pm2.5 Emissions") +
    ggtitle("pm2.5 total emissions in Baltimore city")


## Close device
dev.off()

