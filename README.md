
    Data Science - Getting and Cleaning Data - Course Project

                   Brendan Madigan - Melbourne Australia

    OVERVIEW
    --------

    The purpose of this project is to demonstrate ability to collect, work with,
    and clean a data set
    
    The data for the project can be found at: 

      https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

    The R Script is called run_analysis.R that does the following:

    1. Downloads the zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
    2. Unzips the data to a file called DataFile.zip
    3. Loads each of the features, subjexts and X and Y training and test set data files 
    4. Merges the training and the test sets to create one data set called tidy.txt
    5. Extracts only the measurements on the mean and standard deviation for each
       measurement. 
    6. Uses descriptive activity names to name the activities in the data set
    7. Appropriately labels the data set with descriptive variable names. 
    8. Creates a second, independent tidy data set with the average of each variable 
       for each activity and each subject called tidy2.txt

    EXECUTION
    ---------
     
    1. Call the function run_analysis()
    2. The output is two files tidy.txt and tidy2.txt


    OUTPUT FILES
    ------------

    1. The two files are stored in csv format
    2. The two files are written to the current working directory

    3. tidy.txt contains the subject, X an Y data relating to the mean and std (standard deviation) measures only
    4. The first two columns contain the subject number and activity name.
    5. The column names are the measuremrnt names 

    6. tidy2.txt ;ists the subject and activity and the average of each of the measurements from tidy.txt

    ASSUMPTIONS
    -----------

    1. The R script (run_analysis.R) has internet access so that the zipped data file can be down loaded
    2. The UCI HAR Dataset will be copied to the working directory in a filename called Dataset.zip
    3. The download file Dataset.zip DOES NOT already exist in theworking directory
    4. The training set files are in the "UCI HAR Dataset/train" directory.
    5. The test files are in the "UCI HAR Dataset/test" directory.
    6. Activity codes are in the file activity_lables.txt
    7. Feature names are in the file features.txt
    8. The X measurements are in files the X_train.txt and X_test.txt
    9. The Y measurements are in files the Y_train.txt and Y_test.txt
   10. Subject measurements are in files subject_test.txt and subject_train.txt 
