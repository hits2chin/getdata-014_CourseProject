## This script downloads the rawdata from net and unzips it.
## The list of packages required for functions is as follows.
## Base Package: setwd
## utils package: download.file, unzip
setwd("G:/Studies/Data Science/Getting and Cleaning Data/Assignment") ##Package base
URL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL,destfile="./Data.zip") ##Windows 8
unzip(zipfile="./Data.zip",exdir=".")        

