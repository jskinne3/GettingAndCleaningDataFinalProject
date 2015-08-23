
# Get names for the features
feature_names <- read.table("UCI HAR Dataset/features.txt", header = FALSE, col.names = c("id", "name"))
head(feature_names)

data_indexes <- c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543)

# Get test data and compose into a dataframe
test_subject_ids <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE, col.names = "subject")
test_activity_ids <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE, col.names = "activity")
test_ids <- cbind(test_subject_ids, test_activity_ids)
test_data <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE, col.names = feature_names$name)
test_data_sub <- test_data[, data_indexes]
test_frame <- cbind(test_ids, test_data_sub)

# Get train data and compose into a dataframe
train_subject_ids <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE, col.names = "subject")
train_activity_ids <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE, col.names = "activity")
train_ids <- cbind(train_subject_ids, train_activity_ids)
train_data <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE, col.names = feature_names$name)
train_data_sub <- train_data[, data_indexes]
train_frame <- cbind(train_ids, train_data_sub)

# Combine test and train dataframes
data_frame <- rbind(test_frame, train_frame)

# Replace activity numbers with names
data_frame$activity[data_frame$activity == 1] <- "WALKING"
data_frame$activity[data_frame$activity == 2] <- "WALKING_UPSTAIRS"
data_frame$activity[data_frame$activity == 3] <- "WALKING_DOWNSTAIRS"
data_frame$activity[data_frame$activity == 4] <- "SITTING"
data_frame$activity[data_frame$activity == 5] <- "STANDING"
data_frame$activity[data_frame$activity == 6] <- "LAYING"

# Output to file
write.table(data_frame, 'uci_har_data_output_large.txt', row.name = FALSE)

