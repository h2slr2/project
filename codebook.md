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
activity  <br>
tBodyAcc.std...X_mean \r\n
tBodyAcc.std...Y_mean
tBodyAcc.std...Z_mean
tGravityAcc.std...X_mean
tGravityAcc.std...Y_mean
tGravityAcc.std...Z_mean
tBodyAccJerk.std...X_mean
tBodyAccJerk.std...Y_mean
tBodyAccJerk.std...Z_mean
tBodyGyro.std...X_mean
tBodyGyro.std...Y_mean
tBodyGyro.std...Z_mean
tBodyGyroJerk.std...X_mean
tBodyGyroJerk.std...Y_mean
tBodyGyroJerk.std...Z_mean
tBodyAccMag.std.._mean
tGravityAccMag.std.._mean
tBodyAccJerkMag.std.._mean
tBodyGyroMag.std.._mean
tBodyGyroJerkMag.std.._mean
fBodyAcc.std...X_mean
fBodyAcc.std...Y_mean
fBodyAcc.std...Z_mean
fBodyAccJerk.std...X_mean
fBodyAccJerk.std...Y_mean
fBodyAccJerk.std...Z_mean
fBodyGyro.std...X_mean
fBodyGyro.std...Y_mean
fBodyGyro.std...Z_mean
fBodyAccMag.std.._mean
fBodyBodyAccJerkMag.std.._mean
fBodyBodyGyroMag.std.._mean
fBodyBodyGyroJerkMag.std.._mean
tBodyAcc.mean...X_mean
tBodyAcc.mean...Y_mean
tBodyAcc.mean...Z_mean
tGravityAcc.mean...X_mean
tGravityAcc.mean...Y_mean
tGravityAcc.mean...Z_mean
tBodyAccJerk.mean...X_mean
tBodyAccJerk.mean...Y_mean
tBodyAccJerk.mean...Z_mean
tBodyGyro.mean...X_mean
tBodyGyro.mean...Y_mean
tBodyGyro.mean...Z_mean
tBodyGyroJerk.mean...X_mean
tBodyGyroJerk.mean...Y_mean
tBodyGyroJerk.mean...Z_mean
tBodyAccMag.mean.._mean
tGravityAccMag.mean.._mean
tBodyAccJerkMag.mean.._mean
tBodyGyroMag.mean.._mean
tBodyGyroJerkMag.mean.._mean
fBodyAcc.mean...X_mean
fBodyAcc.mean...Y_mean
fBodyAcc.mean...Z_mean
fBodyAcc.meanFreq...X_mean
fBodyAcc.meanFreq...Y_mean
fBodyAcc.meanFreq...Z_mean
fBodyAccJerk.mean...X_mean
fBodyAccJerk.mean...Y_mean
fBodyAccJerk.mean...Z_mean
fBodyAccJerk.meanFreq...X_mean
fBodyAccJerk.meanFreq...Y_mean
fBodyAccJerk.meanFreq...Z_mean
fBodyGyro.mean...X_mean
fBodyGyro.mean...Y_mean
fBodyGyro.mean...Z_mean
fBodyGyro.meanFreq...X_mean
fBodyGyro.meanFreq...Y_mean
fBodyGyro.meanFreq...Z_mean
fBodyAccMag.mean.._mean
fBodyAccMag.meanFreq.._mean
fBodyBodyAccJerkMag.mean.._mean
fBodyBodyAccJerkMag.meanFreq.._mean
fBodyBodyGyroMag.mean.._mean
fBodyBodyGyroMag.meanFreq.._mean
fBodyBodyGyroJerkMag.mean.._mean
fBodyBodyGyroJerkMag.meanFreq.._mean
