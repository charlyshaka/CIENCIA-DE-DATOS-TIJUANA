# 1. Merge the training and the test sets to create one data set
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# UCIDirectory specifies the location of the data set.  "." indicates the working directory
UCIDirectory <- "./UCI HAR Dataset"

# Load the training and test sets
print("Loading the training and test sets")
xtest <- read.table(paste(UCIDirectory, "/test/x_test.txt", sep=""))
ytest <- read.table(paste(UCIDirectory, "/test/y_test.txt", sep=""))
subjecttest <- read.table(paste(UCIDirectory, "/test/subject_test.txt", sep=""))
xtrain <- read.table(paste(UCIDirectory, "/train/X_train.txt", sep=""))
ytrain <- read.table(paste(UCIDirectory, "/train/y_train.txt", sep=""))
subjecttrain <- read.table(paste(UCIDirectory, "/train/subject_train.txt", sep=""))

# Merge the training and test sets into "AllData"
print("Merging...")
xset <- rbind(xtest, xtrain)
yset <- rbind(ytest, ytrain)
subjectset <- rbind(subjecttest, subjecttrain)
AllData <- cbind(subjectset, yset)
AllData <- cbind(AllData, xset)

# Remove redundant data from memory
rm(xtest, ytest, subjecttest, xtrain, ytrain, subjecttrain)
rm(xset, yset, subjectset)

# Label dataset
print("Labeling data set")
names(AllData)[1] <- "Subject"
names(AllData)[2] <- "Activity"
featuresList <- read.table(paste(UCIDirectory, "/features.txt", sep=""), stringsAsFactors = FALSE)
names(AllData)[-(1:2)] <- featuresList[,2]
activityLabels <- read.table(paste(UCIDirectory, "/activity_labels.txt", sep=""), stringsAsFactors = TRUE)
AllData[,2] <- factor(AllData[,2], labels = activityLabels[,2])

# Extract correct columns for summarization: "Subject", "Activity", and all *"-mean()" and *"-sd()"
print("Extracting columns for summary")
MeansCols <- grep(pattern="-mean\\(\\)", names(AllData), value=FALSE)
StdCols <- grep(pattern="-std\\(\\)", names(AllData), value=FALSE)
KeepCols <- sort(c(1:2, MeansCols, StdCols))
ExtractedData <- AllData[, KeepCols]

# Create a tidy data set with the average of each variable for each activity and each subject.
print("Creating tidy data set (summary)")
TidyData <- data.frame()
rowCount <- 0
for (sub in sort(unique(ExtractedData[,1]))) {
    for (act in sort(unique(ExtractedData[,2]))) {
        rowCount <- rowCount + 1
        TidyData[rowCount, 1] <- sub
        TidyData[rowCount, 2] <- act
        for (x in 3:length(names(ExtractedData))) {
            rows <- ExtractedData[,1]==sub & ExtractedData[,2]==act
            TidyData[rowCount, x] <- mean(ExtractedData[rows, x])
        }
    }
}
names(TidyData) <- names(ExtractedData)

# Write the tidy data summary to a file
print("Writing UCI HAR Summary.txt")
write.table(TidyData, "UCI HAR Summary.txt", row.names=FALSE)