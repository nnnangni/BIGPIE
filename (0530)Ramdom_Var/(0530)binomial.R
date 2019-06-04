# 시행횟수가 6이고 성공확률이 1/3인 이항분포B(6,1/3)에 대한 확률계산
n<-6
p<-1/3
x<-0:n

# dbinom -> 이항분포의 확률질량함수를 구하는 내장함수
# 확률변수 X가 2와 4를 가질 확률
(dbinom(2,size=n,prob=p))
(dbinom(4,size=n,prob=p))
# X 각각의 값의 확률
(px<-dbinom(x,size=n,prob=p))
# 이항분포 그래프
plot(x,px,type="s", xlab="성공횟수(x)", ylab="확률(P[X=x])", main="B(6,1/3)")

# P(X≤x)의 확률
# 성공횟수가 2 이하일 확률
pbinom(2, size=n, prob=p)
# 성공횟수가 4 이하일 확률
pbinom(4, size=n, prob=p)
pbinom(4, size=n, prob=p)-pbinom(2, size=n, prob=p)

# 분위수에 해당하는 확률변수 X의 값 x 구하기
# 확률변수 X를 순서대로 나열했을 때 전체자료의 10%와 50%
qbinom(0.1, size=n, prob=p)
qbinom(0.5, size=n, prob=p)

# 이항분포를 따르는 모집단으로부터 n개의 표본 추출(난수)
rbinom(10, size=n, prob=p)