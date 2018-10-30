library(randomForest)

test <- read.csv(file = "F:/Data Science/BigMart/test.csv", header = TRUE)
train <- read.csv(file = "F:/Data Science/BigMart/train.csv", header = TRUE)

test$Item_Weight[is.na(test$Item_Weight)] <- 12.6
train$Item_Weight[is.na(train$Item_Weight)] <- 12.8

test$Item_Outlet_Sales <- 1.0
dataset <- rbind(train, test)

trainset <- dataset[1:8523,2:12]
testset <- dataset[8524:14204,2:12]

set.seed(131)
modelRandom <- randomForest(Item_Outlet_Sales~., data = trainset, mtry = 3, importance = TRUE)

result <- predict(modelRandom, testset)

output <- data.frame(dataset[8524:14204,1],testset$Outlet_Identifier, result)
names(output) <- c("Item_Identifier", "Outlet_Identifier", "Item_Outlet_Sales")
write.csv(output, file = "BigMartSubmission.csv")