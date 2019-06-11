options(digits=4)
# 자료들의 분산을 구하기 위해 사용자정의함수만들기
var.p<-function(x){
  n<-length(x)
  m<-mean(x)
  num<-sum((x-m)^2)
  denom<-n
  var<-num/denom
  return(var)
}

radius<-c(234,234,234,233,233,233,233,231,232,231)
weight<-c(146.3,146.4,144.1,146.7,145.2,
          144.1,143.3,147.3,146.7,147.3)

# 사용자 정의함수는 모분산을 구함.
var.p(radius)
# 표본분산 var()
var(radius)
var.p(weight)
var(weight)