
test.data <- read.table("test/X_test.txt")  # Read Test Data
test.labels <- read.table("test/y_test.txt",col.names = "label") # Read Test Labels
test.subjects <- read.table("test/subject_test.txt", col.names="subject") # Read Test Subjects

train.data <- read.table("train/X_train.txt") # Read Train Data
train.labels <- read.table("train/y_train.txt", col.names="label") # Read Train Labels
train.subjects <- read.table("train/subject_train.txt", col.names="subject") # Read Train Subjects


