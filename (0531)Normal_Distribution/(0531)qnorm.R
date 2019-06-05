options(digits=3)
# 평균이 170이고 표준편차가 6인 정규분포
mu<-170
sigma<-6

# 분위수를 구하는 qnorm()
# 제1사분위수, 중앙값, 제3사분위수
qnorm(0.25, mean=mu, sd=sigma)
qnorm(0.5, mean=mu, sd=sigma)
qnorm(0.75, mean=mu, sd=sigma)