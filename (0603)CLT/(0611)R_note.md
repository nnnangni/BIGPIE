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

