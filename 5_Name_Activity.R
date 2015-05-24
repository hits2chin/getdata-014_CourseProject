## This script removes all features except the ones measuring mean and standard deviation.
## This also completes the third task i.e. 
## 3. Uses descriptive activity names to name the activities in the data set
## The list of package required and the function used is as follows.
## Base Package:  order, merge

names(activityNames)<-c("ActivityClass","ActivityName")
Filter_Combine<-Filter_Combine[order(Filter_Combine$SubjectId,Filter_Combine$ActivityClass),]
Join_Filter<-merge(Filter_Combine,activityNames,by='ActivityClass')
Final_Data<-Join_Filter[,c(2,69,3:68)]
