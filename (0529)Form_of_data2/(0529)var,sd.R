## 개별 관찰값과 평균과의 차이에 대한 평균
## 편차
height <- c(164,166,168,170,172,174,176)
# 평균을 height.m에 저장
(height.m<-mean(height))
# height의 개별값에서 평균을 뺀 값을 height.dev에 저장
(height.dev<-height-height.m)
# 편차합
sum(height.dev)

## 편차제곱의 평균
# 편차 제곱
(height.dev2<-height.dev^2)
# 편차 제곱합
sum(height.dev2)
# 편차제곱의 평균
mean(height.dev2)
# 편차제곱합/(n-1) -> 분산
sum(height.dev2)/(length(height)-1)
# 분산에 제곱근 취하기
sqrt(sum(height.dev2)/(length(height)-1))

## 분산과 표준편차 구하기
var(height)
sd(height)
