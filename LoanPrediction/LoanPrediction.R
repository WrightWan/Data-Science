library(randomForest)

train <- read.csv(file="F:/Data Science/Loan_train.csv", header = TRUE)
test <- read.csv(file="F:/Data Science/Loan_test.csv", header = TRUE)

#Processing blank / NA

train$LoanAmount[is.na(train$LoanAmount)] <- 141
train$Loan_Amount_Term[is.na(train$Loan_Amount_Term)] <- 300
train$Loan_Amount_Term[train$LoanAmount == 0] <- 300
train$Dependents[train$Dependents == ""] <- 0
train$Gender[train$Gender == ""] <- "Female"
train$Credit_History[is.na(train$Credit_History)] <- 0.75
train$Married[train$Married == ""] <- "No"
train$Self_Employed[train$Self_Employed == ""] <- "No"

#Processing blank / NA
test$LoanAmount[is.na(test$LoanAmount)] <- 141
test$Loan_Amount_Term[is.na(test$Loan_Amount_Term)] <- 300
test$Loan_Amount_Term[test$LoanAmount == 0] <- 300
test$Dependents[test$Dependents == ""] <- 0
test$Gender[test$Gender == ""] <- "Female"
test$Credit_History[is.na(test$Credit_History)] <- 0.75
test$Married[test$Married == ""] <- "No"
test$Self_Employed[test$Self_Employed == ""] <- "No"
test$Loan_Status <- "N"
test$Loan_Status <- as.factor(test$Loan_Status)
levels(test$Loan_Status) <- c("Y", "N")
  
dataset <- rbind(test, train)
trainSet <- dataset[368:981,]
testSet <- dataset[1:367,]

set.seed(123)
modelRandom <- randomForest(Loan_Status~., data = trainSet[,2:13], mtry = 6, ntree = 35, importance = TRUE)
Loan_Status <- predict(modelRandom, testSet[,2:13])
output <- data.frame(testSet$Loan_ID, Loan_Status)
names(output) <- c("Loan_ID", "Loan_Status")
write.csv(output, file = "submission.csv")