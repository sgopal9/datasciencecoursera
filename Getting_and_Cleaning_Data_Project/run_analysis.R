## Johns Hopkins Coursera - Getting and Cleaning Data, Final Project

## Project Goal: To process and clean a dataset containing information on the Samsung Galaxy S.

## PREPARE THE DATA ###############################################################################################

## Load dplyr package. Zip file has already been downloaded, so set new working directory. 
## Note that folder has been renamed to remove spaces.
library(dplyr)
setwd("C:/Users/shrut/datasciencecoursera/UCI_HAR_Dataset")

## Read in the activity labels and features, assigning to objects and re-naming column names to be more descriptive.
## Use View() to check that each table was read correctly.
Features <- read.table("features.txt", as.is = TRUE)
colnames(Features) <- c("feature_id", "feature_name")
View(Features)

Activity_Labels <- read.table("activity_labels.txt")
colnames(Activity_Labels) <- c("activity_id", "activity_name")
View(Activity_Labels)

## Read in the data from the test and train folders, assigning to objects and re-naming column names.
## Use View() to check that each table was read correctly.
Test_Subjects <- read.table("test/subject_test.txt")
colnames(Test_Subjects) <- "subject_id"
View(Test_Subjects)

Test_X <- read.table("test/X_test.txt")
colnames(Test_X) <- Features[,2]
View(Test_X)

Test_y <- read.table("test/y_test.txt")
colnames(Test_y) <- "activity_id"
View(Test_y)

Training_Subjects <- read.table("train/subject_train.txt")
colnames(Training_Subjects) <- "subject_id"
View(Training_Subjects)

Training_X <- read.table("train/X_train.txt")
colnames(Training_X) <- Features[,2]
View(Training_X)

Training_y <- read.table("train/y_train.txt")
colnames(Training_y) <- "activity_id"
View(Training_y)


## STEP 1: MERGING TEST AND TRAINING DATASETS ####################################################################

## Merge the datasets using rbind and cbind functions, nested for simplicity.
combined_training_test <- rbind(
    cbind(Training_Subjects, Training_X, Training_y),
    cbind(Test_Subjects, Test_X, Test_y)
)


## STEP 2: EXTRACT MEASUREMENTS ON MEAN AND STD DEV ##############################################################

## Create an object for the columns to keep based on the name.
mean_std_columns <- grepl("subject_id|activity_id|mean|std", colnames(combined_training_test))

## Replace existing merged dataset with a new one, restricting to the mean/std columns.
combined_training_test <- combined_training_test[, mean_std_columns]


## STEP 3: NAME ACTIVITIES IN DATASET ###########################################################################

## Merge in the Activity_Labels dataset by activity_id, and remove the column from the final dataset.
## Sort by subject_id ascending and use View() to check the output.
combined_training_test_2 <- merge(combined_training_test, Activity_Labels, by = "activity_id", all.x = TRUE) %>%
  select(-activity_id, subject_id:activity_name) %>%
  arrange(subject_id)
View(combined_training_test_2)


## STEP 4: LABEL DATASET ########################################################################################

## Remove unnecessary characters in column names, create more descriptive labels, and generally clean them up.
column_names <- colnames(combined_training_test_2)
column_names <- gsub("[\\(\\)-]", "", column_names)
column_names <- gsub("^f", "Frequency", column_names)
column_names <- gsub("^t", "Time", column_names)
column_names <- gsub("Acc", "Accelerometer", column_names)
column_names <- gsub("Gyro", "Gyroscope", column_names)
column_names <- gsub("Mag", "Magnitude", column_names)
column_names <- gsub("BodyBody", "Body", column_names)

## Assign cleaned column names to the dataset.
colnames(combined_training_test_2) <- column_names


### STEP 5: CREATE TIDY DATASET #################################################################################

## Use group_by function from dplyr package to group by subject and activity.
## Obtain the averages for the groups and use View() to check the output.
combined_means <- combined_training_test_2 %>%
  group_by(subject_id, activity_name) %>%
  summarize_all(funs(mean))
View(combined_means)

## Create a text file with the new data frame.
write.table(combined_means, "tidy_dataset.txt", row.names = FALSE, quote = FALSE)
