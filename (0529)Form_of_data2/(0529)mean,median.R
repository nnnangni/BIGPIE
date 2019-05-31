ranicafe <- read.csv("C:/Users/student/Documents/StatWithR/BIGPIE/(0529)Form_of_data2/data/cafedata.csv", header=T, na.strings="na", stringsAsFactors=FALSE )
ranicafe <- na.omit(ranicafe)
str(ranicafe)

rc<-ranicafe$Coffees

# 1/자료의 개수
weight<-(1/length(rc))
sum(rc*weight) # 직접 구한 평균
mean(rc) # 함수 사용

# rc벡터 뒤에 새로운 원소 NA 추가
# rc<-c(rc,NA)
# 맨 뒤 다섯개 원소 출력
# tail(rc, n=5)
# 결측값이 있으면 결과또한 NA
# mean(rc)
# 결측값이 있을 경우 결측값을 제거하는 방법 사용 (na.rm=TRUE)
# mean(rc, na.rm=TRUE)
# 실제로 21잔이나 22잔이 많이 팔렸는지
# which()는 논리벡터를 전달받아 참값의 인덱스를 반환해줌
which(rc==21|rc==22)
# 커피판매량의 최대값을 480으로 변경
#rc[rc==max(rc)]<-480
#mean(rc)

# 중앙값
# 자료량이 홀수이면 자료의개수+1값을 2로 나눠줌
(median.idx<-(length(rc)+1)/2)
(rc.srt<-sort(rc))
rc.srt[median.idx]
median(rc)

# 최대값의 변화와 중앙값의 변화
rc[rc==max(rc)]<-480
(median(rc))



