# Data Dictionary
# Human Activity Recognition Using Smartphones Data Set - Programming Assignment

The script `run_analyis.R` generates the two dataframes `data` and `data2` in the workspace of R (`data2` also is stored in the `average_data.txt` in this repo). This code book contains information about 

1. the experiment the data come from, 
2. the way the original data are processed to obtain the dataframes `data` and `data2`
3. the variables in `data` and `data2`,
4. the script `run_analyis.R`

### 1. The Experiment 

Information about the experiment from `UCI HAR Dataset/README.txt`:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.   
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.




### 2. The variables in the dataframes

Both dataframes use the same variables.

+ **subject**  
    Factor with 30 levels representing the thirty test volunteers  
    1-30 

+ **activity** 
    Factor with 6 levels representing the activities performed by the subjects  
    WALKING  
    WALKING_UPSTAIRS  
    WALKING_DOWNSTAIRS  
    SITTING  
    STANDING  
    LAYING  

The remaining 79 variables contain numerical test data (mean/std indicates that there exists one variable for the mean and a different variable for the standard deviation of this quantity; X/Y/Z indicates that there exists three separate variables for the X, Y, and Z-direction describing the quantity)

+ **tBodyAcc-mean/std()-X/Y/Z**
+ **tGravityAcc-mean/std()-X/Y/Z** 
+ **tBodyAccJerk-mean/std()-X/Y/Z**
+ **tBodyGyro-mean/std()-X/Y/Z**
+ **tBodyGyroJerk-mean/std()-X/Y/Z**
+ **tBodyAccMag-mean/std()**
+ **tGravityAccMag-mean/std()** 
+ **tBodyAccJerkMag-mean/std()**
+ **tBodyGyroMag-mean/std()** 
+ **tBodyGyroJerkMag-mean/std()**
+ **fBodyAcc-mean/std()-X/Y/Z** 
+ **fBodyAcc-meanFreq()-X/Y/Z**
+ **fBodyAccJerk-mean/std()-X/Y/Z** 
+ **fBodyAccJerk-meanFreq()-X/Y/Z**
+ **fBodyGyro-mean/std()-X/Y/Z**
+ **fBodyGyro-meanFreq()-X/Y/Z**
+ **fBodyAccMag-mean()**
+ **fBodyAccMag-std()** 
+ **fBodyAccMag-meanFreq()**
+ **fBodyBodyAccJerkMag-mean/std()** 
+ **fBodyBodyAccJerkMag-meanFreq()**
+ **fBodyBodyGyroMag-mean/std()**
+ **fBodyBodyGyroMag-meanFreq()**
+ **fBodyBodyGyroJerkMag-mean/std()**
+ **fBodyBodyGyroJerkMag-meanFreq()**

### 3. The script `run_analyis.R`

