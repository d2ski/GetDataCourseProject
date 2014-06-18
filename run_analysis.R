## R script for 'Getting And Cleaning Data' Coursera course project

## Writes text file with tidy data set returned by run_analysis function
## Raw data must be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## and extracted to the script source directory

run_analysis <- function () {
    
    ## reading raw data
    activity.labels <- read.table("./UCI HAR Dataset/activity_labels.txt", colClasses = c("numeric", "character"))
    
    xtest <- read.table("./UCI HAR Dataset/test/X_test.txt", colClasses = "numeric")
    ytest <- read.table("./UCI HAR Dataset/test/y_test.txt", colClasses = "numeric")
    subject.test <- read.table("./UCI HAR Dataset/test/subject_test.txt", colClasses = "numeric")
    
    xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt", colClasses = "numeric")
    ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt", colClasses = "numeric")
    subject.train <- read.table("./UCI HAR Dataset/train/subject_train.txt", colClasses = "numeric")
    
    ## helper function to deal with regular expression and make names descriptive
    descriptive.name <- function (t) {
        t.new <- gsub("^t", "time", t)
        t.new <- gsub("^f", "frequency", t.new)
        t.new <- gsub("\\()", "", t.new)
        t.new <- gsub("\\-", "", t.new)
        t.new <- gsub("BodyBody", "Body", t.new)
        t.new <- gsub("Acc", "acceleration", t.new)
        t.new <- gsub("Mag", "magnitude", t.new)
        t.new <- gsub("Gyro", "gyroscopic", t.new)
        t.new <- gsub("X$", "xaxis", t.new)
        t.new <- gsub("Y$", "yaxis", t.new)
        t.new <- gsub("Z$", "zaxis", t.new)
        t.new <- tolower(t.new)
        t.new
    }
    
    ## reading column names
    cols <- read.table("./UCI HAR Dataset/features.txt", colClasses = "character")
    cols.names <- c("Subject", "Activity", "ActivityName", cols[,2])
    
    ## merging test and train data sets with subjects, activity and NA vector for activity names columns
    rbind(cbind(subject.test, ytest, c(NA), xtest), cbind(subject.train, ytrain, c(NA), xtrain)) -> data.raw
    
    names(data.raw) <- cols.names
    
    ## extracting means and stds columns and cbinding them with subject and activity
    std.mean.names.log <- grepl("mean\\(\\)|std\\(\\)", names(data.raw))
    ex.data <- cbind(data.raw[,1:3], data.raw[,std.mean.names.log])
    
    ## adding corresponding activity labels to ActivityName column
    activity.names <- c()
    for(activity.num in ex.data[,"Activity"]){
        activity.names <- c(activity.names, activity.labels[, 2][activity.num])
    }
    ex.data$ActivityName <- activity.names
    
    ## making variable names descriptive
    names(ex.data) <- descriptive.name(names(ex.data))
    
    ## extracting tidy data set
    
    tidy.data <- aggregate(ex.data[,4:ncol(ex.data)],
                           by = list(subject=ex.data$subject,
                           activityname=ex.data$activityname),
                           FUN = mean, na.rm = TRUE)
    tidy.data
}

## exporting tidy data to text file
write.table(run_analysis(), "./tidy_data_set.txt", sep = "\t", row.names = FALSE)