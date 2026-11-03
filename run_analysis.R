# Getting and Cleaning Data - Course Project
# Author: Julieta Carrizo
#
# This script:
# 1. Downloads and reads the original dataset.
# 2. Merges the training and test datasets.
# 3. Extracts mean and standard deviation measurements.
# 4. Uses descriptive activity names.
# 5. Creates a tidy dataset with averages by subject and activity.

# 1. Load activity labels and feature names

features <- read.table("UCI HAR Dataset/features.txt",
                       stringsAsFactors = FALSE)

activities <- read.table("UCI HAR Dataset/activity_labels.txt",
                         stringsAsFactors = FALSE)
# 2. Read training and test datasets

X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

# 3. Merge training and test datasets

X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# 4. Extract mean and standard deviation measurements

selected_columns <- grep("mean\\(\\)|std\\(\\)", features$V2)

X_selected <- X[, selected_columns]

colnames(X_selected) <- features$V2[selected_columns]

# 5. Add subject and activity information

data <- cbind(subject, y, X_selected)

colnames(data)[1:2] <- c("subject", "activity")

# Replace activity codes with descriptive activity names

data$activity <- activities$V2[
  match(data$activity, activities$V1)
]

# 6. Create a second tidy dataset with averages
# for each subject and each activity

tidy_data <- aggregate(. ~ subject + activity,
                       data = data,
                       FUN = mean)

# 7. Export the final tidy dataset

write.table(tidy_data,
            file = "tidy_data.txt",
            row.names = FALSE)