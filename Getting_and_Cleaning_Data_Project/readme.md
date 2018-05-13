# Getting and Cleaning Data Project - Directory

As part of the Johns Hopkins Coursera lesson, Getting and Cleaning Data, a project was assigned to clean a dataset. This file provides a brief background on the dataset used and information on what is included in this repository.

### Background

One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The dataset used in this project represents data collected from the accelerometers from the Samsung Galaxy S smartphone.

Thie Human Activity Recognition Using Smartphones dataset was built from the recordings of 30 subjects performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors.

More information about the dataset is available [here.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The authors of the study provided a more detailed description:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### File Descriptions

- `tidy_data.txt`: contains the cleaned and processed data set in text format
- `codebook.md`: a data dictionary, or codebook, detailing each column and the steps taken to process/clean the data
- `run_analysis.R`: R script used to clean the data, with detailed comments (note that the dplyr package was used for one step)