
# Getting and Cleaning Data - Course Project

## Overview

This repository contains the course project for the Getting and Cleaning Data course.

The goal of this project is to clean and transform the Human Activity Recognition Using Smartphones dataset into a tidy dataset.

## Repository Contents

- `run_analysis.R`: R script containing all the steps required to process the original dataset.
- `tidy_data.txt`: Final tidy dataset containing the average of each selected measurement for each subject and activity.
- `CodeBook.md`: Description of the dataset, variables, and transformations.
- `README.md`: Project description and instructions.

## How to Run the Script

1. Download the original dataset from:

   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Extract the ZIP file into the project directory. The extracted folder should be named `UCI HAR Dataset`.

3. Open `run_analysis.R` in RStudio.

4. Run the script using the Source button.

5. The script will generate the final output file named `tidy_data.txt`.

## Data Transformation

The script performs the following operations:

1. Reads the training and test datasets.
2. Merges both datasets.
3. Extracts measurements on the mean and standard deviation.
4. Uses descriptive activity names.
5. Labels the variables appropriately.
6. Creates a second tidy dataset with the average of each measurement for each subject and activity.

## Output

The final dataset contains 180 rows and 68 columns, representing 30 subjects performing six different activities.

## Author

Julieta Carrizo
