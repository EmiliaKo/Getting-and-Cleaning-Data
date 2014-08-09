#Getting and Cleaning Data
# Project 
## Author : Emilia

### Introduction
The main objective of the project is to load, integrate and clean data collected from the accelerometers from the Samsung Galaxy S smartphone. Using embedded accelerometer and gyroscope in mobile phone,  3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz was captured [1]. Provided data are raw data that need to be integrated and cleaned.

Getting and clining the data have been done in four steps:
### 1. Data loading
Data from following files were loaded:
* "activity_labels.txt"
* "features.txt"
* "X_test.txt"
* "y_test.txt"
* "subject_test.txt"
* "X_train.txt"
* "y_train.txt"
* "subject_train.txt"

### 2. Data merging
Train and test data were merged by rows:
1. *_'X_test.txt'_* with *_'X_train.txt'_*
2. *_"y_test.txt"_* with *_"y_train.txt"_*
3. *_'subject_test.txt'_* with *_"subject_train.txt"_*

### 3. Data subsetting
Features related only to average and standard deviation were extracted. First, list of features were search for substrings: "mean" and "std". Next, data frame with variables realted to founded features was created. For each subject and for each activity type average for every signal was calculated. Finally, activity labels (1-6) were change to descriptive variable names.

### 4. Saving tidy data
Finally, the table with data was saved. For each subject I got 6 rows (for each activity). Final table has 180 rows and 81 columns. Data was saved to data.txt.


 
