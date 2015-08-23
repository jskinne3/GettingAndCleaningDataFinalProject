# Getting and Cleaning Data Final Project

A script to simplify
[a HCI HAR dataset] https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
so that it includes only average and standard deviation data.

Created by John Skinner on 23 August 2015.

Input
=====

The repo includes an R script file named `run_analysis.R`. Place both this file and the unzipped `HCI HAR Dataset` folder should be together in your working directory. Then, run the file with R from the command line or from RStudio.

Output
======

Upon executing, the script creates two output files:
  * `uci_har_data_output_large.txt` containing mean and standard deviation measurements extracted from the dataset, and,
  * `uci_har_data_output_large.txt` containing average of each variable for each activity and each subject from the previous file
