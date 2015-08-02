library(rpart)

# TRAINING
train <- read.csv("C:/Programming/R/R_Projects/Kaggle/Titanic/RandomForest/clean_train.csv")

# Clean/Add data here

# train$Embarked[c(62,830)] = "S"

# predicted_age <- rpart(Age ~ Pclass + Sex + SibSp + Parch + Fare + Embarked,
#                        data=train[!is.na(train$Age),], method="anova")
# train$Age[is.na(train$Age)] <- predict(predicted_age, train[is.na(train$Age),])

trainOutput <- "C:/Programming/R/R_Projects/Kaggle/Titanic/Randomforest/manip_train.csv"
write.csv(train, file=trainOutput, row.names=FALSE)


# TEST
test <- read.csv("C:/Programming/R/R_Projects/Kaggle/Titanic/test.csv")

# Clean/Add data here

test$Fare[1044-891] = median(train$Fare, na.rm=TRUE)

predicted_age <- rpart(Age ~ Pclass + Sex + SibSp + Parch + Fare + Embarked,
                       data=train[!is.na(train$Age),], method="anova")
train$Age[is.na(train$Age)] <- predict(predicted_age, train[is.na(train$Age),])


testOutput <- "C:/Programming/R/R_Projects/Kaggle/Titanic/Randomforest/clean_test.csv"
write.csv(test, file=testOutput, row.names=FALSE)