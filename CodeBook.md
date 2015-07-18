# Data Dictionary
# Human Activity Recognition Using Smartphones Data Set - Programming Assignment

The script `run_analyis.R` generates the two dataframes `data` and `data2` in the workspace of R (`data2` also is stored in the `average_data.txt` in this repo). This code book contains information about the experiment the data come from, the variables in `data` and `data2` and the way the script `run_analyis.R` works.

### The Experiment

### The variables in the dataframes

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

### The script `run_analyis.R`

