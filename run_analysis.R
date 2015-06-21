#Library to use melt and dcast
library(reshape2)

#set working directory. It must be modified according to where are your files
setwd("/Users/David/Documents/Coursera/GettingCleanindData/data/UCI HAR Dataset/")

#load data
myDataTestX<-read.table("./test/X_test.txt")
myDataTestY<-read.table("./test/Y_test.txt")
subjectTest<-read.table("./test/subject_test.txt")

myDataTrainX<-read.table("./train/X_train.txt")
myDataTrainY<-read.table("./train/Y_train.txt")
subjectTrain<-read.table("./train/subject_train.txt")

#load features list and activity list
features<-read.table("./features.txt")
activitys<-read.table("./activity_labels.txt")[,2]


#combining the data
myDataX<-rbind(myDataTestX,myDataTrainX)
myDataY<-rbind(myDataTestY,myDataTrainY)
mySubject<-rbind(subjectTest,subjectTrain)

#seting the col names
colnames(myDataX)<-features$V2

#filtering the data according to only use mean and std
myDataXfiltered<-subset(myDataX,select=c(1,2,3,4,5,6,
                                         41,42,43,44,45,46,
                                         81,82,83,84,85,86,
                                         121,122,123,124,125,126,
                                         161,162,163,164,165,166,
                                         201,202,
                                         214,215,
                                         227,228,
                                         240,241,
                                         253,254,
                                         266,267,268,269,270,271,
                                         345,346,347,348,349,350,
                                         424,425,426,427,428,429,
                                         503,504,
                                         516,517,
                                         529,530,
                                         542,543))
                        

#Adding the column with subject to the filtered Dataframe
myDataXfiltered$subject<-mySubject[,1]


#Adding the column with activity
myDataY[,2]=activitys[myDataY[,1]]
colnames(myDataY)<-c("idActivity","activityDesc")
myDataXfiltered$activity<-myDataY[,2]

#preparing to melt data
allvariables<-colnames(myDataXfiltered)
idVariables<-c("subject","activity")
measureVariables<-setdiff(allvariables,idVariables)
dataMelt<-melt(myDataXfiltered,id=idVariables,measure.vars=measureVariables)
#obtaining tidyData
myTidyData<-dcast(dataMelt,subject+activity~variable,mean)
#writing table of tidy data
write.table(myTidyData,file ="./myTidyData.txt",row.name=FALSE)





