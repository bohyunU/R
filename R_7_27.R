##1
#t.test

data <- c(5,6,7,5,5,9,10,3,3,3.5,8,8,7,2,3,3.5,6,6,6,6)
t.test(data,mu=7,alternative='less')

before <- c(68.12,56.94,57.36,54.64,64.33,48.49,68.72,56.19,61.6,58.75,
            67.31,49.7,5839,58.08,65.67,54.5,59.14,55.61,60.21,62.91)
after <- c(65.90,54.79,57.82,54.64,64.84,47.32,67.87,54.58,60.65,58.79,
           65.71,48.81,57,56.52,64.13,53.94,57.22,55.32,61.61,63.22)
t.test(before,after,paired=TRUE,var.equal = TRUE,alternative = "greater")

seoul <- c(43.12,40.94,42.36,50.64,50,43.49,43.72,40.19,46.6,43.75,42.31,
           44.7,43.39,33.08,40.67,49.5,43.14,40.61,35.21,37.91)
busan <- c(41.74,42.35,40.62,28.64,49.64,40.94,43.25,40.3,56.03,43.77,51.3,
           44.26,42.6,32.19,39.72,49.2,33.03,40.45,36.03,38.1)
#등분산 만족 못함, 독립표본 이라 가정
t.test(seoul,busan,paired=FALSE, var.equal=FALSE, alternative = "two.sided")

anova_result <- aov(Sepal.Length ~ Species, data=iris)
summary(anova_result)

##2

#상관분석
cor(Orange$circumference,Orange$age)
plot(Orange$circumference,Orange$age,col="red",pch=19)
cor(iris[,1:4])
cor.test(iris$Petal.Length, iris$Petal.Width,method="pearson")


##3
data(Orange) #orange 데이터
head(Orange)

#회귀 분석
model<-lm(circumference~age, Orange)
model
coef(model) #계수 확인

r<-residuals(model) #잔차
r[0:4]

f<-fitted(model)
f[0:4]+r[0:4]
Orange[0:4,'circumference']
deviance(model)
predict.lm(model,newdata=data.frame(age=100)) #나이 100일때 예측

summary(model)

##4
#다중 회귀 분석
height_father <- c(180,172,150,180,177,160,170,165,179,159)
height_mother <- c(160,164,166,188,160,160,171,158,169,159)
height_son <- c(180,173,163,184,165,165,175,168,179,160)
height <- data.frame(height_father,height_mother,height_son)
head(height)

model <- lm(height_son ~ height_father + height_mother, data=height)
model
coef(model)
r<-residuals(model)
r[0:4]
deviance(model)
predict.lm(model,newdata=data.frame(height_father=170,height_mother=160))
predict.lm(model,newdata=data.frame(height_father=170,height_mother=160),interval="confidence")
summary(model)

model<-lm(mpg~.,data=mtcars)
model
new_model<-step(model,direction = "both")
model<-lm(mpg~wt+qsec+am,data=mtcars)
par(mfrow=c(2,2))
plot(model)


##5

#시계열
n<-head(Nile)
n
n.diff1<-diff(n,differences=1) #차분
n.diff1

n.diff2<-diff(n,differences=2)
n.diff2

install.packages("forecast")
library(forecast)
auto.arima(Nile)
Nile.arima<-arima(Nile,order=c(1,1,1))
Nile.arima
forecast(Nile.arima,h=5)
par(mfrow=c(1,2))
plot(forecast(Nile.arima,h=5))
plot(ldeaths)
ldeaths.decomp<-decompose(ldeaths)
plot(ldeaths.decomp)
ldeaths.decomp.trend<-ldeaths.decomp$trend
plot(ldeaths.decomp.trend)
ldeaths.decomp.seasonal<-ldeaths.decomp$seasonal
plot(ldeaths.decomp.seasonal)

##6
#주성분분석
par(mfrow=c(1,1))
fit<-princomp(iris[,1:4],cor=TRUE)
summary(fit)
loadings(fit)
screeplot(fit,type="lines",main="scree plot")
