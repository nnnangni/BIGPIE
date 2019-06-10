R실습

### 표본분포

#### 표본평균 \bar x 의 분포

```R
> # 표준정규분포로부터 표본크기가 10과 40인 
> # 표본을 각각 1000번씩 추출
> m10<-rep(NA,1000)
> m40<-rep(NA,1000)
> # 난수생성 초기값 9로 고정
> set.seed(9)
> for (i in 1:1000){
+   m10[i]<-mean(rnorm(10))
+   m40[i]<-mean(rnorm(40))
+ }
> 
> # 표본평균 분포의 평균과 표준편차
> options(digits=4)
> c(mean(m10),sd(m10))
[1] -0.01214  0.30311
> c(mean(m40),sd(m40))
[1] 0.004212 0.160942
> 
> hist(m10, xlim=c(-1.5,1.5), main="", xlab="x", ylab="", col="cyan", border="blue")
> hist(m40, xlim=c(-1.5,1.5), main="", xlab="x", ylab="", col="cyan", border="blue")
```

