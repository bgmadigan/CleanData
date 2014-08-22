

    Data for this project is attributable to - 

    ==================================================================
    Human Activity Recognition Using Smartphones Dataset
    Version 1.0   
    ==================================================================
    Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
    Smartlab - Non Linear Complex Systems Laboratory
    DITEN - Università degli Studi di Genova.
    Via Opera Pia 11A, I-16145, Genoa, Italy.
    activityrecognition@smartlab.ws
    www.smartlab.ws
    ==================================================================
   

    DATA CLEANING STEPS:
    --------------------

    The R Script "run_analysis.R" that does the following:

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

    RAW DATA
    --------

    The raw data relates to measurements taken in experiments collecting smartphone data.

    These experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
    Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
    wearing a smartphone (Samsung Galaxy S II) on the waist. 

    Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at 
    a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has 
    been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data 
    and 30% the test data. 

    The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled 
    in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal,
    which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body 
    acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore 
    a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating 
    variables from the time and frequency domain.

    A data set features.txt,included in the downloaded data contains the names of 561 attributes that are recorded.

    The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ 
    and tGyro-XYZ. 

    These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were 
    filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to 
    remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
    (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

    Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
    (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated 
    using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

    Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, 
    fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

    These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 
    3-axial signals in the X, Y and Z directions.

    TIDIED DATA
    -----------

    The "tidied" set of variables that were selected from the experimental data are
         
              (1)  mean() - Mean values
              (2)  std()  - Standard deviation values

    There are 66 features in the source that correspond to means and standard deviations. 

    The output files tidy.txt and tidy2.txt both have 68 columns:

              subject  - an integer from 1 to 30 
              activity - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING
              66 columns corresponding to the 66 mean and standard deviation measurments(tidy.txt) and averages (tidy2.txt) 


    tidy.txt - This is a .csv file which holds all the measurements for the 66 features for each subject and activity.


    tidy2.txt - This is a .csv file which holds the averages for each mean / standard deviation measurement for each subject and -activity

    The data columns in the tidied data files are :

      [ 1]  subject 
      [ 2]  activities 
      [ 3]  tbodyacc-mean-x            
      [ 4]  tbodyacc-mean-y           
      [ 5]  tbodyacc-mean-z            
      [ 6]  tbodyacc-std-x            
      [ 7]  tbodyacc-std-y             
      [ 8]  tbodyacc-std-z            
      [ 9]  tgravityacc-mean-x        
      [10]  tgravityacc-mean-y        
      [11]  tgravityacc-mean-z        
      [12]  tgravityacc-std-x         
      [13]  tgravityacc-std-y         
      [14]  tgravityacc-std-z         
      [15]  tbodyaccjerk-mean-x        
      [16]  tbodyaccjerk-mean-y       
      [17]  tbodyaccjerk-mean-z        
      [18]  tbodyaccjerk-std-x        
      [19]  tbodyaccjerk-std-y         
      [20]  tbodyaccjerk-std-z        
      [21]  tbodygyro-mean-x          
      [22]  tbodygyro-mean-y          
      [23]  tbodygyro-mean-z           
      [24]  tbodygyro-std-x           
      [25]  tbodygyro-std-y           
      [26]  tbodygyro-std-z           
      [27]  tbodygyrojerk-mean-x      
      [28]  tbodygyrojerk-mean-y      
      [29]  tbodygyrojerk-mean-z      
      [30]  tbodygyrojerk-std-x       
      [31]  tbodygyrojerk-std-y       
      [32]  tbodygyrojerk-std-z       
      [33]  tbodyaccmag-mean         
      [34]  tbodyaccmag-std           
      [35]  tgravityaccmag-mean       
      [36]  tgravityaccmag-std        
      [37]  tbodyaccjerkmag-mean      
      [38]  tbodyaccjerkmag-std       
      [39]  tbodygyromag-mean          
      [40]  tbodygyromag-std          
      [41]  tbodygyrojerkmag-mean     
      [42]  tbodygyrojerkmag-std      
      [43]  fbodyacc-mean-x           
      [44]  fbodyacc-mean-y           
      [45]  fbodyacc-mean-z           
      [46]  fbodyacc-std-x            
      [47]  fbodyacc-std-y            
      [48]  fbodyacc-std-z            
      [49]  fbodyaccjerk-mean-x        
      [50]  fbodyaccjerk-mean-y       
      [51]  fbodyaccjerk-mean-z       
      [52]  fbodyaccjerk-std-x        
      [53]  fbodyaccjerk-std-y        
      [54]  fbodyaccjerk-std-z        
      [55]  fbodygyro-mean-x          
      [56]  fbodygyro-mean-y          
      [57]  fbodygyro-mean-z        
      [58]  fbodygyro-std-x           
      [59]  fbodygyro-std-y           
      [60]  fbodygyro-std-z           
      [61]  fbodyaccmag-mean          
      [62]  fbodyaccmag-std           
      [63]  fbodybodyaccjerkmag-mean   
      [64]  fbodybodyaccjerkmag-std   
      [65]  fbodybodygyromag-mean      
      [66]  fbodybodygyromag-std      
      [67]  fbodybodygyrojerkmag-mean  
      [68]  fbodybodygyrojerkmag-std  
