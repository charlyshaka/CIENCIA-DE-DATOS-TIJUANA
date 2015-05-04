# Step1.
#Read train data
trainData <- read.table("./UCI/train/X_train.txt")
trainLabel <- read.table("./UCI/train/y_train.txt")
trainSubject <- read.table("./UCI/train/subject_train.txt")
#Read test data
testData <- read.table("./UCI/test/X_test.txt")
testLabel <- read.table("./UCI/test/y_test.txt") 
testSubject <- read.table("./UCI/test/subject_test.txt")
#merge train and data sets
Data <- rbind(trainData, testData)
Label <- rbind(trainLabel, testLabel)
Subject <- rbind(trainSubject, testSubject)

# Step2.
features <- read.table("./UCI/features.txt")
meanStdIndices <- grep("mean\\(\\)|std\\(\\)", features[, 2])
Data <- Data[, meanStdIndices]
names(Data) <- gsub("\\(\\)", "", features[meanStdIndices, 2])
names(Data) <- gsub("mean", "Mean", names(Data))
names(Data) <- gsub("std", "Std", names(Data))
names(Data) <- gsub("-", "", names(Data))

# Step3.
activity <- read.table("./UCI/activity_labels.txt")
activity[, 2] <- tolower(gsub("_", "", activity[, 2]))
substr(activity[2, 2], 8, 8) <- toupper(substr(activity[2, 2], 8, 8))
substr(activity[3, 2], 8, 8) <- toupper(substr(activity[3, 2], 8, 8))
activityLabel <- activity[Label[, 1], 2]
Label[, 1] <- activityLabel
names(Label) <- "activity"

# Step4.
names(Subject) <- "subject"
clean <- cbind(Subject, Label, Data)

# Step5.
subjectLen <- length(table(Subject)) # 30
activityLen <- dim(activity)[1] # 6
columnLen <- dim(clean)[2]
result <- matrix(NA, nrow=subjectLen*activityLen, ncol=columnLen) 
result <- as.data.frame(result)
colnames(result) <- colnames(clean)
row <- 1
for(i in 1:subjectLen) {

  for(j in 1:activityLen) {   
    result[row, 1] <- sort(unique(Subject)[, 1])[i] 
    result[row, 2] <- activity[j, 2]    
    bool1 <- i == clean$subject        
    bool2 <- activity[j, 2] == clean$activity 
    result[row, 3:columnLen] <- colMeans(clean[bool1&bool2, 3:columnLen])    
    row <- row + 1   
  } 
}
write.table(result, "datastep5.txt", row.name=FALSE)
