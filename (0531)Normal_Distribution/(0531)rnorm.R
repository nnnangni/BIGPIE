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

