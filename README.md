# Getting and Cleaning Data
# Introduction 
Peer evaluation 1 for Getting and Cleaning Data on Coursera. This project contain run_analysis.R script and will do the following:
1. Merge training data set and test data set.
2. Filter the columns to only median and std values for each variable
3. Obtain a new tiny data set of mean values per subject and per activity.
4. Write the tiny data set into a txt file of name myTinyData.txt

# How To Use
1. Download the dataset from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Unzip and it will create a directory named: UCI HAR Dataset
3. Put the script file run_analysis.R inside the UCI HAR Dataset directory
4. run the script in R using: source("run_analysis.R"). Be sure to set your working directory to UCI HAR Dataset
5. myTinyData.txt file will be created inside UCI HAR Dataset directory.


