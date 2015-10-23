## The purpose of this project is to demonstrate your ability to collect, 
## work with, and clean a data set. The goal is to prepare tidy data that can 
## be used for later analysis. You will be graded by your peers on a series of 
## yes/no questions related to the project. You will be required to submit: 
## 1) a tidy data set as described below, 
## 2) a link to a Github repository with your script for performing the analysis, and 
## 3) a code book that describes the variables, the data, and any transformations 
## or work that you performed to clean up the data called CodeBook.md. 
## You should also include a README.md in the repo with your scripts. 
## This repo explains how all of the scripts work and how they are connected.

## Here are the data for the project: 
        
##        https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## You should create one R script called run_analysis.R that does the following. 

## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set.
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
## for each activity and each subject.



## 0. Data Set Preparation
## Check current working directory, and change it if necessary using setwd() 
## Set the given folder "UCI_HAR_Dataset" as the input path. List all the files in the given folder.
wd <- getwd()
output_folder <- "output"

if (!file.exists(output_folder)){
        dir.create(file.path(wd, output_folder), showWarnings = FALSE)
}

## Install required packages
if(!is.element("plyr", installed.packages()[,1])){
        install.packages("plyr")
}
library(plyr)

## Define file source for data input
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"  
file <- "UCI HAR Dataset.zip"
dataPath <- "UCI HAR Dataset"

## Download the zip data to the working directory
if(!file.exists(file)){    
        download.file(url,file, mode = "wb")
}

## Read the .txt files and convert them to data.frame
getTable <- function (filename,cols = NULL){
        f <- unz(file, paste(data_path,filename,sep="/"))
        data <- data.frame()
        if(is.null(cols)){
                data <- read.table(f,sep="",stringsAsFactors=F)
        } else {
                data <- read.table(f,sep="",stringsAsFactors=F, col.names= cols)
        }
        data    
}

## Read data from the data.frame and create a data
getData <- function(type, features){
        subject_data <- getTable(paste(type,"/","subject_",type,".txt",sep=""),"id")
        y_data <- getTable(paste(type,"/","y_",type,".txt",sep=""),"activity")    
        x_data <- getTable(paste(type,"/","X_",type,".txt",sep=""),features$V2) 
        return (cbind(subject_data,y_data,x_data)) 
}

## Save the data into the output folder
saveresults <- function (data,name){
        file <- paste(output_folder, "/", name,".csv" ,sep="")
        write.csv(data,file)
}

## Run to check the data.frame
## Read features file containing all column names, which is used when creating train and test tables
features <- getTable("features.txt")

## Run to check the database
## Read train and test tables
train <- getData("train",features)
test <- getData("test",features)

## 1. Merges the training and the test sets to create one data set.
data <- arrange(rbind(train, test),id)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
data <- data[,c(1,2,grep("std", colnames(data)), grep("mean", colnames(data)))]
saveresults(data, "mean_and_std")

## 3. Uses descriptive activity names to name the activities in the data set


## 4. Appropriately labels the data set with descriptive variable names. 
activity_labels <- getTable("activity_labels.txt")
data$activity <- factor(data$activity, levels=activity_labels$V1, labels=activity_labels$V2)

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
## for each activity and each subject.
tidydata <- ddply(data, .(id, activity), .fun=function(x){ colMeans(x[,-c(1:2)]) })
colnames(tidydata)[-c(1:2)] <- paste(colnames(tidydata)[-c(1:2)], "_mean", sep="")
saveresults(tidydata,"tidydata")





