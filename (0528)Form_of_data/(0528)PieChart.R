load("data.rda")
table.v4 <- table(data$V4)
table.v4
pie(table.v4, main="학력수준별 비중")
