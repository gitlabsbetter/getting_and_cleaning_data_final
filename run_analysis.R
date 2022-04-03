install.packages("tidyverse")

library("tidyverse")

dataset_filename = "getdata_projectfiles_UCI HAR Dataset.zip"
dataset_url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataset_dir = "UCI HAR Dataset"

# Download and unzip the dataset if it doesn't exist
if(!file.exists(dataset_filename)) {
  download.file(dataset_url, dataset_filename)
}

if(!file.exists(dataset_dir)) {
  unzip(dataset_filename)
}

# Import the relevant dataset flat files into dataframes with appropriate column headers
feature_list <- read.table("UCI HAR Dataset/features.txt", col.name = c("index", "feature"))
activity_list <- read.table("UCI HAR Dataset/activity_labels.txt", col.name = c("id", "activity"))
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = feature_list$feature)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "id")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = feature_list$feature)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "id")

# Build the merged datasets
x_merge <- rbind(x_test, x_train)
y_merge <- rbind(y_test, y_train)
subject_merge <- rbind(subject_test, subject_train)
merged_data <- cbind(subject_merge, x_merge, y_merge)

# Clean up the data with only relevant and propper column naming
cleaned_data <- merged_data %>%
  select(subject, id, contains("mean"), contains("std"))

colnames(cleaned_data)[1:2] <- c("Subject", "Activity")
cleaned_data$Activity <- activity_list[cleaned_data$Activity, 2]
colnames(cleaned_data) <- gsub("(^t|\\.t)", "Time", colnames(cleaned_data))
colnames(cleaned_data) <- gsub("Acc", "Accelerometer", colnames(cleaned_data))
colnames(cleaned_data) <- gsub("\\.mean", "Mean", colnames(cleaned_data))
colnames(cleaned_data) <- gsub("Gyro", "Gyroscope", colnames(cleaned_data))
colnames(cleaned_data) <- gsub("Mag", "Magnitude", colnames(cleaned_data))
colnames(cleaned_data) <- gsub("Freq", "Frequency", colnames(cleaned_data))
colnames(cleaned_data) <- gsub("^f", "Frequency", colnames(cleaned_data))
colnames(cleaned_data) <- gsub("\\.X", "XAxis", colnames(cleaned_data))
colnames(cleaned_data) <- gsub("\\.Y", "YAxis", colnames(cleaned_data))
colnames(cleaned_data) <- gsub("\\.Z", "ZAxis", colnames(cleaned_data))
colnames(cleaned_data) <- gsub("angle(\\.)?", "Angle", colnames(cleaned_data))
colnames(cleaned_data) <- gsub("gravity", "Gravity", colnames(cleaned_data))
colnames(cleaned_data) <- gsub("\\.std", "STDDEV", colnames(cleaned_data))
colnames(cleaned_data) <- gsub("\\.+", "", colnames(cleaned_data))
colnames(cleaned_data) <- gsub("BodyBody", "Body", colnames(cleaned_data))

# Summarize the data by grouping by subject and activity finding the average for all other columns
summary_data <- cleaned_data %>%
  group_by(Subject, Activity) %>%
  summarize_all(mean)

# Write out the summary data to a flat file in the current directory
write.table(summary_data, "summary_data.txt", row.names = FALSE)