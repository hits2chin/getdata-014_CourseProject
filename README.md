=================================================================
Project submission for assignment on coursera
Course Name: Getting and Cleaning Data
Course Id: getdata-014
=================================================================
The assignment is based on the data provided on 30 people on 6 activities viz. LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS & WALKING_UPSTAIRS. The data was collected using samsung handset.

The assignment requires to collect the data from net and make it undergo the process of cleaning to acquire a tidy dataset.
=================================================================

The tidy dataset is created with the filename "tidydata.txt". It does not have header name written in it. Headernames are
as mentioned below with 180 entries(30 SubjectId * 6 ActivityName).
1	SubjectId
2	ActivityName
3	Time-Accelerometer-Mean-X
4	Time-Accelerometer-Mean-Y
5	Time-Accelerometer-Mean-Z
6	Time-Accelerometer-SD-X
7	Time-Accelerometer-SD-Y
8	Time-Accelerometer-SD-Z
9	Time-Gravity-Accelerometer-Mean-X
10	Time-Gravity-Accelerometer-Mean-Y
11	Time-Gravity-Accelerometer-Mean-Z
12	Time-Gravity-Accelerometer-SD-X
13	Time-Gravity-Accelerometer-SD-Y
14	Time-Gravity-Accelerometer-SD-Z
15	Time-Accelerometer-Jerk-Mean-X
16	Time-Accelerometer-Jerk-Mean-Y
17	Time-Accelerometer-Jerk-Mean-Z
18	Time-Accelerometer-Jerk-SD-X
19	Time-Accelerometer-Jerk-SD-Y
20	Time-Accelerometer-Jerk-SD-Z
21	Time-Gyroscope-Mean-X
22	Time-Gyroscope-Mean-Y
23	Time-Gyroscope-Mean-Z
24	Time-Gyroscope-SD-X
25	Time-Gyroscope-SD-Y
26	Time-Gyroscope-SD-Z
27	Time-Gyroscope-Jerk-Mean-X
28	Time-Gyroscope-Jerk-Mean-Y
29	Time-Gyroscope-Jerk-Mean-Z
30	Time-Gyroscope-Jerk-SD-X
31	Time-Gyroscope-Jerk-SD-Y
32	Time-Gyroscope-Jerk-SD-Z
33	Time-Accelerometer-Magnitude-Mean
34	Time-Accelerometer-Magnitude-SD
35	Time-Gravity-Accelerometer-Magnitude-Mean
36	Time-Gravity-Accelerometer-Magnitude-SD
37	Time-Accelerometer-Jerk-Magnitude-Mean
38	Time-Accelerometer-Jerk-Magnitude-SD
39	Time-Gyroscope-Magnitude-Mean
40	Time-Gyroscope-Magnitude-SD
41	Time-Gyroscope-Jerk-Magnitude-Mean
42	Time-Gyroscope-Jerk-Magnitude-SD
43	Frequency-Accelerometer-Mean-X
44	Frequency-Accelerometer-Mean-Y
45	Frequency-Accelerometer-Mean-Z
46	Frequency-Accelerometer-SD-X
47	Frequency-Accelerometer-SD-Y
48	Frequency-Accelerometer-SD-Z
49	Frequency-Accelerometer-Jerk-Mean-X
50	Frequency-Accelerometer-Jerk-Mean-Y
51	Frequency-Accelerometer-Jerk-Mean-Z
52	Frequency-Accelerometer-Jerk-SD-X
53	Frequency-Accelerometer-Jerk-SD-Y
54	Frequency-Accelerometer-Jerk-SD-Z
55	Frequency-Gyroscope-Mean-X
56	Frequency-Gyroscope-Mean-Y
57	Frequency-Gyroscope-Mean-Z
58	Frequency-Gyroscope-SD-X
59	Frequency-Gyroscope-SD-Y
60	Frequency-Gyroscope-SD-Z
61	Frequency-Accelerometer-Magnitude-Mean
62	Frequency-Accelerometer-Magnitude-SD
63	Frequency-Accelerometer-Jerk-Magnitude-Mean
64	Frequency-Accelerometer-Jerk-Magnitude-SD
65	Frequency-Gyroscope-Magnitude-Mean
66	Frequency-Gyroscope-Magnitude-SD
67	Frequency-Gyroscope-Jerk-Magnitude-Mean
68	Frequency-Gyroscope-Jerk-Magnitude-SD
=========================================
The following files are included in this Repo
- 'README.md'
- 'CodeBook.md': Describes variablesand the process of cleaning

- 'run_analysis.R': Master script calling all other scripts
- '1_Download.R': It downloads the raw data in zip format and unzips it.
- '2_ReadFiles.R': Reads all the files and loads into memory.
- '3_Combine_Merge.R': Combines test data and train data under the 3 categories viz. activity, subject and feature measurement and merges the 3 files. This also completes the first task i.e. 
	1. Merges the training and the test sets to create one data set.
- '4_Feature_Filter'.R: Removes all features except the ones measuring mean and standard deviation. This also completes the second task i.e. 
	2. Extracts only the measurements on the mean and standard deviation for each measurement. 
- '5_Name_Activity.R': Matches numeric "ActivityClass" to descriptive "ActivityName". This also completes the third task i.e. 
	3. Uses descriptive activity names to name the activities in the data set

- '6_Name_Feature.R': Changes the header labels and saves a copy of the tidy data. This also completes fourth an fifth tasks i.e. 
	4. Appropriately labels the data set with descriptive variable names. 
	5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
=========================================