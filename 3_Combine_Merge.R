## This script Combines test data and train data under the 3 categories viz. activity, subject and feature measurement and merges the 3 files
## This also completes the first task i.e. 
## 1. Merges the training and the test sets to create one data set.
## The list of package required and the function used is as follows.
## Base Package:  rbind, cbind

X_Merged<-rbind(X_test,X_train)
y_Merged<-rbind(y_test,y_train)
sub_Merged<-rbind(sub_test,sub_train)
colnames(y_Merged)<-"ActivityClass";
colnames(sub_Merged)<-"SubjectId";
colnames(X_Merged)<-featureList[,2]; 

Combine_Merged<-cbind(y_Merged,sub_Merged,X_Merged) 
