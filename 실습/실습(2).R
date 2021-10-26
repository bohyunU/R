student_age<-c(11,12,13,20,15,21)
student_age

class(student_age)
length(student_age)

#ÀÎµ¦½Ì
student_age[1]
student_age[3]
student_age[-1]

student_age[1:3]
student_age[4:6]

score<-c(1,2,3)
score[1]<-10
score[4]<-4
score

code<-c(1,12,"30")
class(code)
code

data<-c(1:10)
data

data1<-seq(1,10)
data1

data2<-seq(1,10,by=2)
data2

data3<-rep(1,times=5)
data3

data4<-rep(1:3,each=3)
data4

var1<-c(1,2,3,4,5,6)

x1<-matrix(var1,nrow=2,ncol=3)
x1

x2<-matrix(var1,ncol=2)
x2

x1[1,]
x1[,1]
x1[2,2]

x1
x1<-rbind(x1,c(10,10,10))
x1<-cbind(x1,c(20,20,20))
x1

#µ¥ÀÌÅÍ ÇÁ·¹ÀÓ
no<-c(10,20,30,40,50,60,70)
age<-c(18,15,13,12,10,9,7)
gender<-c("M","M","M","M","M","F","M")

students<-data.frame(no,age,gender)
students

colnames(students)
rownames(students)

colnames(students)<-c("no","³ªÀÌ","¼ºº°")
rownames(students)<-c("A","B","C","D","E","F","G")

students

colnames(students)<-c("no","age","gender")

students$no
students$age

students[,"no"] #¿­ÀÌ¸§À¸·Î 
students[,"age"] 

students[,1]
students[,2]

students["A",]
students[2,]

students[3,1]
students["A","no"]

students$name <-c("ÀÌ¿ë","ÁØÈñ","ÀÌÈÆ","¼­Èñ","½ÂÈñ","ÇÏÁ¤","ÇÏÁØ")
students

students["H",]<-c(80,10,'M','È«±æµ¿')
tail(students)

var1<-c(1,2,3,4,5,6,7,8,9,10,11,12)
arr1<-array(var1,dim=c(2,2,3))
arr1

v_data<-c("02-111-2222","01022223333")
m_data<-matrix(c(21:26),nrow=2)
a_data<-array(c(31:36),dim=c(2,2,2))
d_data<-data.frame(address=c("seoul","busan"),
                   name=c("Lee","Kim"),stringsAsFactors = F)
list_data<-list(name="È«±æµ¿",
                tel=v_data,
                score1=m_data,
                score2=a_data,
                friends=d_data)

list_data$name
list_data$tel
list_data[1]
