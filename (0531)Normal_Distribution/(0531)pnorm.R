# 평균이 170이고 표준편차가 6인 정규분포
mu<-170
sigma<-6


# 분포함수 구하기
# 확률변수 X가 N(170,6^2)따를 때
# P(X≤170)
pnorm(mu, mean=mu, sd=sigma)
# P(X≤158)
pnorm(158, mean=mu, sd=sigma)
# P(X≤180)-P(X≤160)
pnorm(180, mean=mu, sd=sigma)-pnorm(160, mean=mu, sd=sigma)
