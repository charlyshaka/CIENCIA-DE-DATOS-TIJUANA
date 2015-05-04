# Coursera "Getting and Cleaning Data" course project

## Overview
This repository contains the method and end result for cleaning and summarizing the "Human Activity Recognition Using Smartphones Data Set" from the UCI Machine Learning Repository.  Information on this dataset can be found at the url below.

UCI - Human Activity Recognition Using Smartphones Data Set: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Data Source used: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
For this analysis, the data was downloaded 3/18/2015.

## File Descriptions
### UCI HAR Summary.txt
Clean data file summarizing the subject/activity and the average means/std for each measurement
### run_analysis.R
R code file for merging, cleaning, and summarizing the data
### Codebook.md
Codebook describing the variables, data, and methodology used to clean up the data.

## Methodology / "The Recipe"
### 1. Obtain the data
The raw data was extracted from a zip file, downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
and extracted to the working directory.  This should create a folder titled UCI HAR Dataset/ in the working directory.
### 2. Execute the R script
run_analysis.R
### 3. Summarized Data
The summarized data can be found in the working directory titled "UCI HAR Summary.txt".  To load and view the data in R, use
```
data <- read.table(file_path, header = TRUE)
View(data)
```