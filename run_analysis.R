# Load required libraries
library(dplyr)
library(readr)

# Set the path to the dataset folder
path <- "UCI HAR Dataset"

# Read in the data
features <- read.table(file.path(path, "features.txt"), col.names = c("index", "feature"))
activities <- read.table(file.path(path, "activity_labels.txt"), col.names = c("code", "activity"))

# Read training data
subject_train <- read.table(file.path(path, "train", "subject_train.txt"), col.names = "subject")
x_train <- read.table(file.path(path, "train", "X_train.txt"), col.names = features$feature)
y_train <- read.table(file.path(path, "train", "y_train.txt"), col.names = "code")

# Read test data
subject_test <- read.table(file.path(path, "test", "subject_test.txt"), col.names = "subject")
x_test <- read.table(file.path(path, "test", "X_test.txt"), col.names = features$feature)
y_test <- read.table(file.path(path, "test", "y_test.txt"), col.names = "code")

# Merge training and test data
subject <- rbind(subject_train, subject_test)
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)

# Combine into one dataset
merged_data <- cbind(subject, y_data, x_data)

# Extract only the measurements on the mean and standard deviation
tidy_data <- merged_data %>%
  select(subject, code, contains("mean"), contains("std"))

# Use descriptive activity names
tidy_data$code <- activities[tidy_data$code, 2]

# Rename columns for clarity
names(tidy_data)[2] <- "activity"
names(tidy_data) <- gsub("^t", "Time", names(tidy_data))
names(tidy_data) <- gsub("^f", "Frequency", names(tidy_data))
names(tidy_data) <- gsub("Acc", "Accelerometer", names(tidy_data))
names(tidy_data) <- gsub("Gyro", "Gyroscope", names(tidy_data))
names(tidy_data) <- gsub("Mag", "Magnitude", names(tidy_data))
names(tidy_data) <- gsub("BodyBody", "Body", names(tidy_data))

# Create a second, independent tidy dataset with the average of each variable
final_data <- tidy_data %>%
  group_by(subject, activity) %>%
  summarise_all(list(mean = mean))

# Write the final tidy dataset to a text file
write.table(final_data, "tidy_dataset.txt", row.name = FALSE)
