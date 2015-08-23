Code Book
=========

Once the script is run, you will have two output files:
- `uci_har_data_output_large.txt`
- `uci_har_data_output_small.txt`

Both files contain the following columns
- `subject`: an integer from 1 to 30, designating the 30 people who performed the activities
- `activity`: a text description of the activity performed
- 66 additional rows, each one named for the type of measurement taken. The data units are radians/second for those that measure angular velocity and standard gravity units ('g') for those that measure acceleration.

uci_har_data_output_large.txt
-----------------------------
This file contains all mean and standard deviation measurements extracted from the original HCI HAR dataset (with test and training data unified). Thus, each row in the file (except for the heading) represents an individual fixed-width sliding time window of 2.56 seconds with 50% overlap.

uci_har_data_output_small.txt
-----------------------------
This file contains summary information of the data in the other file. Each row in the file (except for the heading) represents each combination of the 30 subjects and the 6 activities performed by each. The data are averages (means) of that combination's measurements over all time windows for each of the measurements.