####################################
## Downloading data from Christopher Gandrud's Dropbox folder
## Using source_data function from remis package
## File is on Financial Regulators
####################################

## Load repmis library - install first if you need to
library(repmis)

## Site URL
fileURL <- "http://bit.ly/14aS5qq"
## This file will download to the current working directory

# Download Data
FinRegulatorData <- source_data(fileURL, sep = ",", header=TRUE) # not available anymore

# Can't do this with non-
