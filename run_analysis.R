
setwd('~/UCI HAR Dataset') # Get names for the features
feature_names <- read.table("features.txt", header = FALSE, col.names = c("id", "name"))
head(feature_names)

data_indexes <- c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543)

setwd('~/UCI HAR Dataset/test') # Get test data and compose into a dataframe
test_subject_ids <- read.table("subject_test.txt", header = FALSE, col.names = "subject")
test_activity_ids <- read.table("y_test.txt", header = FALSE, col.names = "activity")
test_ids <- cbind(test_subject_ids, test_activity_ids)
test_data <- read.table("X_test.txt", header = FALSE, col.names = feature_names$name)
test_data_sub <- test_data[, data_indexes]
test_frame <- cbind(test_ids, test_data_sub)

setwd('~/UCI HAR Dataset/train') # Get train data and compose into a dataframe
train_subject_ids <- read.table("subject_train.txt", header = FALSE, col.names = "subject")
train_activity_ids <- read.table("y_train.txt", header = FALSE, col.names = "activity")
train_ids <- cbind(train_subject_ids, train_activity_ids)
train_data <- read.table("X_train.txt", header = FALSE, col.names = feature_names$name)
train_data_sub <- train_data[, data_indexes]
train_frame <- cbind(train_ids, train_data_sub)

data_frame <- rbind(test_frame, train_frame) # Combine test and train dataframes
head(data_frame)

