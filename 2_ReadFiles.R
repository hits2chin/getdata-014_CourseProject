## This script reads all the required files from the path.
## Since the scripts are in different place,
## all reading files are completed in this script itself.
## The list of package required and the function used is as follows.
## Base Package:  paste0, getwd, setwd, list.files, read.table
## utils Package: read.table

myPath<-paste0(getwd(),"/UCI HAR Dataset")
## myPath<-paste(getwd(),"/UCI HAR Dataset",sep="") ##identical function to above
setwd(myPath)              
fileList<-list.files(recursive=TRUE)
featureList<- read.table('features.txt',header=FALSE)
activityNames<-read.table('activity_labels.txt',header=FALSE)


X_test<-read.table('test/X_test.txt',header=FALSE)
y_test<-read.table('test/y_test.txt',header=FALSE)
sub_test<-read.table('test/subject_test.txt',header=FALSE)

X_train<-read.table('train/X_train.txt',header=FALSE)
y_train<-read.table('train/y_train.txt',header=FALSE)
sub_train<-read.table('train/subject_train.txt',header=FALSE)  
setwd("..")