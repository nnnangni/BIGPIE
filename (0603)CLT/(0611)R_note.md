R실습

#### 중심극한정리

##### 정규분포로부터 추출된 표본평균 \bar x의 분포

```R
> # 두 정규분포 N(3,1^2)과 N(170,6^2)으로부터 표본크기가 4인 표본 1000번 추출, 추출마다 평균 저장
> set.seed(9)
> n<-1000
> r.1.mean=rep(NA,n)
> r.2.mean=rep(NA,n)
> # 두 정규분포로부터 4개의 표본 추출, 그 평균을 저장
> for (i in 1:n){
+   r.1.mean[i]=mean(rnorm(4,mean=3,sd=1))
+   r.2.mean[i]=mean(rnorm(4,mean=170,sd=6))
+ }
> # 표본평균의 분포에 대한 히스토그램, 분포가 따를것으로 예상되는 확률도표
> hist(r.1.mean, prob=TRUE, xlab="표본평균", ylab="밀도",main="", col="orange",border="red")
> x1<-seq(min(r.1.mean), max(r.1.mean), length=1000)
> y1<-dnorm(x=x1, mean=3, sd=(1/sqrt(4)))
> lines(x1,y1,lty=2,lwd=2,col="blue")
> 
> hist(r.2.mean, prob=TRUE, xlab="표본평균", ylab="밀도",main="", col="orange",border="red")
> x2<-seq(min(r.2.mean), max(r.2.mean), length=1000)
> y2<-dnorm(x=x2, mean=170, sd=(6/sqrt(4)))
> lines(x2,y2,lty=2,lwd=2,col="blue")
```



##### 임의의 분포에서 추출된 표본평균 \bar x의 분포

```R
> set.seed(9)
> t<-10
> p<-0.1
> x<-0:10
> n<-1000
> # 모집단이 B(10,0.1)인 분포로부터 표본크기가 2,4,32인 표본을 1000번 추출, 각 평균 저장
> b.2.mean<-rep(NA,n)
> b.4.mean<-rep(NA,n)
> b.32.mean<-rep(NA,n)
> 
> # 각각 2,4,32 개 표본 추출하고, 그 평균을 b.n.mean의 i번째 원소에 저장
> for (i in 1:n){
+   b.2.mean[i]<-mean(rbinom(2,size=t,prob=p))
+   b.4.mean[i]<-mean(rbinom(4,size=t,prob=p))
+   b.32.mean[i]<-mean(rbinom(32,size=t,prob=p))
+ }
> 
> # 표본평균들의 분포에서 평균과 표준편차 구하기
> options(digits=4)
> c(mean(b.2.mean), sd(b.2.mean))
[1] 1.0090 0.6763
> c(mean(b.4.mean), sd(b.4.mean))
[1] 1.006 0.481
> c(mean(b.32.mean), sd(b.32.mean))
[1] 0.9989 0.1624
> 
> # 히스토그램
> # 표본 크기가 2일 때는 정규분포와 차이가 크다.
> hist(b.2.mean, prob=T, xlim=c(0,4), main="표본크기:2", col="orange", border="red")
> x1<-seq(min(b.2.mean),max(b.2.mean), length=1000)
> y1<-dnorm(x=x1, mean=1,sd=sqrt(0.9)/sqrt(2))
> lines(x1,y1,lty=2,lwd=2,col="blue")
> 
> # 표본크기가 4일 때도 차이가 나지만, 2일때 보다는 차이가 적다.
> hist(b.4.mean, prob=T, xlim=c(0,4), main="표본크기:4", col="orange", border="red")
> x2<-seq(min(b.4.mean),max(b.4.mean), length=1000)
> y2<-dnorm(x=x2, mean=1,sd=sqrt(0.9)/sqrt(4))
> lines(x2,y2,lty=2,lwd=2,col="blue")
> 
> # 표본크기가 32일 때는 약간의 차이를 보이지만, 앞의 두 경우보다 정규분포에 가까움
> hist(b.32.mean, prob=T, xlim=c(0,4), main="표본크기:32", col="orange", border="red")
> x3<-seq(min(b.32.mean),max(b.32.mean), length=1000)
> y3<-dnorm(x=x3, mean=1,sd=sqrt(0.9)/sqrt(32))
> lines(x3,y3,lty=2,lwd=2,col="blue")
```

