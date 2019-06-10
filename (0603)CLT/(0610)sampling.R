# 두 정규분포 N(3,1^2)과 N(170,6^2)으로부터 표본크기가 4인 표본 1000번 추출, 추출마다 평균 저장
set.seed(9)
n<-1000
r.1.mean=rep(NA,n)
r.2.mean=rep(NA,n)
# 두 정규분포로부터 4개의 표본 추출, 그 평균을 저장
for (i in 1:n){
  r.1.mean[i]=mean(rnorm(4,mean=3,sd=1))
  r.2.mean[i]=mean(rnorm(4,mean=170,sd=6))
}
# hist(r.1.mean, prob=TRUE, xlab="표본평균",)