str(cars)
# plot(x,y,main="제목",xlab="x축제목", ylab="y축제목",pch=표시되는 점형태,col="색깔..")
plot(cars$speed, cars$dist,
     main="속도와 제동거리", xlab="속도(mph)", ylab="제동거리(ft)",
     pch=1, col="red")