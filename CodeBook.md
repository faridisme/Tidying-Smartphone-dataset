###TIDY DATASET

	180 observations of 30 subjects performing 6 activities
	68 variables

###VARIABLES

	Subject : values from 1 to 30 representing unique subjects performing the activity for each window sample

	Activity : Factor variable represents 6 activities performed as below
	1 WALKING - Subject is walking
	2 WALKING_UPSTAIRS - Subject is walking upstairs
	3 WALKING_DOWNSTAIRS - Subject is walking downstairs
	4 SITTING - Subject is sitting
	5 STANDING - Subject is standing
	6 LAYING - Subject is laying

The remaining 66 variables denote averages of the mean and standard deviation for features that were made for each subject and activity. Features are normalised and bounded within [-1,1]. Before normalisation, the acceleration signal was in standard gravity units 'g', and gyroscope signal was in units radians/second. 

	tBodyAcc-mean()-X : Mean of the time-domain body acceleration in X direction
	tBodyAcc-mean()-Y : Mean of the time-domain body acceleration in Y direction
	tBodyAcc-mean()-Z : Mean of the time-domain body acceleration in Z direction
	tBodyAcc-std()-X : Standard deviation of the time-domain body acceleration in X direction
	tBodyAcc-std()-Y : Standard deviation of the time-domain body acceleration in Y direction
	tBodyAcc-std()-Z : Standard deviation of the time-domain body acceleration in Z direction
	tGravityAcc-mean()-X : Mean of the time-domain gravity acceleration in X direction
	tGravityAcc-mean()-Y : Mean of the time-domain gravity acceleration in Y direction
	tGravityAcc-mean()-Z : Mean of the time-domain gravity acceleration in Z direction
	tGravityAcc-std()-X : Standard deviation of the time-domain gravity acceleration in X direction
	tGravityAcc-std()-Y : Standard deviation of the time-domain gravity acceleration in Y direction
	tGravityAcc-std()-Z : Standard deviation of the time-domain gravity acceleration in Z direction
	tBodyAccJerk-mean()-X : Mean of the time-domain body acceleration jerk (derivative of the acceleration in time, da/dt) in X direction
	tBodyAccJerk-mean()-Y : Mean of the time-domain body acceleration jerk (da/dt) in Y direction
	tBodyAccJerk-mean()-Z : Mean of the time-domain body acceleration jerk (da/dt) in Z direction
	tBodyAccJerk-std()-X : Standard deviation of the time-domain body acceleration jerk (da/dt) in X direction
	tBodyAccJerk-std()-Y : Standard deviation of the time-domain body acceleration jerk (da/dt) in Y direction
	tBodyAccJerk-std()-Z : Standard deviation of the time-domain body acceleration jerk (da/dt) in Z direction
	tBodyGyro-mean()-X : Mean of the time-domain body angular velocity in X direction
	tBodyGyro-mean()-Y : Mean of the time-domain body angular velocity in Y direction
	tBodyGyro-mean()-Z : Mean of the time-domain body angular velocity in Z direction
	tBodyGyro-std()-X : Standard deviation of the time-domain body angular velocity in X direction
	tBodyGyro-std()-Y : Standard deviation of the time-domain body angular velocity in X direction
	tBodyGyro-std()-Z : Standard deviation of the time-domain body angular velocity in X direction
	tBodyGyroJerk-mean()-X : Mean of the time-domain body angular velocity jerk (da/dt) in X direction
	tBodyGyroJerk-mean()-Y : Mean of the time-domain body angular velocity jerk (da/dt) in Y direction
	tBodyGyroJerk-mean()-Z : Mean of the time-domain body angular velocity jerk (da/dt) in Z direction
	tBodyGyroJerk-std()-X : Standard deviation of the time-domain body angular velocity jerk (da/dt) in X direction
	tBodyGyroJerk-std()-Y : Standard deviation of the time-domain body angular velocity jerk (da/dt) in Y direction
	tBodyGyroJerk-std()-Z : Standard deviation of the time-domain body angular velocity jerk (da/dt) in Z direction
	tBodyAccMag-mean() : Mean of the time-domain magnitude of body acceleration
	tBodyAccMag-std() : Standard deviation of the time-domain magnitude of body acceleration
	tGravityAccMag-mean() : Mean of the time-domain magnitude of gravity acceleration
	tGravityAccMag-std() : Standard deviation of the time-domain magnitude of gravity acceleration
	tBodyAccJerkMag-mean() : Mean of the time-domain magnitude of body acceleration jerk (da/dt)
	tBodyAccJerkMag-std() : Standard deviation of the time-domain magnitude of body acceleration jerk (da/dt)
	tBodyGyroMag-mean() : Mean of the time-domain magnitude of body angular velocity
	tBodyGyroMag-std() : Standard deviation of the time-domain magnitude of body angular velocity
	tBodyGyroJerkMag-mean() : Mean of the time-domain magnitude of body angular velocity jerk (da/dt)
	tBodyGyroJerkMag-std() : Standard deviation of the time-domain magnitude of body angular velocity jerk (da/dt)

	fBodyAcc-mean()-X : Mean of the frequency-domain body acceleration in X direction
	fBodyAcc-mean()-Y : Mean of the frequency-domain body acceleration in Y direction
	fBodyAcc-mean()-Z : Mean of the frequency-domain body acceleration in Z direction
	fBodyAcc-std()-X : Standard deviation of the frequency-domain body acceleration in X direction
	fBodyAcc-std()-Y : Standard deviation of the frequency-domain body acceleration in Y direction
	fBodyAcc-std()-Z : Standard deviation of the frequency-domain body acceleration in Z direction
	fBodyAccJerk-mean()-X : Mean of the frequency-domain body acceleration jerk (da/dt) in X direction
	fBodyAccJerk-mean()-Y : Mean of the frequency-domain body acceleration jerk (da/dt) in Y direction
	fBodyAccJerk-mean()-Z : Mean of the frequency-domain body acceleration jerk (da/dt) in Z direction
	fBodyAccJerk-std()-X : Standard deviation of the frequency-domain body acceleration jerk (da/dt) in X direction
	fBodyAccJerk-std()-Y : Standard deviation of the frequency-domain body acceleration jerk (da/dt) in Y direction
	fBodyAccJerk-std()-Z : Standard deviation of the frequency-domain body acceleration jerk (da/dt) in Z direction
	fBodyGyro-mean()-X : Mean of the frequency-domain body angular velocity in X direction
	fBodyGyro-mean()-Y : Mean of the frequency-domain body angular velocity in Y direction
	fBodyGyro-mean()-Z : Mean of the frequency-domain body angular velocity in Z direction
	fBodyGyro-std()-X : Standard deviation of the frequency-domain body angular velocity in X direction
	fBodyGyro-std()-Y : Standard deviation of the frequency-domain body angular velocity in Y direction
	fBodyGyro-std()-Z : Standard deviation of the frequency-domain body angular velocity in Z direction
	fBodyAccMag-mean() : Mean of the frequency-domain magnitude of body acceleration
	fBodyAccMag-std() : Standard deviation of the frequency-domain magnitude of body acceleration
	fBodyBodyAccJerkMag-mean() : Mean of the frequency-domain magnitude of body acceleration jerk (da/dt)
	fBodyBodyAccJerkMag-std() : Standard deviation of the frequency-domain magnitude of body acceleration jerk (da/dt)
	fBodyBodyGyroMag-mean() : Mean of the frequency-domain magnitude of body angular velocity
	fBodyBodyGyroMag-std() : Standard deviation of the frequency-domain magnitude of body angular velocity
	fBodyBodyGyroJerkMag-mean() : Mean of the frequency-domain magnitude of body angular velocity jerk (da/dt)
	fBodyBodyGyroJerkMag-std() : Standard deviation of the frequency-domain magnitude of body angular velocity jerk (da/dt)

###TRANSFORMATIONS

Source data was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectles%2FUCI%20HAR%20Dataset.zip

R script (run_analysis.R) was used to transform the source data to the tidy dataset according to the following steps:

	1. Mean and standard deviation of features were extracted from features.txt
	2. Subject variables (i.e. subject_train.txt and subject_test.txt) and activity variables (i.e. y_train.txt and y_test.txt) were left joined to respective train and test set (i.e. X_train.txt and X_test.txt)
	3. Training and test sets were merged to create one data set
	4. Activity labels were replaced based on activity_labels.txt
	5. Average the mean and standard deviation for features that were made for each subject and activity
