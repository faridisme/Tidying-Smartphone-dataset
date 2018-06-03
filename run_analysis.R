
library(dplyr)

#initialise files;
featuresfile <- "features.txt";
activityfile <- "activity_labels.txt";

train.setfile <- "X_train.txt"; # train set;
train.labelfile <- "y_train.txt"; # train label;
train.subjectfile <- "subject_train.txt"; # each row identifies subject who performed the activity for each window sample;

test.setfile <- "X_test.txt"; # test set;
test.labelfile <- "y_test.txt"; # test label;
test.subjectfile <- "subject_test.txt"; # each row identifies subject who performed the activity for each window sample;


#Reading in features;
features <- read.table(featuresfile, stringsAsFactors = FALSE)
keepfeatures <- grepl('mean\\(\\)|std\\(\\)',features$V2); # TRUE when mean() or std() in their name;
features <- features$V2[keepfeatures] 

#Read in data sets; 
train.set <- read.table(train.setfile, header=FALSE);
train.set <- train.set[,keepfeatures];
colnames(train.set) <- features;
train.set <- cbind(read.table(train.subjectfile, header=FALSE, col.names="Subject"), 
                   read.table(train.labelfile, header=FALSE, col.names="Activity"), 
                   train.set); 

test.set <- read.table(test.setfile, header=FALSE);
test.set <- test.set[,keepfeatures];
colnames(test.set) <- features;
test.set <- cbind(read.table(test.subjectfile, header=FALSE, col.names="Subject"), 
                   read.table(test.labelfile, header=FALSE, col.names="Activity"), 
                   test.set); 

df <- rbind(train.set,test.set)

Activitylabels <- read.table(activityfile, header=FALSE);
Activitylabels <- Activitylabels[order(Activitylabels$V1),];
df$Activity <- factor(df$Activity, labels = Activitylabels$V2, levels = Activitylabels$V1 )

tidydf <- df %>% group_by(Subject, Activity) %>% 
  summarise_all(funs(mean));

#output tidy data set;
write.table(tidydf,file="tidy_dataset.txt", row.names=FALSE) 
