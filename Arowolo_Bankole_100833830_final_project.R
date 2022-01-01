#Load Libraries
library(lattice)
library(psych)
library(gmodels)


#View Dataset

summary(MultiRegDataset)
describe(MultiRegDataset)


#histogram

x=MultiRegDataset$expenses

hist(x, col='yellow',main="Mean of Expenses", 
     xlab='Expenses',ylab='frequency')

lines(xfit, yfit, col="red", lwd=2)


t.test(x, mu=10000)

#Linear Regression Model
linearmodel <- lm(expenses ~ smoker, data=MultiRegDataset)


#Summary of Key Statistics of the Model
summary(linearmodel)


#Multiple Regression
mrmodel <- lm(expenses~., data = MultiRegDataset)
summary(mrmodel)
