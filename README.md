# HumanActivityRecognition - README

### Coursera 'Getting and Cleaning Data' Programming Assignment

Goal of this project is to extract data concerning mean and standard deviation from the data collected in certain experiments from the accelerometers of the Samsung Galaxy S smartphone. A full description of the experiment about Wearable Computing is available on the following website:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data sets described in the code book in this repo can be reproduced in the follwing way:
+ download the original data of the experiment:  
      https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
+ unzip the data
+ download the `run_analysis.R` script from this repo into the same directory which contains the `UCI HAR Dataset` directory of the unzipped original data
+ open an R console and access the same directory
+ execute the following in the R console (this may take some time!):   
      ```
      source("run_analysis.R")
      ```

After follwing these steps you will find the dataframes `data` and `data2` in your workspace. For a detailed description see the code book.

The file `average_data.txt` in this repo contains the data of the dataframe `data2`. It can be reproduced by executing the following in your console (after loading the dataframe `data2` described as above):  
            ```
            write.table(data2, file="./average_data.txt", row.names = FALSE)
            ```

