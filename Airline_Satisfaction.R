install.packages("rpart.plot")
install.packages("psych")
library(rpart)
library(rpart.plot)
library(psych)
getwd()
df = read.csv('train.csv',stringsAsFactors=TRUE)
head(df)



str(df)
describe(df)

set.seed(5)
train = sample(1:nrow(df), nrow(df)*(4/5))
train
df.train = df[train,]
df.test = df[-train,]
fit <- rpart(satisfaction ~., data = df.train, method = "class")
fit
flight.pred <- predict(fit, df.train, type="class")
flight.actual <- df.train$satisfaction
confusion.matrix <- table(flight.pred, flight.actual)
confusion.matrix
pt <- prop.table(confusion.matrix)
pt[1,1] + pt[2,2] 
flight_test.pred <- predict(fit, df.test, type="class")
flight_test.actual <- df.test$satisfaction
confusion.matrix <- table(flight_test.pred, flight_test.actual)
addmargins(confusion.matrix)
pt <- prop.table(confusion.matrix)
pt[1,1] + pt[2,2]


rpart.plot(fit,type=1,extra=3,fallen.leaves = FALSE)
fit



boxplot(df$Age, main='Box plot', xlab='Gender', notch = FALSE, col = 'orange')#,horizontal=TRUE)



### Logistic Regression
head(df)


#### No need to do again.
#set.seed(5)
#train <- sample(1:nrow(df), (0.8)*nrow(df))
#train.df <- df[train,]
#test.df <- df[-train,]

dim(df)
dim(train.df)
dim(test.df)

logit.reg <- glm(satisfaction ~., data = train.df, family = "binomial")

summary(logit.reg)

logitPredict <- predict(logit.reg, test.df, type = "response")
logitPredictClass <- ifelse(logitPredict > 0.5, 1, 0)

actual <- test.df$satisfaction 
predict <- logitPredictClass

cm <- table(predict, actual)
tp <- cm[2,2]
tn <- cm[1,1]
fp <- cm[2,1] 
fn <- cm[1,2]

(tp + tn)/(tp + tn + fp + fn) 
tp/(fn+tp)
tn/(fp+tn)
fp/(fp+tn)
fn/(fn+tp)

summary(logit.reg)


summary(fit)




plot(df$Customer.Type,xlab='Customer Type')
plot(df$Class,xlab='Flight Class')
plot(df$satisfaction,xlab='Satisfaction Level')

boxplot(df$Flight.Distance, xlab='Flight Distance', col = 'orange',horizontal=TRUE)
boxplot(df$Departure.Delay.in.Minutes, xlab='Departure Delay (in Minutes)',horizontal=TRUE)
boxplot(df$Arrival.Delay.in.Minutes, xlab='Arrival Delay (in Minutes)',horizontal=TRUE)

#sum(is.na(df$Arrival.Delay.in.Minutes))


#data[is.na(data)] <- 0


