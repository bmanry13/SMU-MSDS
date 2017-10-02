setwd("C:/Users/Brychan/OneDrive/Documents/School/MSDS 6306/Week 5")
library(downloader)
download("https://raw.githubusercontent.com/thoughtfulbloke/faoexample/master/appleorange.csv",
         destfile = "appleorange.csv")

download("https://raw.githubusercontent.com/thoughtfulbloke/faoexample/master/stability.csv",
         destfile = "stability.csv")
list.files()


# Remove extra Rows from CSV
aoText <- readLines("appleorange.csv")
aoText <- aoText[!grepl("Food supply quantity \\(tonnes\\) \\(tonnes\\),,,,,", aoText)]
head(aoText)
aoText <- aoText[-1:-3]
tail(aoText, 10)
aoText <- aoText[1:(length(aoText)-7)]
aoText <- gsub(", tonnes \\(\\)|\u00CA","", aoText)
applesorangesDF <- read.csv(text = aoText, header = FALSE, stringsAsFactors = FALSE)
rm(aoText)
names(applesorangesDF) <- c("country", "countrynumber", "products","productnumber","tonnes","year")
applesorangesDF$year <- 2009
applesorangesDF$countrynumber <- as.numeric(applesorangesDF$countrynumber)
str(applesorangesDF)


stability <- read.csv("stability.csv")
