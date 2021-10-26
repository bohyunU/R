A_salary <- c(25,28,50,60,30,35,40,70,40,70,40,100,30,30)
B_salary <- c(20,40,25,25,35,25,20,10,55,65,100,100,150,300)

mean(A_salary)
mean(B_salary)

mean(A_salary, na.rm=T)

median(A_salary)
median(B_salary)

median(A_salary, na.rm=T)

mean(A_salary, trim=0.1)
mean(B_salary, trim=0.1)

range(A_salary)
range(B_salary)

min(A_salary)
max(A_salary)

min(B_salary)
max(B_salary)

var(A_salary)
var(B_salary)

sd(A_salary)
sd(B_salary)

#################################################

quantile(A_salary,0.9)
quantile(B_salary,0.9)

quantile(A_salary)
quantile(B_salary)

par(mfrow=c(3,4))

boxplot(A_salary, B_salary, names = c("A회사 salary","B회사 salary"))

hist(A_salary, xlab= "A사 salary",ylab="인원수",breaks=5)
hist(B_salary, xlab= "B사 salary",ylab="인원수",breaks=5)

cut_value <- cut(A_salary, breaks=5)
freq <- table(cut_value)
freq

A_gender <- as.factor(c('남','남','남','남',
                        '남','남','남','남','남',
                        '여','여','여','여',
                        '여'))
B_gender <- as.factor(c('남','남','남','남',
                        '여','여','여','여','여','여',
                        '여','남','여','여'))
A<-data.frame(gender<-A_gender,
              salary<-A_salary)
B<-data.frame(gender<-B_gender,
              salary<-B_salary)
freqA<-table(A$gender)
freqA
freqB<-table(B$gender)
freqB

prop.table(freqA)
prop.table(freqB)

barplot(freqA, names=c("남","녀"),col=c("skyblue","pink"),ylim=c(0,10))
title(main="A사")

barplot(freqB, names=c("남","녀"),col=c("skyblue","pink"),ylim=c(0,10))
title(main="B사")

pie(x=freqA , col=c("skyblue","pink"), main="A사")
pie(x=freqB , col=c("skyblue","pink"), main="B사")


##########################################################

A_hireyears <- c(1,1,5,6,3,3,4,7,4,7,4,10,3,3)
A<-data.frame(salary<-A_salary,hireyears<-A_hireyears)
plot(A$hireyears,A$salary,xlab="근무년수",ylab="연봉(백만원단위)")

pairs(iris[,1:4],main="iris data")

cor(A$salary,A$hireyears)
cor(iris[,1:4])
heatmap(cor(iris[,1:4]))


