v<-c(1,4,5)
for (i in v){
  print(i)
}

# 10개 난수
r.n<-rnorm(10)
sum<-0
for (i in 1:10){
  sum<-sum+r.n[i]
}
print(sum)
sum(r.n)