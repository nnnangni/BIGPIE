# 이항분포 B(6,1/3)의 기댓값과 분산
n<-6
p<-1/3
x<-0:n
px<-dbinom(x,size=n,prob=p)
ex<-sum(x*px)
ex2<-sum(x^2*px)
(varx<-ex2-ex^2)