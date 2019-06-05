R실습

#### R을 이용한 정규분포 계산

```R
> # 평균이 170이고 표준편차가 6인 정규분포
> mu<-170
> sigma<-6
> ll<-mu-3*sigma
> ul<-mu+3*sigma
> 
> x<-seq(ll,ul,by=0.01)
> # dnorm() -> 정규분포의 확률밀도함수
> nd<-dnorm(x,mean=mu,sd=sigma)
> plot(x,nd,type="l",xlab="x",ylab="P(X=x)",lwd=2,col="red")
```

##### 분포함수 pnorm()

```R
> # 평균이 170이고 표준편차가 6인 정규분포
> mu<-170
> sigma<-6

> # 분포함수 구하기
> # 확률변수 X가 N(170,6^2)따를 때
> # P(X≤170)
> pnorm(mu, mean=mu, sd=sigma)
[1] 0.5
> # P(X≤158)
> pnorm(158, mean=mu, sd=sigma)
[1] 0.0228
> # P(X≤180)-P(X≤160)
> pnorm(180, mean=mu, sd=sigma)-pnorm(160, mean=mu, sd=sigma)
[1] 0.904
```

##### 분위수 qnorm()

```R
> # 평균이 170이고 표준편차가 6인 정규분포
> mu<-170
> sigma<-6
> 
> # 분위수를 구하는 qnorm()
> # 제1사분위수, 중앙값, 제3사분위수
> qnorm(0.25, mean=mu, sd=sigma)
[1] 166
> qnorm(0.5, mean=mu, sd=sigma)
[1] 170
> qnorm(0.75, mean=mu, sd=sigma)
[1] 174
```

##### 유사난수 rnorm()

```R
options(digits=5)
mu<-170
sigma<-6
# 유사난수
set.seed(5)
# 평균이 170이고 표준편차가 6인 정규분포, 400개 표본
smp<-rnorm(400,mean=mu,sd=sigma)
c(mean(smp), sd(smp))
hist(smp,prob=T,main="N(170,6^2)으로부터 추출한 표본의 분포(n=400)", xlab="",ylab="",col="white",border="black")
# 히스토그램 위에 점선으로 분포 표시
lines(x,nd,lty=2)
```

##### 정규분포의 특징 알아보기

```R
> options(digits=4)
> # 정규분포의 특징
> mu<-0
> sigma<-1
> # qnorm()을 이용해 분위수 값 구하기
> (p0.05<-qnorm(0.05, mean=mu, sd=sigma))
[1] -1.645
> (p0.025<-qnorm(0.025, mean=mu, sd=sigma))
[1] -1.96
> 
> # 구간의 면적
> pnorm(1.645)-pnorm(-1.645)
[1] 0.9
> pnorm(1.96)-pnorm(-1.96)
[1] 0.95
```

