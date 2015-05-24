## This script removes all features except the ones measuring mean and standard deviation.
## This also completes the second task i.e. 
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## The list of package required and the function used is as follows.
## Base Package:  colnames, grep

HeadingNames<-colnames(Combine_Merged) #Not used as combined later
colNames_MSD<-grep("(SubjectId|ActivityClass|mean\\(\\)|std\\(\\))", HeadingNames)
Filter_Combine<-Combine_Merged[,colNames_MSD]
