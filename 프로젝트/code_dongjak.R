#동작사랑상품권 결제내역 데이터(only 2020)

install.packages("bindrcpp")
library(bindrcpp)
install.packages("dplyr")
library(dplyr)


###########################################################

data_2020 <- read.csv("C:/Users/user/Desktop/상품권 데이터/결제내역2020년.csv",header=T) # 2020년 데이터
data_2021 <- read.csv("C:/Users/user/Desktop/상품권 데이터/결제내역2021년.csv",header=T) # 2021년 데이터

###########################################################

class(data_2020$거래금액)
data_2020$거래금액 <- as.character(data_2020$거래금액)
data_2020$거래금액 <- gsub(",","",data_2020$거래금액)
data_2020$거래금액 <- as.numeric(data_2020$거래금액)


temp <- data_2020 %>% select(업종,거래금액) # 업종별 금액 합계

names(temp) <- c('sector','pay')

result <- temp %>% group_by(sector) %>% summarize(sum_거래금액 = sum(pay)) # 업종별 거래금액 합계
sector_result <- result

###########################################################

temp <- data_2020 %>% group_by(거래일) %>% summarize(sum_거래금액 = sum(거래금액))
temp$거래일 <- as.Date(temp$거래일) #날짜 변환

install.packages("lubridate")
library(lubridate)

temp <- temp %>% mutate(month=month(temp$거래일))
temp <- temp %>% group_by(month) %>% summarize(mean_거래금액 = mean(sum_거래금액), sum_month_거래금액 = sum(sum_거래금액)) #월별 거래금액 평균, 합계
month_result <- temp

plot(month_result$month,month_result$sum_month_거래금액,type = 'o',
     xlab = '2020년(1월 ~ 12월)',ylab = ('결제금액')) 

###########################################################

library(dplyr)
temp <- data_2020 %>% select(결제채널,거래금액)
names(temp) <- c('channel','pay')
temp <- temp %>% group_by(channel) %>% summarize(sum_거래금액 = sum(pay), mean_거래금액=mean(pay))
channel_result <- temp  #채널별 거래금액 합계 및 평균

###########################################################

temp <- data_2020 %>% select(가맹점,거래금액)

names(temp) <- c('name','pay')
temp_1 <- temp %>% group_by(name) %>% summarize(sum_거래금액 = sum(pay))
names(temp_1) <- c('가맹점','sum_거래금액')
store_result <- temp_1 # 가맹점별 거래금액 합계

###########################################################

install.packages("party")
library(party)

sample_1 <- sample(1:nrow(data_2020), size = nrow(data_2020)*0.01)
sample_1 <- data_2020[sample_1,]
sample_1 <- sample_1 %>% select(거래시,소상공인코드,거래금액,업종코드)

ctree_m <- ctree(거래금액~.,data=sample_1)
summary(sample_1)
