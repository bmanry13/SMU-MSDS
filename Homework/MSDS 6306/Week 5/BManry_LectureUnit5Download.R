url <- "https://ed-public-download.app.cloud.gov/downloads/Most-Recent-Cohorts-Scorecard-Elements.csv"
tmpFile <- tempfile()
download.file(url, tmpFile)
file.info(tmpFile)$ctime
tmpdf <- read.csv(tmpFile)
dim(tmpdf)
names(tmpdf)
str(tmpdf)
unlink(tmpFile)
rm(list = ls())