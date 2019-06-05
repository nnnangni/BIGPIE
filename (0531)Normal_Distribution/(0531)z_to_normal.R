options(digits=4)
# 정규분포의 특징
mu<-0
sigma<-1
# qnorm()을 이용해 분위수 값 구하기
(p0.05<-qnorm(0.05, mean=mu, sd=sigma))
(p0.025<-qnorm(0.025, mean=mu, sd=sigma))

# 구간의 면적
pnorm(1.645)-pnorm(-1.645)
pnorm(1.96)-pnorm(-1.96)
