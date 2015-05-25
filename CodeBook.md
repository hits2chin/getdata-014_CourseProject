CODEBOOK
----------------------------------------------------------------------------
Following are the list of R files that executes the tasks.
- run_analysis.R
- 1_Download.R
- 2_ReadFiles.R
- 3_Combine_Merge.R
- 4_Feature_Filter.R
- 5_Name_Activity.R
- 6_Name_Feature.R

Variable Details
----------------------------------------------------------------------------
Following is the description of variables used in these individual R files.

###run_analysis.R
File that calls all other R files. no variables used.

###1_Download.R
-URL: Variable used to store the url of the zipfile to be downloaded

###2_ReadFiles.R
-myPath: Variable used to store the path of the folder containing all the data, obtained by concatenating current path and "/UCI HAR Dataset"
-fileList: list of files stored for any future requirements
-featureList: stores the content of the file features.txt
-activityNames: stores the content of the file activity_labels.txt
-X_test/train: stores the content of the file X_test/train.txt
-y_test/train: stores the content of the file y_test/train.txt
-sub_test/train: stores the content of the file sub_test/train.txt

###3_Combine_Merge.R
-X_Merged: Merges the content of the file X_test/train.txt
-y_Merged: Merges the content of the file y_test/train.txt
-sub_Merged: Merges the content of the file sub_test/train.txt
-Combine_Merged: Combines the data in the three variables mentioned above

###4_Feature_Filter.R
-HeadingNames: Stores the headings of the merged data
-colNames_MSD: Stores the indices of the relevant data as a logical vector
-Filter_Combine: Output after filtering

###5_Name_Activity.R
-Filter_Combine: Variable reordered acoording to SubjectId and ActivityClass
-Join_Filter: Filter_combine merged with activityNames
-Final_data: ActivityId removed from Join_Filter and Columns reordered

###6_Name_Feature.R
-names_Final: Names of the headers of Final_Data stored in this variable and changed to better descriptive names for changing the header names of Final_Data
-TidyData: Tidy data averaged over subject id and activity name ordered by subject id and activity name