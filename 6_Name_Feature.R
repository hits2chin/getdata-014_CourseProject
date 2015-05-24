## This script changes the header labels and saves a copy of the tidy data. 
## This also completes the fourth and fifth tasks i.e. 
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## The list of package required and the function used is as follows.
## base Package:  names, gsub
## dplyr Package: %>%
## utils Package: write.table
## stats Package: aggregate
library(plyr);
library(dplyr)
names_Final<-names(Final_Data)
names_Final<- gsub("\\()","",names_Final) %>%
              gsub(pattern = "Mag",replacement = "-Magnitude") %>%
              gsub(pattern = "Acc",replacement = "-Accelerometer") %>%
              gsub(pattern = "Gyro",replacement = "-Gyroscope") %>%
              gsub(pattern = "Gravity",replacement = "-Gravity") %>%
              gsub(pattern = "Body",replacement = "") %>%
              gsub(pattern = "Jerk",replacement = "-Jerk") %>%
              gsub(pattern = "^f",replacement = "Frequency") %>%
              gsub(pattern = "^t",replacement = "Time") %>%
              gsub(pattern = "mean",replacement = "Mean") %>%
              gsub(pattern = "std",replacement = "SD")
names(Final_Data)<-names_Final
write.table(Final_Data, file = "RawData.txt")

TidyData<-aggregate(. ~SubjectId + ActivityName, Final_Data, mean)
TidyData<-TidyData[order(TidyData$SubjectId,TidyData$ActivityName),]
write.table(TidyData, file = "tidydata.txt",row.name=FALSE)
