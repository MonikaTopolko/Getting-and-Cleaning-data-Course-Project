# Getting-and-Cleaning-Data Course Project

### Overview

This repository was created to finish the project assignment of Getting and Cleaning Data Coursera course offered by Johns Hopkins University's School of Public Health. The objective of the course project is to convert "messy" data into a tidy format that can be used for later analysis.

For futher information [please take a look at the CodeBook](CodeBook.md).

### Processing steps

Step by step instructions for running the script:

1. Download and unzip the data file into your R working directory. You can find the zip file [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
2. Download the R source code (run_analysis.R) into your R working directory.
3. Execute R source code to generate tidy data file.
4. Read the tidy data file once it has been copied to the *R Working Directory* using the following R code:

```
    tidy_data <- read.table("tidy_data.txt",header=TRUE)
```

### Instructions for the assignment

The assignment was to create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.






