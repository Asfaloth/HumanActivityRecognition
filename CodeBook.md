# Data Dictionary
# Human Activity Recognition Using Smartphones Data Set - Programming Assignment

The script `run_analyis.R` generates the two dataframes `data` and `data2` in the workspace of R (`data2` also is stored in the `average_data.txt` in this repo). This code book contains information about 

1. the experiment the data come from, 
2. the way the original data are processed to obtain the dataframes `data` and `data2`
3. the variables in `data` and `data2`,
4. the script `run_analyis.R`

### 1. The Experiment and the original data

For full information about the experiment go to:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Here are some informations about the experiment from the above website resp. the `UCI HAR Dataset/README.txt` and 
the `UCI HAR Dataset/features_info.txt` (contained in the above archive)

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.   
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

> For each record it is provided:
> - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
> - Triaxial Angular velocity from the gyroscope. 
> - A 561-feature vector with time and frequency domain variables. 
> - Its activity label. 
> - An identifier of the subject who carried out the experiment.

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.   
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).   
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).   
> These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
+ **tBodyAcc-XYZ**
+ **tGravityAcc-XYZ**
+ **tBodyAccJerk-XYZ**
+ **tBodyGyro-XYZ**
+ **tBodyGyroJerk-XYZ**
+ **tBodyAccMag**
+ **tGravityAccMag**
+ **tBodyAccJerkMag**
+ **tBodyGyroMag**
+ **tBodyGyroJerkMag**
+ **fBodyAcc-XYZ**
+ **fBodyAccJerk-XYZ**
+ **fBodyGyro-XYZ**
+ **fBodyAccMag**
+ **fBodyAccJerkMag**
+ **fBodyGyroMag**
+ **fBodyGyroJerkMag**  
> The set of variables that were estimated from these signals are:   
+ **mean()**: Mean value
+ **std()**: Standard deviation
+ **mad()**: Median absolute deviation 
+ **max()**: Largest value in array
+ **min()**: Smallest value in array
+ **sma()**: Signal magnitude area
+ **energy()**: Energy measure. Sum of the squares divided by the number of values. 
+ **iqr()**: Interquartile range 
+ **entropy()**: Signal entropy
+ **arCoeff()**: Autorregresion coefficients with Burg order equal to 4
+ **correlation()**: correlation coefficient between two signals
+ **maxInds()**: index of the frequency component with largest magnitude
+ **meanFreq()**: Weighted average of the frequency components to obtain a mean frequency
+ **skewness()**: skewness of the frequency domain signal 
+ **kurtosis()**: kurtosis of the frequency domain signal 
+ **bandsEnergy()**: Energy of a frequency interval within the 64 bins of the FFT of each window.
+ **angle()**: Angle between to vectors.  
> Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:  
+ **gravityMean**
+ **tBodyAccMean**
+ **tBodyAccJerkMean**
+ **tBodyGyroMean**
+ **tBodyGyroJerkMean**  
> The complete list of variables of each feature vector is available in `UCI HAR Dataset/features.txt`



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

- Features are normalized and bounded within [-1,1].

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

