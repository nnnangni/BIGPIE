ranicafe <- read.csv("C:/Users/student/Documents/StatWithR/BIGPIE/(0529)Form_of_data2/data/cafedata.csv", header=T, na.strings="na", stringsAsFactors=FALSE )
ranicafe <- na.omit(ranicafe)
str(ranicafe)

# 커피 판매량만 불러오기
ranicafe$Coffees

# sort함수를 사용해 오름차순으로 정렬
sort(ranicafe$Coffees)

# 최솟값
sort(ranicafe$Coffees)[1]

# 내림차순으로 정렬, 최댓값
sort(ranicafe$Coffees, decreasing=TRUE)
sort(ranicafe$Coffees, decreasing=TRUE)[1]

# min(), max() 함수 사용해서 구하기
min(ranicafe$Coffees)
max(ranicafe$Coffees)

# 줄기와 잎 그림
stem(ranicafe$Coffees)
