# Tidying-Smartphone-dataset
As part of Coursera Getting and Cleaning Data Course Project

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectles%2FUCI%20HAR%20Dataset.zip

The repository contains the following files:

  README.md provides a background of the dataset and the purpose of the R script.
  CodeBook.md describes the contents of the tidy dataset (dataset, variables and transformations to generate the data).
  run_analysis.R, the R script that was used to create the data set 

R script (run_analysis.R) was used to transform the source data to the tidy dataset according to the following steps:

  1. Mean and standard deviation of features were extracted from features.txt
	2. Subject variables (i.e. subject_train.txt and subject_test.txt) and activity variables (i.e. y_train.txt and y_test.txt) were left joined to respective train and test set (i.e. X_train.txt and X_test.txt)
	3. Training and test sets were merged to create one data set
	4. Activity labels were replaced based on activity_labels.txt
	5. Average the mean and standard deviation for features that were made for each subject and activity
