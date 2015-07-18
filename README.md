# HumanActivityRecognition - README

### Coursera 'Getting and Cleaning Data' Programming Assignment

Goal of this project is to extract data concerning mean and standard deviation from the data collected in certain experiments from the accelerometers of the Samsung Galaxy S smartphone. A full description of the experiment about Wearable Computing is available on the following website:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data sets described in the code book in this repo can be reproduced in the follwing way:
+ download the data of the experiment: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
+ unzip the data
+ download the run_analysis.R script from this repo into the same directory where the ????? directory of the original data is located
+ open the R console and go to the same directory
+ > source("./run_analysis.R")
(the last step may take some time!)

After follwing these steps you will find dataframes 'data' and 'data2' in your workspace. For a detailed description see the code book.
