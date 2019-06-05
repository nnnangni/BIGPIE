dan<-2
for(i in 2:9){
  times<-dan*i
  print(paste(dan, "곱하기",i,"=",times))
}

# 열의 수가 3인 1부터 12까지 행렬
(m<-matrix(1:12, ncol=3))

# nrow() 행의 수, ncol() 열의 수
for (i in 1:nrow(m)){
  for (j in 1:ncol(m)){
    cat(i, "행", j, "열=", m[i,j], "\n")
  }
}