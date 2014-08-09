## project in  'Getting and Cleaning Data'
## author:        Emilia
## last updated:  09-08-2014

setwd("C:\\Users\\Emilia\\Desktop\\coursera\\Getting and Cleaning Data\\UCI HAR Dataset")

## load data
#---------------------------------------------------------------------------------------#
activity_labels<-read.table("activity_labels.txt")   # annotation of activity labels
features<-read.table("features.txt")                 # read columns labels for data

setwd("test")
data_test<-read.table("X_test.txt")                       # test data table
data_labels_test<- unlist(read.table("y_test.txt"));      # activity label
data_subject_test<-unlist(read.table("subject_test.txt")) # who performed activity

setwd("..\\")
setwd("train")
data_train<-read.table("X_train.txt")                       # train data table
data_labels_train<- unlist(read.table("y_train.txt"));      # activity label
data_subject_train<-unlist(read.table("subject_train.txt")) # who performed activity
setwd("..\\")
## merge train and test data
#---------------------------------------------------------------------------------------#
data         <-rbind(data_test,data_train)
data_labels  <-c(data_labels_test,data_labels_train)
data_subject <-c(data_subject_test,data_subject_train)

rm(data_test,data_train,data_labels_test,data_labels_train,data_subject_test,data_subject_train)

## extract features(columns) related to mean and standard deviation
#---------------------------------------------------------------------------------------#

features<-levels(features[ ,2])[features[ ,2]]
# which features are related to measurements on the mean ? 
feature_mean<-grepl("mean", features); 
feature_mean<-which(feature_mean)

# which features are related to measurements on the standard deviation? 
feature_std<-grepl("std", features); 
feature_std<-which(feature_std)

#create data frame with features only related to mean and standard deviation
data_frame<-data.frame(subject=data_subject,activity=data_labels)
row.names(data_frame) <- 1:nrow(data)

# add to data frame all features related to mean
for (feature_idx in 1:length(feature_mean)){
  data_frame[features[feature_mean[feature_idx]]] <- data[ ,feature_mean[feature_idx]]
}

# add to data frame all features related to standard deviation
for (feature_idx in 1:length(feature_std)){
  data_frame[features[feature_std[feature_idx]]] <- data[ ,feature_std[feature_idx]]
}

data<-NULL;

## calculate mean for each subject and each activity
#---------------------------------------------------------------------------------------#

# for every subject
for(subject_idx in sort(unique(data_subject)) ){ 
  #split data according to activity
  data_person<-subset(data_frame,subject==subject_idx)
  data_split<-split(data_person,data_person$activity);
  
  #for each activity  
  for(activity_idx in unique(data_labels)){
    data<-rbind(data,unlist(lapply(data_split[[activity_idx]],mean))) #average calculate
  } 
}

## annotation and data saving
#---------------------------------------------------------------------------------------#

# change data form matrix to data.frame
data<-data.frame(data)

# annotate activity 
for(activity_idx in 1:6)
{data$activity[data$activity == activity_labels[activity_idx,1]] <- 
   levels(activity_labels[activity_idx,2])[activity_labels[activity_idx,2]]}


#save data to new txt file

write.table(data, file = "data.txt")
#DATA<-read.table("data.txt")