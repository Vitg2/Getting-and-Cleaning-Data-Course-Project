############### Final Project ############################

library(dplyr)

# read Data

X_test <- read.fwf("./UCI_HAR_Dataset/test/X_test.txt", widths=rep(16, 561)) 
Y_test <- read.table("./UCI_HAR_Dataset/test/y_test.txt")
S_test <- read.table("./UCI_HAR_Dataset/test/subject_test.txt")

X_train <- read.fwf("./UCI_HAR_Dataset/train/X_train.txt", widths=rep(16, 561))
Y_train <- read.table("./UCI_HAR_Dataset/train/y_train.txt")
S_train <- read.table("./UCI_HAR_Dataset/train/subject_train.txt")

ALab= read.table("./UCI_HAR_Dataset/activity_labels.txt", stringsAsFactors = F)

# Merges the training and the test sets to create one data set

X=rbind(X_train, X_test)
Y=rbind(Y_train, Y_test)
S=rbind(S_train, S_test)

# Extracts only the measurements on the mean and standard deviation for each measurement
Features <- read.table("./UCI_HAR_Dataset/features.txt")
f=grep("mean()|std()", Features[,2])   # get only columns with mean() or std() in their names
X2=X[,f]                               # subset the desired columns

# Appropriately labels the data set with descriptive variable names
names(X2) = as.character(Features[,2])[f]

# Uses descriptive activity names to name the activities in the data set
X2 = cbind(X2, Activity=factor(Y[,1], labels=ALab[,2]), Subject=factor(S[,1]))

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

X <- tbl_df(X2)
by_SA <- group_by(X, Activity, Subject)
second=summarise_each(by_SA, funs(mean))

write.table(second, file = "averages.txt", row.name=FALSE)