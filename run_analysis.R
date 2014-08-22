#    
#    Getting and Cleaning Data - Course Project
#    ------------------------------------------
#
#    Brendan Madigan  ---  Melbourne, Australia
#
#    The purpose of this project is to demonstrate ability to collect, work with,
#    and clean a data set
#    
#    The data for the project can be found at: 
#
#      https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#
#    This R Script called run_analysis.R that does the following:
#
#    1.Merges the training and the test sets to create one data set.
#    2.Extracts only the measurements on the mean and standard deviation for each
#      measurement. 
#    3.Uses descriptive activity names to name the activities in the data set
#    4.Appropriately labels the data set with descriptive variable names. 
#    5.Creates a second, independent tidy data set with the average of each variable 
#      for each activity and each subject
#

run_analysis <- function(){ 
        
library("reshape2") 
library("data.table")

# 
#       Start by downloading and unzipping the data 
#       
        fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
        download.file(fileUrl, destfile = "Dataset.zip") 
#        
#       load each of the data sets into a table
#
        features     <- read.table("./UCI HAR Dataset/features.txt", header=F, colClasses="character")
        activities   <- read.table("./UCI HAR Dataset/activity_labels.txt", header=F, colClasses="character")
        xTest        <- read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)
        yTest        <- read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE) 
        subjectTest  <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE) 
        xTrain       <- read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE) 
        yTrain       <- read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE) 
        subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE) 
#
#       bind all the tables together
#
        mergedData   <- list(X = rbind(xTrain, xTest), Y = rbind(yTrain, yTest), S = rbind(subjectTrain, subjectTest)) 

#
#       set the required featers as those relating to mean and std (standard deviation)
#
        reqdFeatures <- grep("-mean\\(\\)|-std\\(\\)", features[, 2]) 

#
#       get just the required features
#
        mergedData$X <- mergedData$X[, reqdFeatures] 

#
#       set the column names for the required features
#
        names(mergedData$X) <- features[reqdFeatures, 2] 
        names(mergedData$X) <- gsub("\\(|\\)", "", names(mergedData$X)) 
        names(mergedData$X) <- tolower(names(mergedData$X)) 
#
#       set the activity names
#
        activities[, 2] <- gsub("_", "", tolower(activities[, 2])) 
        mergedData$Y[,1] <- activities[mergedData$Y[,1], 2] 
        names(mergedData$Y) <- "activities" 
        names(mergedData$S) <- "subject" 
#     
#       bind the required columes to create the "tidy" data
#
        tidy <- cbind(mergedData$S, mergedData$Y, mergedData$X) 

#
#       Output the comma separated file as tidy.txt
#
        write.csv(tidy, "tidy.txt", row.names=F) 
#      
#       Create a second, independent tidy data set with the average of each variable for each activity and each subject 
#      
        melted <- melt(tidy, 1:2) 
        tidy2 <- dcast(melted, subject + activities ~ variable, mean) 
        write.csv(tidy2, "tidy2.txt", row.names=F) 
 }