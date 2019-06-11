R실습

#### 모집단의 분산

##### 모집단의 분산과 표본분산

```R
> # 모집단의 분산
> options(digits=5)
> cor<-c(0.4196,0.4172,0.4237,0.4182,0.4324,
+        0.4365,0.4354,0.4156,0.4172,0.4414)
> 
> m<-mean(cor) # 평균
> dev<-cor-m # 편차
> num<-sum(dev^2) # 편차들의 제곱의 합
> denom<-length(cor) # 자료의 개수(모분산)
> denom2<-length(cor)-1 # 자료의 개수-1(표본분산)
> 
> (var.p<-num/denom) # 편차제곱합/자료의개수(모분산)
[1] 8.4608e-05
> (var.s<-num/denom2) # 편차제곱합/자료의개수-1(표본분산)
[1] 9.4008e-05
> var(cor) # R의 함수와 비교
[1] 9.4008e-05
```



##### 사용자 정의 함수(모분산)

```R
> options(digits=4)
> # 자료들의 분산을 구하기 위해 사용자정의함수만들기
> var.p<-function(x){
+   n<-length(x)
+   m<-mean(x)
+   num<-sum((x-m)^2)
+   denom<-n
+   var<-num/denom
+   return(var)
+ }
> 
> radius<-c(234,234,234,233,233,233,233,231,232,231)
> weight<-c(146.3,146.4,144.1,146.7,145.2,
+           144.1,143.3,147.3,146.7,147.3)
> 
> # 사용자 정의함수는 모분산을 구함.
> var.p(radius)
[1] 1.16
> # 표본분산 var()
> var(radius)
[1] 1.289
> var.p(weight)
[1] 1.908
> var(weight)
[1] 2.12
```



##### 여러개의 전달인자와 기본 전달인자

```R
> options(digits=4)
> # na.rm은 전달인자
> var.p2<-function(x,na.rm=FALSE){
+   # 전달인자가 true면 전달된 값에서 결측값 제거
+   if(na.rm==TRUE){
+     x<-x[!is.na(x)]
+   }
+   n<-length(x)
+   m<-mean(x, na.rm=na.rm)
+   num<-sum((x-m)^2, na.rm=na.rm)
+   denom<-n
+   var<-num/denom
+   return(var)
+ }
> 
> radius<-c(234,234,234,233,233,233,NA,231,232,231)
> var.p2(radius)
[1] NA
> var.p2(radius,na.rm=TRUE)
[1] 1.284
```

