Getting and Cleaning Data Final Project
=======================================

A script to simplify
[an HCI HAR dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
so that it includes only average and standard deviation data. It follows principles of tidy data outlined in
[a paper by Hadley Wickham of RStudio](http://www.jstatsoft.org/v59/i10/paper).

Input
-----

The repo includes an R script file named `run_analysis.R`. Place both this file and the unzipped `HCI HAR Dataset` folder together into the same directory, and set it as your working directory for the R command line or RStudio. Run the file with no arguments.

Output
------

Upon executing, the script creates two output files:
  * `uci_har_data_output_large.txt` containing mean and standard deviation measurements extracted from the dataset, and,
  * `uci_har_data_output_large.txt` containing average of each variable for each activity and each subject from the previous file.

Created by John Skinner on 23 August 2015.
