options(digits=3)
# 평균이 170이고 표준편차가 6인 정규분포
mu<-170
sigma<-6
ll<-mu-3*sigma
ul<-mu+3*sigma

x<-seq(ll,ul,by=0.01)
# dnorm() -> 정규분포의 확률밀도함수
nd<-dnorm(x,mean=mu,sd=sigma)
plot(x,nd,type="l",xlab="x",ylab="P(X=x)",lwd=2,col="red")