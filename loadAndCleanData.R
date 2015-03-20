## Download and unzip the file
## URL is:
## https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip
url <- paste("https://d396qusza40orc.cloudfront.net",
             "exdata",
             "data",
             "NEI_data.zip",
             sep = "/")
if(!file.exists("Source_Classification_Code.rds")){
    download.file(url, destfile = "data.zip")
    unzip("data.zip")
}

## Read all data from file
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
