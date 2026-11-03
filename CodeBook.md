
# CodeBook

## 1. Project Description

This project uses data from the Human Activity Recognition Using Smartphones dataset.

The purpose of this project is to prepare a tidy dataset containing the average of selected measurements for each subject and each activity.

## 2. Original Dataset

The original dataset contains measurements collected from 30 subjects performing six different activities while wearing a smartphone on their waist.

The data is divided into two sets:
- Training dataset
- Test dataset

Both datasets were merged to create one complete dataset.

## 3. Activities

The dataset includes the following six activities:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

The original numeric activity codes were replaced with descriptive activity names.

## 4. Variables

The final tidy dataset contains 68 columns:

- `subject`: Identifier of the participant (1 to 30).
- `activity`: Name of the activity performed.
- 66 measurement variables: Selected measurements representing the mean and standard deviation of signals collected from the smartphone's accelerometer and gyroscope.

The measurement variable names are based on the original feature names provided in the dataset.

## 5. Data Transformation

The following steps were performed to create the final dataset:

1. Read the training and test datasets.
2. Merged the training and test datasets.
3. Extracted only the measurements containing mean() and std().
4. Added subject identifiers and activity information.
5. Replaced numeric activity codes with descriptive activity names.
6. Calculated the average of each selected measurement for each subject and activity.
7. Exported the resulting dataset as `tidy_data.txt`.

## 6. Final Dataset

The final dataset contains:

- 180 observations (30 subjects × 6 activities).
- 68 variables (2 identifiers and 66 measurements).
- One row for each subject and activity combination.

The output file is named `tidy_data.txt`.
