10 <= 10 
10 > 5 
10 >= 5 

n <- 20
n %in% (c(10,20,30)) 

n <- 10 
n >=0 & n <= 100 

n <- 1000
n >= 0 | n <=100 

!(10==5) 

score<-c(10,20)
score+2
score
score<-score+2
score

score1<-c(100,200)
score2<-c(90,91)

sum_score<-score1+score2
sum_score

diff<-score1-score2
diff
m1<-matrix(c(1,2,3,4,5,6),nrow=2)
m1<-m1*10

m1

m1<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3)
m2<-matrix(c(2,2,2,2,2,2,2,2,2),nrow=3)
m1
m2
m1+m2

score<-95
if(score>=80){
  print("조건이 TRUE인 경우만 수행할 문장")
}

score<-86
if(score>=91){
  print("A")
}else{
  print("B or C or D")
}

score<-86
if(score>=91){ print("A")
}else if(score>=81){print("B")
}else if(score>=71){print("C")
}else if(score>=61){print("D")
}else {print("F")}

score<-85
ifelse(score>=91,"A","FALSE일 때 수행")

for(num in (1:3)){
  print(num)
}

for(num in (1:5)){
  if(num%%2==0)
    print(paste(num,"짝수"))
  else
    print(paste(num,"홀수"))
}

num<-c(1:5)
ifelse(num%%2==0,paste(num,"짝수"),paste(num,"홀수"))


#함수
a<-function(){
  print("testa")
  print("tests")
}
a()

a<-function(num){
  print(num)
}

a(20)
a(10)

a<-function(num1,num2){
  print(paste(num1,'',num2))
}

a(10,20)
a(num1=10,num2=20)
a(num2=20,num1=10)

calculator<-function(num1,op,num2){
  result<-0
  if(op=="+"){
    result<-num1+num2
  }else if(op=="-"){
    result<-num1-num2
  }else if(op=="*"){
    result<-num1*num2
  }else if(op=="/"){
    result<-num1/num2
  }
  return(result)
}

n<-calculator(1,"+",2)
print(n)
