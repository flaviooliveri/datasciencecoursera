library(data.table)

# read test
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
s_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# read train
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
s_train  <-read.table("UCI HAR Dataset/train/subject_train.txt")

# merge
x <- rbind(x_test, x_train)
y <- rbind(y_test, y_train)
subject <- rbind(s_test, s_train)

# features & activity
features <- read.table("UCI HAR Dataset/features.txt")
activity <- read.table("UCI HAR Dataset/activity_labels.txt")

# selecting mean and std
features_wanted <- grep("(mean|std)\\(\\)", features[, 2])
x <- x[,features_wanted]

#descriptive activity
y[,1] <- activity[y[,1], 2]

#names
names <- features[features_wanted, 2]
names(x) <- names
names(subject) <- "subject_id"
names(y) <- "activity"
c_data <- cbind(subject, y, x)


# aggregation
dt <- data.table(c_data)
dt <- reshape2::melt(data = dt, id = c("subject_id", "activity"))
tidy_data <- reshape2::dcast(data = dt, subject_id + activity ~ variable, fun.aggregate = mean)

# write
write.table(tidy_data, file = "tidy.txt", row.names = FALSE)







