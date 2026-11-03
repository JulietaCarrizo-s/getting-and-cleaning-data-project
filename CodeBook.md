
# CodeBook

## 1. Project Description

This project uses the Human Activity Recognition Using Smartphones (UCI HAR) dataset.

The objective is to clean and transform the original data into a tidy dataset containing the average of selected measurements for each subject and each activity.

## 2. Original Dataset

The original dataset was collected from 30 volunteers performing six activities while wearing a Samsung Galaxy S II smartphone on their waist.

The smartphone's embedded accelerometer and gyroscope captured movement signals at a constant rate of 50 Hz.

The original data was divided into two datasets:
- Training dataset
- Test dataset

These datasets were merged to create one complete dataset containing 10,299 observations.

## 3. Activities

The dataset includes six activities:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

The original numeric activity codes were replaced with their corresponding descriptive activity names.

## 4. Variables

The final tidy dataset contains 68 columns:

### Identifier variables

- `subject`: Identifier of the participant (values from 1 to 30).
- `activity`: Descriptive name of the activity performed.

### Measurement variables

The remaining 66 variables represent selected measurements of mean and standard deviation from the original feature set.

The original variable names have been preserved.

#### Time domain measurements

- tBodyAcc-mean()-X
- tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z
- tBodyAcc-std()-X
- tBodyAcc-std()-Y
- tBodyAcc-std()-Z
- tGravityAcc-mean()-X
- tGravityAcc-mean()-Y
- tGravityAcc-mean()-Z
- tGravityAcc-std()-X
- tGravityAcc-std()-Y
- tGravityAcc-std()-Z
- tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z
- tBodyAccJerk-std()-X
- tBodyAccJerk-std()-Y
- tBodyAccJerk-std()-Z
- tBodyGyro-mean()-X
- tBodyGyro-mean()-Y
- tBodyGyro-mean()-Z
- tBodyGyro-std()-X
- tBodyGyro-std()-Y
- tBodyGyro-std()-Z
- tBodyGyroJerk-mean()-X
- tBodyGyroJerk-mean()-Y
- tBodyGyroJerk-mean()-Z
- tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y
- tBodyGyroJerk-std()-Z
- tBodyAccMag-mean()
- tBodyAccMag-std()
- tGravityAccMag-mean()
- tGravityAccMag-std()
- tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std()
- tBodyGyroMag-mean()
- tBodyGyroMag-std()
- tBodyGyroJerkMag-mean()
- tBodyGyroJerkMag-std()

#### Frequency domain measurements

- fBodyAcc-mean()-X
- fBodyAcc-mean()-Y
- fBodyAcc-mean()-Z
- fBodyAcc-std()-X
- fBodyAcc-std()-Y
- fBodyAcc-std()-Z
- fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y
- fBodyAccJerk-mean()-Z
- fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z
- fBodyGyro-mean()-X
- fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z
- fBodyGyro-std()-X
- fBodyGyro-std()-Y
- fBodyGyro-std()-Z
- fBodyAccMag-mean()
- fBodyAccMag-std()
- fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMag-std()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMag-std()

### Variable name conventions

- `t`: Time domain signal.
- `f`: Frequency domain signal.
- `BodyAcc`: Body acceleration.
- `GravityAcc`: Gravity acceleration.
- `BodyGyro`: Body angular velocity measured by the gyroscope.
- `Jerk`: Rate of change of acceleration or angular velocity.
- `Mag`: Magnitude of a three-dimensional signal.
- `mean()`: Mean value.
- `std()`: Standard deviation.
- `X`, `Y`, `Z`: Three axes of measurement.

## 5. Units and Measurements

The original accelerometer signals are expressed in standard gravity units (g), while gyroscope signals are expressed in radians per second (rad/s).

The original dataset features were normalized and bounded within the range [-1, 1]. Therefore, the final dataset contains normalized feature values rather than raw sensor measurements with their original physical units.

The time domain signals were sampled at 50 Hz. Frequency domain variables were obtained by applying a Fast Fourier Transform (FFT) to selected signals.

## 6. Data Transformations

The following steps were performed to create the final dataset:

1. Read the training and test datasets.
2. Merged the training and test datasets using row binding.
3. Selected only measurements containing mean() and std().
4. Added subject identifiers and activity information.
5. Replaced numeric activity codes with descriptive activity names.
6. Applied the original feature names to the selected measurement columns.
7. Calculated the average of each selected measurement for every subject and activity combination.
8. Exported the resulting dataset as tidy_data.txt.

## 7. Final Dataset

The final tidy dataset contains:

- 180 observations (30 subjects × 6 activities).
- 68 variables (2 identifier variables and 66 measurement variables).
- One row for each subject and activity combination.
- The average of each selected measurement for each combination.

The output file is named `tidy_data.txt`.

## 8. Source

Human Activity Recognition Using Smartphones Dataset.

UCI Machine Learning Repository:
https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones
