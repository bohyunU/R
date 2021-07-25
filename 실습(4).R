
head(Orange)                           
head(Orange,3) 

tail(Orange)   
tail(Orange,10) 

str(Orange)
summary  (Orange)
 
nhis <- read.csv("C:/Users/user/Desktop/R_basic/data/NHIS_OPEN_GJ_EUC-KR.csv")
head(nhis) 

nhis <- read.csv("C:/Users/user/Desktop/R_basic/data/NHIS_OPEN_GJ_EUC-KR.csv", fileEncoding="EUC-KR")
nhis <- read.csv("C:/Users/user/Desktop/R_basic/data/NHIS_OPEN_GJ_UTF-8.csv", fileEncoding = "UTF-8" ) 

sample<- read.csv("C:/Users/user/Desktop/R_basic/data/sample.csv", header = F,  
                              fileEncoding="EUC-KR", stringsAsFactor = TRUE) 

str(sample)

install.packages('openxlsx')        
library(openxlsx)                 

nhis_sheet1= read.xlsx('C:/Users/user/Desktop/R_basic/data/NHIS_OPEN_GJ_EUC-KR.xlsx' ) 

nhis_sheet2= read.xlsx('C:/Users/user/Desktop/R_basic/data/NHIS_OPEN_GJ_EUC-KR.xlsx', sheet=2) 


install.packages('data.table')       
library(data.table)                  

nhis_bigdata = fread("C:/Users/user/Desktop/R_basic/data/NHIS_OPEN_GJ_BIGDATA_UTF-8.csv", encoding = "UTF-8" )
str(nhis_bigdata) 

Orange[1, ]                   
Orange[1:5, ]                 
Orange[6:10, ]                   		
Orange[c(1,5), ]                    
Orange[-c(1:29), ]               		  

Orange[Orange$age ==118,  ]
Orange[Orange$age %in% c(118,484), ] 

Orange[Orange$age >= 1372 , ] 
Orange[ , "circumference"]

Orange[ 1 , c("Tree","circumference")]

Orange[ , 1]  
Orange[ , c(1,3)] 
Orange[ , c(1:3)] 
Orange[ , -c(1,3)] 



Orange[1:5 , "circumference"] 

Orange[Orange$Tree %in% c(3,2),  c("Tree","circumference")]

OrangeT1 <- Orange[Orange$circumference < 50,  ] 
OrangeT1[ order(OrangeT1$circumference),    ]

OrangeT1[ order( -OrangeT1$circumference ),  ]  

aggregate(circumference ~ Tree, Orange, mean)
  
stu1 <- data.frame( no = c(1,2,3),  midterm = c(100,90,80)) 
stu2 <- data.frame( no = c(1,2,3),  finalterm = c(100,90,80)) 
stu3 <- data.frame( no = c(1,4,5),  quiz = c(99,88,77)) 
stu4 <- data.frame( no = c(4,5,6),  midterm = c(99,88,77))  

stu1
stu2
merge(stu1, stu2)
stu3
merge(stu1, stu3)
merge(stu1, stu3, all=TRUE) 
stu4
stu1
rbind(stu1, stu4)
stu2
cbind(stu1, stu2)
cbind(stu1, stu3)

