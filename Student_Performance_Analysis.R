#student performance
rm(list=ls())
library(readr)
library(caret)
library(sjPlot)
library(caTools)
library(dummy)
library(GGally)
library(performance)

data <- read_csv("C:/Users/Administrator/Downloads/archive (3)/student_performance.csv")

#--------------Data Preprocessing <---------------------------

attach(data)
str(data)
#remvoving unnecessary predictors
data <- data[,-c(1,2)]
#checking the null values
colSums(is.na(data))

#--------------feature engineering and selection ----------------

#creating the dummy variable for categorical variable
cate.col <- data[,sapply(data,is.character)]
cate <- dummy(cate.col)
cate <- cate[,-c(1,4)]

numeric.col <- data[,sapply(data,is.numeric)]
colnames(numeric.col)

#-------------------EDA----------------------


data <- cbind(numeric.col,cate)

#correlation
ggpairs(numeric.col,)

#--------------Modeling------------------

#train test split
split <- sample.split(FinalGrade,SplitRatio = 0.7)
train <- data[split,]
test <- data[!split,]
#duet to multicollinearity we take only Previous GRade prediction 
l.model <- lm(FinalGrade~PreviousGrade,data=train)
summary(l.model)

#assumption checking
check_normality(l.model)

#prediction
predicted <- predict(l.model,newdata = test)
sjplot(l.model)

R2(predicted,test$FinalGrade)

data.frame(test$FinalGrade,predicted)
