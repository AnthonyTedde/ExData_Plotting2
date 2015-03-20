## Load and exec the file loadAndCleanData
## The code behind this file works to load the data
source("loadAndCleanData.R")

## Open device
png(filename = "plot1.png")

## Plot construction
pm25Emission <- aggregate(NEI$Emission,
                          by = list(NEI$year),
                          FUN = sum)
barplot(pm25Emission$x,
        names.arg = pm25Emission$Group.1,
        main = "pm2.5 Total emission",
        ylab = "pm2.5 emission", xlab = "year")

## Close device
dev.off()
