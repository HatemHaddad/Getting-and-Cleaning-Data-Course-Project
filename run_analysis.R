
### Part 1
# Test Data

test.data <- read.table("test/X_test.txt")  # Read Test Data
test.labels <- read.table("test/y_test.txt",col.names = "label") # Read Test Labels
test.subjects <- read.table("test/subject_test.txt", col.names="subject") # Read Test Subjects

# Training Data

train.data <- read.table("train/X_train.txt") # Read Train Data
train.labels <- read.table("train/y_train.txt", col.names="label") # Read Train Labels
train.subjects <- read.table("train/subject_train.txt", col.names="subject") # Read Train Subjects

# Binding Test Data - cbind()

test_cbind <- cbind(test.subjects,test.labels,test.data)

# Binding Triaining Data - cbind()

train_cbind <- cbind(train.subjects,train.labels,train.data)

# Merge Test Data with Training Dtata - rbind()

merge_data <- rbind(test_cbind,train_cbind)

### Part 2
# Read fatures


features <- read.table("features.txt", strip.white=TRUE, stringsAsFactors=FALSE)

# Keep mean and standard deviation by usind grep and escape character \ 

features_mean_std <- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]

# Select mean and standard deviation from merged data

data_mean_std <- merge_data[, c(1, 2, features.mean.std$V1+2)]

### Part3
# Read activity labels
labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)

data_mean_std$label <- labels[data_mean_std$label, 2]

### Part4
# list of colnames and features

colnames_neat <- c("subject", "label", features_mean_std$V2)

# Tidy the list

colnames_neat <- tolower(gsub("[^[:alpha:]]", "", colnames_neat))

# Use the list for column names
colnames(data_mean_std) <- colnames_neat
