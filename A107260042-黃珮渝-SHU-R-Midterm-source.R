# 2020/12/11(五), 109學年第一學期 資料科學應用 R期中考
#學號:A107260042        姓名: 黃珮渝

#ex1(a)  
study <- function(){
  for(x in 13:17){
    for(y in 8:12){
      if(400*x + 600*y > 12000)
        cat(x, y, 400*x + 600*y, sqrt(x)*sqrt(y), " ")
      else
        cat(x, y, 400*x + 600*y, sqrt(x)*sqrt(y), "*")
      cay("\n")
    }
  }
}

dd <- data.frame(study())
names(dd) <- c("Eng.hr", "Comp.hr", "Tuition", "U", "Fit")

#ex2(a)
library(readxl)
a <- read_excel("1091-SHU-R-Midterm/Score-109.xlsx", skip = 1, na = "NA")
head(a, 5)
tail(a, 5)

#ex2(b)
a[is.na(a)] <- 0 
p <- which((a$Calculus < 60) & (a$English < 60))
a[p, ]

#ex2(c)
my.cor <- function(y1, y2){
  m1 <- mean(y1); m2 <- mean(y2)
  r <-  
  
}
  
s1 <- var(y1); s2 <- var(y2)
s <- ((n1-1)*s1 + (n2-1)*s2)/(n1+n2-2)
stat <- (m1-m2)/sqrt(s*(1/n1+1/n2))
list(means=c(m1, m2), pool.var=s, stat=stat)

#ex3(a)
my.dnorm <- function(x){
  summary(x)
  for(i in -3:3){
}




