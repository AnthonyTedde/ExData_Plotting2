## Load and exec the file loadAndCleanData
## The code behind this file works to load the data
source("loadAndCleanData.R")

## Open device
png(filename = "plot1.png")

## Plot construction
pm25Emission <- aggregate(Emissions ~ year,
                          data = NEI,
                          FUN = sum)
barplot(pm25Emission$Emissions,
        names.arg = pm25Emission$year,
        main = "pm2.5 Total emission",
        ylab = "pm2.5 emission", xlab = "year")

## Close device
dev.off()

