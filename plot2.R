## Load and exec the file loadAndCleanData
## The code behind this file works to load the data
source("loadAndCleanData.R")

## Open device
png(filename = "plot2.png")

## Plot construction
sub <- NEI[NEI$fips == "24510", ]

pm25Emission <- aggregate(Emissions ~ year,
                          data = sub,
                          FUN = sum)

barplot(pm25Emission$Emissions,
        names.arg = pm25Emission$year,
        main = "pm2.5 total emissions in baltimore city",
        ylab = "pm2.5 emissions", xlab = "year")


## Close device
dev.off()

