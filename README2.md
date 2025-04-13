# Human Activity Recognition Using Smartphones

## Project Overview

This project analyzes data collected from the Samsung Galaxy S smartphone accelerometer to classify human activity.

## Files Included
- `run_analysis.R`: R script for processing and cleaning data.
- `tidy_dataset.txt`: Final tidy dataset with averages of each variable by activity and subject.
- `CodeBook.md`: Description of the variables and transformations used in the data processing.

## Steps Performed:
1. Merged training and test datasets.
2. Extracted measurements on mean and standard deviation.
3. Applied descriptive activity names.
4. Renamed variables for clarity.
5. Created an independent tidy dataset with averages of each variable for each activity and subject.

## How to Run:
1. Download the [UCI HAR Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
2. Place the dataset folder in the working directory.
3. Run the `run_analysis.R` script.

## Output:
- `tidy_dataset.txt` containing the processed and cleaned data.
