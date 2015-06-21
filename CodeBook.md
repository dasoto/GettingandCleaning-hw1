#Codebook
This file will describe the variables, data and any transformation realized to clean up the data for the project.

#Data Source

- The data was obtained from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
- The original description of all the data is: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

# Transformations

1. Read the following test files:
X_test.txt
Y_test.txt
subject_test.txt
2. Read the following training files:
X_train.txt
Y_train.txt
subject_train.txt
3. Combine Test data and Training data for X data Y data and subject data.
4. Set appropiate column names according to features.txt file
5. Filter the data to only use columns with mean and std data.
6. Add 2 new columns for subject and activity to the dataset
7. Melt data to calculate means by subject and by activity for each variable
8. Write variable to new file: myTidyData.txt

#Variables of new myTidyData.txt

subject
activity
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y	
tGravityAcc-mean()-Z
tGravityAcc-std()-X	
tGravityAcc-std()-Y	
tGravityAcc-std()-Z	
tBodyAccJerk-mean()-X	
tBodyAccJerk-mean()-Y	
tBodyAccJerk-mean()-Z	
tBodyAccJerk-std()-X	
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z	
tBodyGyro-mean()-X
tBodyGyro-mean()-Y	
tBodyGyro-mean()-Z	
tBodyGyro-std()-X	
tBodyGyro-std()-Y	
tBodyGyro-std()-Z	
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y	
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X	
tBodyGyroJerk-std()-Y	
tBodyGyroJerk-std()-Z	
tBodyAccMag-mean()	
tBodyAccMag-std()	
tGravityAccMag-mean()	
tGravityAccMag-std()	
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()	
tBodyGyroMag-mean()
tBodyGyroMag-std()	
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y	
fBodyAcc-mean()-Z	
fBodyAcc-std()-X	
fBodyAcc-std()-Y
fBodyAcc-std()-Z	
fBodyAccJerk-mean()-X	
fBodyAccJerk-mean()-Y	
fBodyAccJerk-mean()-Z	
fBodyAccJerk-std()-X	
fBodyAccJerk-std()-Y	
fBodyAccJerk-std()-Z	
fBodyGyro-mean()-X	
fBodyGyro-mean()-Y	
fBodyGyro-mean()-Z	fBodyGyro-std()-X	fBodyGyro-std()-Y	fBodyGyro-std()-Z	fBodyAccMag-mean()	fBodyAccMag-std()
fBodyBodyAccJerkMag-mean()	fBodyBodyAccJerkMag-std()	fBodyBodyGyroMag-mean()	fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-mean()	fBodyBodyGyroJerkMag-std()
