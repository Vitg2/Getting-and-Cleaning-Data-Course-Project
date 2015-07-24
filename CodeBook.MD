# Code Book
DATA: averages.txt

##Activity	(the string) 
Activity name
* Walking
* Walking Upstairs
* Walking Downstairs
* Sitting
* Standing
* Laying

##Subject (integer)
Subject ID
	1..30

## The features (real).
The rest of this database contain averages of sequence of raw data from the accelerometer and gyroscope for each activity and each subject. Names of all variables consists of parts devided by dash sign. 

*  time domain signals (prefix 't' to denote time)
+ tBodyAcc-XYZ                 	body acceleration 
+ tGravityAcc-XYZ				gravity acceleration 
+ tBodyAccJerk-XYZ				body jerk acceleration 
+ tBodyGyro-XYZ					gyroscope signal
+ tBodyGyroJerk-XYZ				gyroscope jerk signal
+ tBodyAccMag					body acceleration magnitude 
+ tGravityAccMag				gravity acceleration magnitude 
+ tBodyAccJerkMag				body jerk acceleration magnitude 
+ tBodyGyroMag					gyroscope magnitude signal
+ tBodyGyroJerkMag				gyroscope jerk magnitude signal

* frequency domain signals (prefix 'f' to denote frequency)
+ fBodyAcc-XYZ					body acceleration signal
+ fBodyAccJerk-XYZ				body jerk acceleration signal
+ fBodyGyro-XYZ					gyroscope signal
+ fBodyAccMag					body acceleration magnitude signal
+ fBodyAccJerkMag				body jerk acceleration magnitude
+ fBodyGyroMag					gyroscope magnitude signal
+ fBodyGyroJerkMag				gyroscope jerk magnitude signal

* '-mean()' and '-std()' is used to denote mean value and standard deviation of raw signals.

* '-X', '-Y' or '-Z' is used to denote 3-axial signals in the X, Y and Z directions.