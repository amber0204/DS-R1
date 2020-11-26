#2020/11/20(五), 109學年第一學期 資料科學應用 R小考(1) 加分
#學號:  A107260042      姓名: 黃珮渝

# ex1(a)
a <- read.csv("data/Calculus-score-A.csv", header = T,skip = 2, na = "NA")
names(a) <- c("NO","ID", "Name", "Gender", "Quiz1", "Quiz2", "Quiz3",
              "Quiz4", "TA", "Midterm", "Final", "ATT")
library(readxl)
b <- read_excel("data/Calculus-score-B.xls", skip = 2, na = "NA")   
names(b) <- c("NO","ID", "Name", "Gender", "Quiz1", "Quiz2", "Quiz3",
              "Quiz4", "TA", "Midterm", "Final", "ATT")
head(a, 5)
tail(a, 5)
head(b, 5)
tail(b, 5)

# ex1(b)
a["Classs"] <- "A"
b["Classs"] <- "B"
options(max.print=1000000)
score <- rbind(a, b)

# ex1(c)  
score[is.na(score)] <- 0 
score$"Total" <- (0.07*score$"Quiz1" + 0.07*score$"Quiz2" + 0.08*score$"Quiz3" + 0.08*score$"Quiz4"
                 + 0.15*score$"TA" + 0.25*score$"Midterm" + 0.30*score$"Final" + score$"ATT")
score$"Total" <- ifelse((score$"Total" >= 100), 100, score$"Total" )

# ex1(d)
subset(score, score$"Total" >= 55 & score$"Total" < 60)

# ex1(e)
mean(score$"Total"[1:40])
mean(score$"Total"[41:95])
mean(score$"Total"[score$"Gender" == "男"])
mean(score$"Total"[score$"Gender" == "女"])

# ex1(f)
a1 <- length(score$"NO"[score$"total" < 60 & score$"class" == "A"])
al1 <- length(score$"NO"[score$"class" == "A"])
aa <- a1/al1
sprintf("%.2f%%", aa*100)
b1 <- length(score$"NO"[score$"Total" < 60 & score$"class" == "B"])
bl1 <- length(score$"NO"[score$"class" == "B"])
bb <- b1/bl1
sprintf("%.2f%%", bb*100)


# ex1(g)
bs <- score$"Total"[score$"Gender" == "男"]
bs1 <- rev(sort(bs))
head(bs1, 5)
c("Class", "ID", " Name", "Total", "Grade" )
gs <- score$"Total"[score$"Gender" == "女"]
gs1 <- rev(sort(gs))
head(gs1, 5)

# ex2(a)
set.seed(123456)
(Letters.code <- sample(LETTERS[1:5], 20, replace=T))
(Numbers.code<- ifelse(Letters.code %in% c("A","E"),1,ifelse(Letters.code=="C",2,3)))
  
# ex2(b)
(z2 <- data.frame(Numbers.code, Letters.code))

