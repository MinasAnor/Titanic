# Random Forest to predict survivability in Titanic passengers

library(rpart)
library(rattle)
library(RColorBrewer)

### TRAINING

# Reading Training Data
train <- read.csv("C:/Programming/R/R_Projects/Kaggle/Titanic/train.csv")
#str(train)



### TEST

# Reading Test Data
test <- read.csv("C:/Programming/R/R_Projects/Kaggle/Titanic/test.csv")
#str(test)
