# CodeBook for Human Activity Recognition Dataset

## Variables

1. **subject**: The ID of the subject performing the activity.
2. **activity**: The activity performed (e.g., walking, walking_upstairs, etc.).
3. **tBodyAcc-mean-X**: Mean of body acceleration signal in the X direction (Time domain).
4. **tBodyAcc-mean-Y**: Mean of body acceleration signal in the Y direction (Time domain).
5. **tBodyAcc-mean-Z**: Mean of body acceleration signal in the Z direction (Time domain).
6. **tBodyAcc-std-X**: Standard deviation of body acceleration signal in the X direction (Time domain).
7. **tBodyAcc-std-Y**: Standard deviation of body acceleration signal in the Y direction (Time domain).
8. **tBodyAcc-std-Z**: Standard deviation of body acceleration signal in the Z direction (Time domain).
   
*(Other feature variables follow the same naming pattern with "mean" and "std" indicating mean and standard deviation respectively.)*

## Data Transformation:
- The data was merged from training and test datasets.
- Only mean and standard deviation features were kept.
- Activity names were substituted for numerical codes.
- Column names were made more descriptive.

## Data Sources:
- [Human Activity Recognition Using Smartphones Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
