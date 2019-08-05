# Coursera - Getting and Cleaning Course Project

## Assignment

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

## Script functionality

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## CodeBook

The codebook can be found [here](codebook.md).

## Prerequisite

The [UCI HAR Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) data needs to be unpacked in the working directory.

## Run this project

1. Set your working directory in R to where the data directory is using the ```setwd()``` function
2. Run ```source("run_analysis.R")``` to execute
3. Find a new file called ```tidy.txt``` in your working directory

