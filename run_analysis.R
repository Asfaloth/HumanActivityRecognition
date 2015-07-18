# A. Read all necessary data and store it in dataframes.

# Test subjects; 2947 obs. of 1 variable; column 1 int: label of the subject; 
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Test set; 2947 obs. of 561 variables;
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

# Test labels; 2947 obs. of 1 variable; column 1 int: label of activity (1-6)
# as in activity_labels.txt;
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

# Train subjects; 7352 obs. of 1 variable; column 1 int: label of the subject;
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Test set; 7352 obs. of 561 variables;
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")

# Train labels; 7352 obs. of 1 variable; column 1 int; label of the activity (1-6);
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

# Featurs; 561 objects of 2 variables; names of the 561 variables;
# 1st variable: number; 2nd variable: name;
features <- read.table("./UCI HAR Dataset/features.txt")

# Activity Labels; 6 obs. of 2 variables; names of the 6 acitivities;
# 1st variable: number; 2nd variable: activity;
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")



# B. Create one dataframe containing all variables concerning mean and sd.
# Remove unnecessary features before joining the dataframes 
# (to avoid very large dataframes).
# Remove superfluous data from workspace.

# Create a boolean vector to determine which features should be included in the
# final dataframe: choose all feature names in which "mean" or "std" appears
# (this includes the meanFreq() features);
necFeatures <- grepl("mean|std" ,features[,2])

# Remove unnecessary features;
X_test <- X_test[,necFeatures]
X_train <- X_train[,necFeatures]
features <- features[necFeatures,]
rm(necFeatures)

# Bind together the test- and train-data;
subject_bind <- rbind(subject_test, subject_train)
y_bind <- rbind(y_test,y_train)
X_bind <- rbind(X_test,X_train)
rm(subject_test,subject_train,y_test,y_train,X_test,X_train)

# Give the columns the names of the features they represent;
names(subject_bind) <- "subject"
names(y_bind) <- "activity"
names(X_bind) <- features[,2]
rm(features)

# Create the final dataframe;
data <- cbind(subject_bind,y_bind,X_bind)
rm(subject_bind,y_bind,X_bind)

# Use descriptive activity names in form of a factor;
data[,2] <- factor(data[,2], levels=1:6, labels=activity_labels[,2])
rm(activity_labels)

# Replace numbering of subjects by a factor;
data[,1] <- factor(data[,1])



# C. Create a second data set with the average of each variable for each 
# activity and each subject.

# Create this dataframe;
data2 <- aggregate(. ~ subject + activity, data, mean)