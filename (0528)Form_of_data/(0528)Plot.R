load("data.rda")

# 출생아 수의 막대그래프
tableV5 <- table(data$V5)
tableV5
barplot(tableV5, main="출생아(남자)별 빈도", xlab="출생아수", ylab="빈도")

# 학력에 따른 성별 인원수의 누적 막대그래프
tableV1.V4 <- table(data$V1, data$V4)
tableV1.V4
# beside에 TRUE?? TRUE를 지정하면 각각의 값마다 막대를 그림 
barplot(tableV1.V4, legend.text=T, col=c("orange","green"),
        main="학력에 따른 성별 인원수", xlab="연령", ylab="빈도")

# 연령별 인원수에 대한 히스토그램
hist(data$V2, main="연령별 분포", xlab="연령", ylab="빈도")

# 원하는 계급구간을 지정한 히스토그램
hist(data$V2, breaks=c(seq(0,90,10)),right=F,
     main="연령별 분포", xlab="연령", ylab="빈도")