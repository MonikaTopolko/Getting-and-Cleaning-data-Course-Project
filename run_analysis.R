# Download and unzip the data from the provided URL and make sure the files are placed in your R working direcory
setwd("/home/monika/ownCloud/Data Science specijalizacija/03 Getting and cleaning data/Week 4/Project/UCI HAR Dataset")

# Load required packages (install if necessary)
library(dplyr)
library (data.table)

# Read the train data
X_train <- read.table("./train/X_train.txt")
Y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")

# Read the test data
X_test <- read.table("./test/X_test.txt")
Y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

# Read features and activity labels
features <- read.table("./features.txt")
activity_labels <- read.table("./activity_labels.txt")

# Create data sets with the right coloumn names
colnames(X_train) = features[,2]
colnames(Y_train) = "activityId"
colnames(subject_train) = "subjectId"
colnames(X_test) = features[,2]
colnames(Y_test) = "activityId"
colnames(subject_test) = "subjectId"
colnames(activity_labels) <- c('activityId','activityType')

# Merge the training and the test sets to create one data set
train_data <- cbind(Y_train, subject_train, X_train)
test_data <- cbind(Y_test, subject_test, X_test)
merged_data<-rbind(train_data, test_data)

# Read all the values that are available
colNames = colnames(merged_data)

# Get a subset of all the mean and standards and the corresponding activityID and subjectID 
mean_std = (grepl("activityId" , colNames) | grepl("subjectId" , colNames) | grepl("mean.." , colNames) | grepl("std.." , colNames))

## Create a subset to get the required data set
mean_std_subset<- merged_data[ , mean_std == TRUE]
descriptive_data = merge(mean_std_subset, activity_labels, by='activityId', all.x=TRUE)

# Create a new tidy data set with the average of each variable for each activity and each subject
tidy_data <- aggregate(. ~subjectId + activityId, descriptive_data, mean)
tidy_data <- tidy_data[order(tidy_data$subjectId, tidy_data$activityId),]

# Write the output to a text file
write.table(tidy_data, "tidy_data.txt", row.names = FALSE, col.names = TRUE)

