## Feature Selection 
## =================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

## The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

## Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

## The complete list of variables used in producing the tidydata dataset is:

id <br/>
activity <br/>
tBodyAcc.std...X_mean <br/>
tBodyAcc.std...Y_mean <br/>
tBodyAcc.std...Z_mean <br/>
tGravityAcc.std...X_mean <br/>
tGravityAcc.std...Y_mean <br/>
tGravityAcc.std...Z_mean <br/>
tBodyAccJerk.std...X_mean <br/>
tBodyAccJerk.std...Y_mean <br/>
tBodyAccJerk.std...Z_mean <br/>
tBodyGyro.std...X_mean <br/>
tBodyGyro.std...Y_mean <br/>
tBodyGyro.std...Z_mean <br/>
tBodyGyroJerk.std...X_mean <br/>
tBodyGyroJerk.std...Y_mean <br/>
tBodyGyroJerk.std...Z_mean <br/>
tBodyAccMag.std.._mean <br/>
tGravityAccMag.std.._mean <br/>
tBodyAccJerkMag.std.._mean <br/>
tBodyGyroMag.std.._mean <br/>
tBodyGyroJerkMag.std.._mean <br/>
fBodyAcc.std...X_mean <br/>
fBodyAcc.std...Y_mean <br/>
fBodyAcc.std...Z_mean <br/>
fBodyAccJerk.std...X_mean <br/>
fBodyAccJerk.std...Y_mean <br/>
fBodyAccJerk.std...Z_mean <br/>
fBodyGyro.std...X_mean <br/>
fBodyGyro.std...Y_mean <br/>
fBodyGyro.std...Z_mean <br/>
fBodyAccMag.std.._mean <br/>
fBodyBodyAccJerkMag.std.._mean <br/>
fBodyBodyGyroMag.std.._mean <br/>
fBodyBodyGyroJerkMag.std.._mean <br/>
tBodyAcc.mean...X_mean <br/>
tBodyAcc.mean...Y_mean <br/>
tBodyAcc.mean...Z_mean <br/>
tGravityAcc.mean...X_mean <br/>
tGravityAcc.mean...Y_mean <br/>
tGravityAcc.mean...Z_mean <br/>
tBodyAccJerk.mean...X_mean <br/>
tBodyAccJerk.mean...Y_mean <br/>
tBodyAccJerk.mean...Z_mean <br/>
tBodyGyro.mean...X_mean <br/>
tBodyGyro.mean...Y_mean <br/>
tBodyGyro.mean...Z_mean <br/>
tBodyGyroJerk.mean...X_mean <br/>
tBodyGyroJerk.mean...Y_mean <br/>
tBodyGyroJerk.mean...Z_mean <br/>
tBodyAccMag.mean.._mean <br/>
tGravityAccMag.mean.._mean <br/>
tBodyAccJerkMag.mean.._mean <br/>
tBodyGyroMag.mean.._mean <br/>
tBodyGyroJerkMag.mean.._mean <br/>
fBodyAcc.mean...X_mean <br/>
fBodyAcc.mean...Y_mean <br/>
fBodyAcc.mean...Z_mean <br/>
fBodyAcc.meanFreq...X_mean <br/>
fBodyAcc.meanFreq...Y_mean <br/>
fBodyAcc.meanFreq...Z_mean <br/>
fBodyAccJerk.mean...X_mean <br/>
fBodyAccJerk.mean...Y_mean <br/>
fBodyAccJerk.mean...Z_mean <br/>
fBodyAccJerk.meanFreq...X_mean <br/>
fBodyAccJerk.meanFreq...Y_mean <br/>
fBodyAccJerk.meanFreq...Z_mean <br/>
fBodyGyro.mean...X_mean <br/>
fBodyGyro.mean...Y_mean <br/>
fBodyGyro.mean...Z_mean <br/>
fBodyGyro.meanFreq...X_mean <br/>
fBodyGyro.meanFreq...Y_mean <br/>
fBodyGyro.meanFreq...Z_mean <br/>
fBodyAccMag.mean.._mean <br/>
fBodyAccMag.meanFreq.._mean <br/>
fBodyBodyAccJerkMag.mean.._mean <br/>
fBodyBodyAccJerkMag.meanFreq.._mean <br/>
fBodyBodyGyroMag.mean.._mean <br/>
fBodyBodyGyroMag.meanFreq.._mean <br/>
fBodyBodyGyroJerkMag.mean.._mean <br/>
fBodyBodyGyroJerkMag.meanFreq.._mean <br/>
