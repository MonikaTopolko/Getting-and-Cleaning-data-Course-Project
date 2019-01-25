# CodeBook

## Data Set Information

This dataset contains Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments have been carried out with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the smatphone recorded 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Data source
Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## Attribute Information

For each record in the dataset it is provided: 
 * Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
 * Triaxial Angular velocity from the gyroscope. 
 * A 561-feature vector with time and frequency domain variables. 
 * Its activity label. 

## Tidy data

Tidy data (tidy_data.txt) contains 180 rows and 82 columns. Each row has averaged variables for each subject and each activity.
Only the variables estimated from mean and standard deviation in the tidy set were kept:
 * mean(): Mean value
 * std(): Standard deviation

Subject column is numbered sequentially from 1 to 30. Activity column has 6 types as listed below.

 * WALKING
 * WALKING_UPSTAIRS
 * WALKING_DOWNSTAIRS
 * SITTING
 * STANDING
 * LAYING

The tidy data contains 180 rows (averaged based on activity) and 82 columns.

```
[1] "subjectId"                       "activityId"                      "tBodyAcc.mean...X"
[4] "tBodyAcc.mean...Y"               "tBodyAcc.mean...Z"               "tBodyAcc.std...X"
[7] "tBodyAcc.std...Y"                "tBodyAcc.std...Z"                "tGravityAcc.mean...X" 
[10] "tGravityAcc.mean...Y"            "tGravityAcc.mean...Z"            "tGravityAcc.std...X" 
[13] "tGravityAcc.std...Y"             "tGravityAcc.std...Z"             "tBodyAccJerk.mean...X" 
[16] "tBodyAccJerk.mean...Y"           "tBodyAccJerk.mean...Z"           "tBodyAccJerk.std...X"
[19] "tBodyAccJerk.std...Y"            "tBodyAccJerk.std...Z"            "tBodyGyro.mean...X"
[22] "tBodyGyro.mean...Y"              "tBodyGyro.mean...Z"              "tBodyGyro.std...X"
[25] "tBodyGyro.std...Y"               "tBodyGyro.std...Z"               "tBodyGyroJerk.mean...X"
[28] "tBodyGyroJerk.mean...Y"          "tBodyGyroJerk.mean...Z"          "tBodyGyroJerk.std...X"
[31] "tBodyGyroJerk.std...Y"           "tBodyGyroJerk.std...Z"           "tBodyAccMag.mean.."
[34] "tBodyAccMag.std.."               "tGravityAccMag.mean.."           "tGravityAccMag.std.."
[37] "tBodyAccJerkMag.mean.."          "tBodyAccJerkMag.std.."           "tBodyGyroMag.mean.."
[40] "tBodyGyroMag.std.."              "tBodyGyroJerkMag.mean.."         "tBodyGyroJerkMag.std.."
[43] "fBodyAcc.mean...X"               "fBodyAcc.mean...Y"               "fBodyAcc.mean...Z"
[46] "fBodyAcc.std...X"                "fBodyAcc.std...Y"                "fBodyAcc.std...Z" 
[49] "fBodyAcc.meanFreq...X"           "fBodyAcc.meanFreq...Y"           "fBodyAcc.meanFreq...Z"
[52] "fBodyAccJerk.mean...X"           "fBodyAccJerk.mean...Y"           "fBodyAccJerk.mean...Z"
[55] "fBodyAccJerk.std...X"            "fBodyAccJerk.std...Y"            "fBodyAccJerk.std...Z"
[58] "fBodyAccJerk.meanFreq...X"       "fBodyAccJerk.meanFreq...Y"       "fBodyAccJerk.meanFreq...Z" 
[61] "fBodyGyro.mean...X"              "fBodyGyro.mean...Y"              "fBodyGyro.mean...Z"
[64] "fBodyGyro.std...X"               "fBodyGyro.std...Y"               "fBodyGyro.std...Z"
[67] "fBodyGyro.meanFreq...X"          "fBodyGyro.meanFreq...Y"          "fBodyGyro.meanFreq...Z"
[70] "fBodyAccMag.mean.."              "fBodyAccMag.std.."               "fBodyAccMag.meanFreq.."
[73] "fBodyBodyAccJerkMag.mean.."      "fBodyBodyAccJerkMag.std.."       "fBodyBodyAccJerkMag.meanFreq.." 
[76] "fBodyBodyGyroMag.mean.."         "fBodyBodyGyroMag.std.."          "fBodyBodyGyroMag.meanFreq.."
[79] "fBodyBodyGyroJerkMag.mean.."     "fBodyBodyGyroJerkMag.std.."      "fBodyBodyGyroJerkMag.meanFreq.."
[82] "activityType"
```

Variables activityType, activityId and subjectID are integer type. All the other variables are numeric type.

