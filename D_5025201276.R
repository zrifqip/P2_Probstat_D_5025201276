## append data to frames
x <- c(78,75,67,77,70,72,78,74,77)
y <- c(100,95,70,90,90,90,89,90,100)

## check if appended data correct
data.frame(x,y)

## 1a. find standard deviation
dev <- sd(y-x)
print(dev)

## 1b. find p value with t.test
t.test(x,y,alternative = "greater")

#no 2
library(BSDA)
zsum.test(mean.x = 23500, n.x = 100, sigma.x = 3900, alternative = "greater",mu = 20000)

#no 3

## 3b
tsum.test(mean.x = 3.64,mean.y = 2.79,n.x = 19, n.y = 27, s.x = 1.67, s.y = 1.32, var.equal = TRUE)

## 3d
qt(p = .05,df = 2,lower.tail = FALSE)
##3d 


# no 4
library( ggplot2)
myFile <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"), h = T)
attach(myFile)
myFile$Group <- as.factor(myFile$Group)
myFile$Group = factor(myFile$Group, labels = c("oren", "hitam", "putih"))
class(myFile$Group)

group1 <- subset(myFile, Group == "oren")
group2 <- subset(myFile, Group == "hitam")
group3 <- subset(myFile, Group == "putih")
group1

qqnorm(group1$Length)
qqline(group1$Length)
qqnorm(group2$Length)
qqline(group2$Length)
qqnorm(group3$Length)
qqline(group3$Length)


