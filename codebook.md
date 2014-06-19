Data set for 'Getting And Cleaning Data' Coursera course project
================================================================

Extracted from Human Activity Recognition Using Smartphones Dataset Version 1.0:

Reference publication:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Description of initial data:
----------------------------
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Tidy data set includes:
-----------------------
__tidy_data_set.txt__ file: data set itself

How tidy data set was transformed from initial data:
--------------------------------------------------------
1. The training data and the test data were merged together.
2. The measurements on the mean and standard deviation for each measurement were extracted from merged data set.
3. The mean of each extracted variable for each activity and each subject from initial data was calculated and aggregated in the tidy data set.

Variables of data set:
----------------------
subject

*Each row identifies the subject who performed the activity for each window sample: range from 1 to 30.*

activityname

*Each row identifies the performed activity: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING*

#### Features variables - average (mean) value:

The features come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timebodyaccelerationmeanxaxis

*Time domain body acceleration signal in X direction/dimension, mean value*

timebodyaccelerationmeanyaxis

*Time domain body acceleration signal in Y direction/dimension, mean value*

timebodyaccelerationmeanzaxis

*Time domain body acceleration signal in Z direction/dimension, mean value*

timebodyaccelerationstdxaxis

*Time domain body acceleration signal in X direction/dimension, standard deviation value*

timebodyaccelerationstdyaxis

*Time domain body acceleration signal in Y direction/dimension, standard deviation value*

timebodyaccelerationstdzaxis

*Time domain body acceleration signal in Z direction/dimension, standard deviation value*

timegravityaccelerationmeanxaxis

*Time domain gravity acceleration signal in X direction/dimension, mean value*

timegravityaccelerationmeanyaxis

*Time domain gravity acceleration signal in Y direction/dimension, mean value*

timegravityaccelerationmeanzaxis

*Time domain gravity acceleration signal in Z direction/dimension, mean value*

timegravityaccelerationstdxaxis

*Time domain gravity acceleration signal in X direction/dimension, standard deviation value*

timegravityaccelerationstdyaxis

*Time domain gravity acceleration signal in Y direction/dimension, standard deviation value*

timegravityaccelerationstdzaxis

*Time domain gravity acceleration signal in Z direction/dimension, standard deviation value*

timebodyaccelerationjerkmeanxaxis

*Time domain body linear jerk signal in X direction/dimension, mean value*

timebodyaccelerationjerkmeanyaxis

*Time domain body linear jerk signal in Y direction/dimension, mean value*

timebodyaccelerationjerkmeanzaxis

*Time domain body linear jerk signal in Z direction/dimension, mean value*

timebodyaccelerationjerkstdxaxis

*Time domain boy linear jerk signal in X direction/dimension, standard deviation value*

timebodyaccelerationjerkstdyaxis

*Time domain body linear jerk signal in Y direction/dimension, standard deviation value*

timebodyaccelerationjerkstdzaxis

*Time domain body linear jerk signal in Z direction/dimension, standard deviation value*

timebodygyroscopicmeanxaxis

*Time domain body angular velocity signal in X direction/dimension, mean value*

timebodygyroscopicmeanyaxis

*Time domain body angular velocity signal in Y direction/dimension, mean value*

timebodygyroscopicmeanzaxis

*Time domain body angular velocity signal in Z direction/dimension, mean value*

timebodygyroscopicstdxaxis

*Time domain body angular velocity signal in X direction/dimension, standard deviation value*

timebodygyroscopicstdyaxis

*Time domain body angular velocity signal in Y direction/dimension, standard deviation value*

timebodygyroscopicstdzaxis

*Time domain body angular velocity signal in Z direction/dimension, standard deviation value*

timebodygyroscopicjerkmeanxaxis

*Time domain body angular jerk signal in X direction/dimension, mean value*

timebodygyroscopicjerkmeanyaxis

*Time domain body angular jerk signal in Y direction/dimension, mean value*

timebodygyroscopicjerkmeanzaxis

*Time domain body angular jerk signal in Z direction/dimension, mean value*

timebodygyroscopicjerkstdxaxis

*Time domain body angular jerk signal in X direction/dimension, standard deviation value*

timebodygyroscopicjerkstdyaxis

*Time domain body angular jerk signal in Y direction/dimension, standard deviation value*

timebodygyroscopicjerkstdzaxis

*Time domain body angular jerk signal in Z direction/dimension, standard deviation value*

timebodyaccelerationmagnitudemean

*Time domain magnitude of body acceleration signal, mean value*

timebodyaccelerationmagnitudestd

*Time domain magnitude of body acceleration signal, standard deviation value*

timegravityaccelerationmagnitudemean

*Time domain magnitude of gravity acceleration signal, mean value*

timegravityaccelerationmagnitudestd

*Time domain magnitude of gravity acceleration signal, standard deviation value*

timebodyaccelerationjerkmagnitudemean

timebodyaccelerationjerkmagnitudestd

timebodygyroscopicmagnitudemean

timebodygyroscopicmagnitudestd

timebodygyroscopicjerkmagnitudemean

timebodygyroscopicjerkmagnitudestd

frequencybodyaccelerationmeanxaxis

*Frequency domain body acceleration signal in X direction/dimension, mean value*

frequencybodyaccelerationmeanyaxis

*Frequency domain body acceleration signal in Y direction/dimension, mean value*

frequencybodyaccelerationmeanzaxis

*Frequency domain body acceleration signal in Z direction/dimension, mean value*

frequencybodyaccelerationstdxaxis

*Frequency domain body acceleration signal in X direction/dimension, standard deviation value*

frequencybodyaccelerationstdyaxis

*Frequency domain body acceleration signal in Y direction/dimension, standard deviation value*

frequencybodyaccelerationstdzaxis

*Frequency domain body acceleration signal in Z direction/dimension, standard deviation value*

frequencybodyaccelerationjerkmeanxaxis

*Frequency domain body linear jerk signal in X direction/dimension, mean value*

frequencybodyaccelerationjerkmeanyaxis

*Frequency domain body linear jerk signal in Y direction/dimension, mean value*

frequencybodyaccelerationjerkmeanzaxis

*Frequency domain body linear jerk signal in Z direction/dimension, mean value*

frequencybodyaccelerationjerkstdxaxis

*Frequency domain body linear jerk signal in X direction/dimension, standard deviation value*

frequencybodyaccelerationjerkstdyaxis

*Frequency domain body linear jerk signal in Y direction/dimension, standard deviation value*

frequencybodyaccelerationjerkstdzaxis

*Frequency domain body linear jerk signal in Z direction/dimension, standard deviation value*

frequencybodygyroscopicmeanxaxis

*Frequency domain body angular velocity signal in X direction/dimension, mean value*

frequencybodygyroscopicmeanyaxis

*Frequency domain body angular velocity signal in Y direction/dimension, mean value*

frequencybodygyroscopicmeanzaxis

*Frequency domain body angular velocity signal in Z direction/dimension, mean value*

frequencybodygyroscopicstdxaxis

*Frequency domain body angular velocity signal in X direction/dimension, standard deviation value*

frequencybodygyroscopicstdyaxis

*Frequency domain body angular velocity signal in Y direction/dimension, standard deviation value*

frequencybodygyroscopicstdzaxis

*Frequency domain body angular velocity signal in Z direction/dimension, standard deviation value*

frequencybodyaccelerationmagnitudemean

*Frequency domain magnitude of body acceleration signal, mean value*

frequencybodyaccelerationmagnitudestd

*Frequency domain magnitude of body acceleration signal, standard deviation value*

frequencybodyaccelerationjerkmagnitudemean

frequencybodyaccelerationjerkmagnitudestd

frequencybodygyroscopicmagnitudemean

frequencybodygyroscopicmagnitudestd

frequencybodygyroscopicjerkmagnitudemean

frequencybodygyroscopicjerkmagnitudestd
