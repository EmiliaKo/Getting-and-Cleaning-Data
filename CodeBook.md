
CodeBook 
==================================================================
## Human Activity Recognition Using Smartphones Dataset Version 1.0



## Introduction 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities:
* WALKING, 
* WALKING_UPSTAIRS, 
* WALKING_DOWNSTAIRS, 
* SITTING, STANDING, 
* LAYING 

wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angularvelocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### Raw data:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.



### Data description :

The dataset includes the following files:
* 'README.md'  : performed data cleaning
* 'CodeBook.md': data description file
* 'data.txt'   : tidy data

### Tidy data:

For each activity:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING
and for each subject: idetifiers for 1 - 30 average for each feature was calculated. Data consists of 79 features related to mean and standard deviation. The following table describe each column in clean data.

|feature index  |feature name	                |	description	                                                                   			|
|---------------|-------------------------------|---------------------------------------------------------------------------------------------------------------|
|	1       |tBodyAcc-mean()-X 		|body acceleration signals x-axis (mean)        								|
|	2       |tBodyAcc-mean()-Y 		|body acceleration signals y-axis (mean) 									|
|	3       |tBodyAcc-mean()-Z 		|body acceleration signals z-axis (mean)  									|
|	4       |tGravityAcc-mean()-X 		|gravity acceleration signals x-axis (mean)  									|
|	5       |tGravityAcc-mean()-Y 		|gravity acceleration signals y-axis (mean)  									|
|	6       |tGravityAcc-mean()-Z 		|gravity acceleration signals z-axis (mean)  									|
|	7       |tBodyAccJerk-mean()-X 		|Jerk acceleration signals x-axis (mean)									|
|	8	|tBodyAccJerk-mean()-Y 		|Jerk acceleration signals y-axis (mean)									|
|	9	|tBodyAccJerk-mean()-Z 		|Jerk acceleration signals z-axis (mean)									|
|	10	|tBodyGyro-mean()-X 		|body gyroscope signals x-axis (mean) 										|
|	11	|tBodyGyro-mean()-Y 		|body gyroscope signals y-axis (mean) 										|
|	12	|tBodyGyro-mean()-Z		|body gyroscope signals z-axis (mean)  										|
|	13	|tBodyGyroJerk-mean()-X 	|Jerk gyroscope signals x-axis (mean)										|
|	14	|tBodyGyroJerk-mean()-Y  	|Jerk gyroscope signals y-axis (mean)										|
|	15	|tBodyGyroJerk-mean()-Z 	|Jerk gyroscope signals z-axis (mean)										|
|	16	|tBodyAccMag-mean()		|the magnitude of body acceleration signals (mean)								|
|	17	|tGravityAccMag-mean()		|the magnitude of gravity acceleration signals (mean)								|
|	18	|tBodyAccJerkMag-mean())	|the magnitude of body acceleration signals (mean)								|
|	19	|tBodyGyroMag-mean())		|the magnitude of body gyroscope signals (mean)									|
|	20	|tBodyGyroJerkMag-mean()	|the magnitude of Jerk gyroscope signals (mean)									|
|	21	|fBodyAcc-mean()-X		|frequency domain body acceleration signals x-axis (mean)        						|
|	22	|fBodyAcc-mean()-Y		|frequency domain body acceleration signals y-axis (mean)        						|
|	23	|fBodyAcc-mean()-Z		|frequency domain body acceleration signals z-axis (mean)        						|
|	24	|fBodyAcc-meanFreq()-X		|weighted average of the frequency components to obtain a mean frequency x-axis					|
|	25	|fBodyAcc-meanFreq()-Y		|weighted average of the frequency components to obtain a mean frequency y axis					|
|	26	|fBodyAcc-meanFreq()-Z		|weighted average of the frequency components to obtain a mean frequency z-axis					|
|	27	|fBodyAccJerk-mean()-X		|frequency domain Jerk acceleration signals x-axis (mean)							|
|	28	|fBodyAccJerk-mean()-Y		|frequency domain Jerk acceleration signals y-axis (mean)							|
|	29	|fBodyAccJerk-mean()-Z		|frequency domain Jerk acceleration signals z-axis (mean)							|
|	30	|fBodyAccJerk-meanFreq()-X	|Weighted average of the frequency components to obtain a mean frequency x-axis					|
|	31	|fBodyAccJerk-meanFreq()-Y	|weighted average of the frequency components to obtain a mean frequency y-axis					|
|	32	|fBodyAccJerk-meanFreq()-Z	|weighted average of the frequency components to obtain a mean frequency z-axis					|
|	33	|fBodyGyro-mean()-X		|frequency domain body gyroscope signals x-axis (mean)        							|
|	34	|fBodyGyro-mean()-Y		|frequency domain body gyroscope signals y-axis (mean)        							|
|	35	|fBodyGyro-mean()-Z		|frequency domain body gyroscope signals z-axis (mean)        							|
|	36	|fBodyGyro-meanFreq()-X		|weighted average of the frequency components to obtain a mean frequency x-axis					|
|	37	|fBodyGyro-meanFreq()-Y		|weighted average of the frequency components to obtain a mean frequency y axis					|
|	38	|fBodyGyro-meanFreq()-Z		|weighted average of the frequency components to obtain a mean frequency z-axis					|
|	39	|fBodyAccMag-mean()		|frequency domain the magnitude of body acceleration signals (mean)						|
|	40	|fBodyAccMag-meanFreq()		|frequency domain the maginitude of body acceleration signals (mean)						|
|	41	|fBodyBodyAccJerkMag-mean()	|frequency domain the magnitude of body gyroscope signals (mean)						|
|	42	|fBodyBodyAccJerkMag-meanFreq()	|frequency domain the magnitude of Jerk  body gyroscope signals (mean)						|
|	43	|fBodyBodyGyroMag-mean()	|frequency domain the magnitude of Jerk body aceleration signals (mean)						|
|	44	|fBodyBodyGyroMag-meanFreq()	|frequency domain the magnitude of  body gyroscope signals (mean)						|
|	45	|fBodyBodyGyroJerkMag-mean()	|frequency domain the magnitude of Jerk  body gyroscope signals (mean)						|
|	46	|fBodyBodyGyroJerkMag-meanFreq()|frequency domain the weighted average of the frequency of the magnitude of Jerk  body gyroscope signals (mean)	|
|	47	|tBodyAcc-std()-X		|body acceleration signals x-axis (standard deviation)        							|
|	48	|tBodyAcc-std()-Y		|body acceleration signals y-axis (standard deviation)  							|
|	49	|tBodyAcc-std()-Z		|body acceleration signals z-axis (standard deviation)  							|
|	50	|tGravityAcc-std()-X		|gravityacceleration signals x-axis (standard deviation)  							|
|	51	|tGravityAcc-std()-Y		|gravityacceleration signals y-axis (standard deviation)							|
|	52	|tGravityAcc-std()-Z		|gravityacceleration signals z-axis (standard deviation)							|
|	53	|tBodyAccJerk-std()-X		|Jerk acceleration signals x-axis (standard deviation)								|
|	54	|tBodyAccJerk-std()-Y		|Jerk acceleration signals y-axis (standard deviation)								|
|	55	|tBodyAccJerk-std()-Z		|Jerk acceleration signals z-axis (standard deviation)								|
|	56	|tBodyGyro-std()-X		|body gyroscope signals x-axis (standard deviation) 								|
|	57	|tBodyGyro-std()-Y		|body gyroscope signals y-axis (standard deviation) 								|
|	58	|tBodyGyro-std()-Z		|body gyroscope signals z-axis (standard deviation) 								|
|	59	|tBodyGyroJerk-std()-X		|Jerk gyroscope signals x-axis (standard deviation)								|
|	60	|tBodyGyroJerk-std()-Y		|Jerk gyroscope signals y-axis (standard deviation)								|
|	61	|tBodyGyroJerk-std()-Z		|Jerk gyroscope signals z-axis (standard deviation)								|
|	62	|tBodyAccMag-std()		|the magnitude of body acceleration signals (standard deviation)						|
|	63	|tGravityAccMag-std()		|the magnitude of gravity acceleration signals (standard deviation)						|
|	64	|tBodyAccJerkMag-std()		|the magnitude of body acceleration signals (standard deviation)						|
|	65	|tBodyGyroMag-std()		|the magnitude of body gyroscope signals (standard deviation)							|
|	66	|tBodyGyroJerkMag-std()		|the magnitude of Jerk gyroscope body signals (standard deviation)						|
|	67	|fBodyAcc-std()-X		|frequency domain body acceleration signals x-axis (standard deviation)        					|
|	68	|fBodyAcc-std()-Y		|frequency domain body acceleration signals y-axis (standard deviation)         				|
|	69	|fBodyAcc-std()-Z		|frequency domain body acceleration signals z-axis (standard deviation)     					|
|	70	|fBodyAccJerk-std()-X		|frequency domain body Jerk accelerations signal x-axis (standard deviation)        				|
|	71	|fBodyAccJerk-std()-Y		|frequency domain body Jerk accelerations signal y-axis (standard deviation)         				|
|	72	|fBodyAccJerk-std()-Z		|frequency domain body Jerk accelerations signal z-axis (standard deviation)     				|
|	73	|fBodyGyro-std()-X		|frequency domain body gyroscope signals x-axis (standard deviation)        					|
|	74	|fBodyGyro-std()-Y		|frequency domain body gyroscope signals y-axis (standard deviation)         					|
|	75	|fBodyGyro-std()-Z		|frequency domain body gyroscope signals z-axis (standard deviation)     					|
|	76	|fBodyAccMag-std()		|frequency domain the maginitude of body acceleration signals (standard deviation)				|
|	77	|fBodyBodyAccJerkMag-std()	|frequency domain the magnitude of Jerk body aceleration signals (standard deviation)				|
|	78	|fBodyBodyGyroMag-std()		|frequency domain the magnitude of  body gyroscope signals (standard deviation)					|
|	79	|fBodyBodyGyroJerkMag-std()	|frequency domain the magnitude of Jerk  body gyroscope signals (standard deviation)				|


### Reference:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
