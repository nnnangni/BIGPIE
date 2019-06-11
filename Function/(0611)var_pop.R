# 모집단의 분산
options(digits=5)
cor<-c(0.4196,0.4172,0.4237,0.4182,0.4324,
       0.4365,0.4354,0.4156,0.4172,0.4414)

m<-mean(cor) # 평균
dev<-cor-m # 편차
num<-sum(dev^2) # 편차들의 제곱의 합
denom<-length(cor) # 자료의 개수(모분산)
denom2<-length(cor)-1 # 자료의 개수-1(표본분산)

(var.p<-num/denom) # 편차제곱합/자료의개수(모분산)
(var.s<-num/denom2) # 편차제곱합/자료의개수-1(표본분산)
var(cor) # R의 함수와 비교