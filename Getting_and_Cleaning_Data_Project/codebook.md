# Getting and Cleaning Data Project - Codebook

This file describes the fields and values of the processed and cleaned _Human Activity Recognition Using Smartphones_ dataset. This dataset was built from the recordings of 30 subjects performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors.

More information about the dataset is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#) and in the readme.md file in this repository.

### Column Definitions

The dataset is unique at the subject - activity level. The `subject_id` is an identifier that ranges from 1 to 30 and represents each subject, while the `activity_name` lists out six possible activities measured, including:

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- LAYING
- STANDING
- SITTING
 
For each subject and activity, the dataset lists two types of measurements, normalized and bounded within -1 and 1. _Time_ measurements are the raw acclerometere and gyroscope signals, while _Frequency_ measurements are Fast Fourier Transformed (FFT).

##### Time signals

- `TimeBodyAccelerometermean` and `TimeBodyAccelerometerstdX`: mean and standard deviation of time body acceleration in the X, Y and Z directions

- `TimeGravityAccelerometermean` and `TimeGravityAccelerometerstd`: mean and standard deviation of time gravity acceleration in the X, Y and Z directions

- `TimeBodyAccelerometerJerkmean` and `TimeBodyAccelerometerJerkstd`: mean and standard deviation of time body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions

- `TimeBodyGyroscopemean` and `TimeBodyGyroscopestd`: mean and standard deviation of time body angular velocity in the X, Y and Z directions

- `TimeBodyGyroscopeJerkmean` and `TimeBodyGyroscopeJerkstd`: mean and standard deviation of time body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions

- `TimeBodyAccelerometerMagnitudemean` and `TimeBodyAccelerometerMagnitudestd`: mean and standard deviation of the time magnitude of body acceleration

- `TimeGravityAccelerometerMagnitudemean` and `TimeGravityAccelerometerMagnitudestd`: mean and standard deviation of the time magnitude of gravity acceleration

- `TimeBodyAccelerometerJerkMagnitudemean` and `TimeBodyAccelerometerJerkMagnitudestd`: mean and standard deviation of the time magnitude of body acceleration jerk (derivation of the acceleration in time)

- `TimeBodyGyroscopeMagnitudemean` and `TimeBodyGyroscopeMagnitudestd`: mean and standard deviation of the time magnitude of body angular velocity

- `TimeBodyGyroscopeJerkMagnitudemean` and `TimeBodyGyroscopeJerkMagnitudestd`: mean and standard deviation of the time magnitude of body angular velocity jerk (derivation of the angular velocity in time)

##### Frequency-domain signals

- `FrequencyBodyAccelerometermean` and `FrequencyBodyAccelerometerstd`: mean and standard deviation of frequency body acceleration in the X, Y and Z directions

- `FrequencyBodyAccelerometerMeanFrequency`: weighted mean of the frequency components of the frequency body acceleration in the X, Y and Z directions

- `FrequencyBodyAccelerometerJerkMean` and `FrequencyBodyAccelerometerJerkstd`: mean and standard devication of frequency body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions

- `FrequencyBodyAccelerometerJerkMeanFrequency`: weighted mean of the frequency components of the frequency body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions

- `FrequencyBodyGyroscopeMean` and `FrequencyBodyGyroscopestd`: mean and standard devication of the frequency body angular velocity in the X, Y and Z directions

- `FrequencyBodyGyroscopeMeanFrequency`: weighted mean of the frequency components of the frequency body angular velocity in the X, Y and Z directions

- `FrequencyBodyAccelerometerMagnitudeMean`, `FrequencyBodyAccelerometerMagnitudestd`, and `FrequencyBodyAccelerometerMagnitudeMeanFrequency`: mean, standard deviation, and weighted mean of the frequency components of the frequency magnitude of body acceleration

- `FrequencyBodyAccelerometerJerkMagnitudeMean`, `FrequencyBodyAccelerometerJerkMagnitudestd`, and `FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency`: mean, standard deviation, and weighted mean of the frequency components of the frequency magnitude of body acceleration jerk (derivation of the acceleration in time)

- `FrequencyBodyGyroscopeMagnitudeMean`, `FrequencyBodyGyroscopeMagnitudestd`, and `FrequencyBodyGyroscopeMagnitudeMeanFrequency`: mean, standard deviation, and weighted mean of the frequency components of the frequency magnitude of body angular velocity

- `FrequencyBodyGyroscopeJerkMagnitudeMean`, `FrequencyBodyGyroscopeJerkMagnitudestd`, and `FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency`: mean, standard deviation, and weighted mean of the frequency components of the frequency magnitude of body angular velocity jerk (derivation of the angular velocity in time)

### Data Management Process

The database was downloaded [here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The following steps were taken to clean the datasets.

1. Merged the _test_ and _training_ datasets by the subject.
2. Kept fields with averages or standard deviations on the measurements.
3. Merged in the activity labels.
4. Cleaned up column names to make them more descriptive.
5. Created a text file of the dataset.

### Citation

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
