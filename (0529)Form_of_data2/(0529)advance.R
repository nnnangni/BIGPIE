# 라니의 카페 커피 판매량에 대한 평균과 표준편차
rc <- ranicafe$Coffees
rc.m <- mean(rc)
rc.sd <- sd(rc)
# cat() -> 전달인자들을 하나의 문자열로 만들어 출력함
# round() -> 실수형 자료에서 유효숫자를 지정해 실수를 출력함.
cat("커피 판매량", round(rc.m,1),"±", round(rc.sd,2), "잔")

# 변동계수 구하기
rc<-ranicafe$Coffees
rj<-ranicafe$Juices
(rc.m<-mean(rc))
(rc.sd<-sd(rc))
(rj.m<-mean(rj))
(rj.sd<-sd(rj))
# 커피판매량의 변동계수가 주스판매량의 변동계수보다 작음.
(rc.cv<-round(rc.sd/rc.m,3))
(rj.cv<-round(rj.sd/rj.m,3))

# 사분위수 범위와 상자도표
# quantile() 함수를 이용해 사분위수 구함
(qs<-quantile(rc))
# IQR
qs[4]-qs[2]
# 내장함수 IQR() 사용
IQR(rc)
# 상자도표
bp<-boxplot(rc,main="커피 판매량에 대한 상자도표")

# 이상치 판별
# 제동거리 자료의 사분위수값
Q<-quantile(cars$dist)
# 자료가 Q1-1.5*IQR, Q3+1.5*IQR 범위 바깥에 있으면 이상치로 판별
ll<-Q[2]-1.5*IQR(cars$dist)
ul<-Q[4]+1.5*IQR(cars$dist)

# 이상치찾기
cars$dist[cars$dist<ll]
cars$dist[cars$dist>ul]

boxplot(cars$dist, main="Boxplot of Distance")
