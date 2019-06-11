options(digits=4)
# na.rm은 전달인자
var.p2<-function(x,na.rm=FALSE){
  # 전달인자가 true면 전달된 값에서 결측값 제거
  if(na.rm==TRUE){
    x<-x[!is.na(x)]
  }
  n<-length(x)
  m<-mean(x, na.rm=na.rm)
  num<-sum((x-m)^2, na.rm=na.rm)
  denom<-n
  var<-num/denom
  return(var)
}

radius<-c(234,234,234,233,233,233,NA,231,232,231)
var.p2(radius)
var.p2(radius,na.rm=TRUE)