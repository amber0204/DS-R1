#2020/11/20(五), 109學年第一學期 資料科學應用 R小考(1)
#學號:  A107260042      姓名: 黃珮渝

# ex1(a)
a <- read.csv("data/Calculus-score-A.csv", header = TRUE, skip = 2, na = NA) 
library(readxl)
b <- read_excel("data/Calculus-score-B.xls", skip = 2)   
head(a, 5)
tail(a, 5)
head(b, 5)
tail(b, 5)

# ex1(b)
score <- rbind(a,b)
names(score) <- c("No", "ID", "Name", "Gender", "Quiz1", "Quiz2", "Quiz3", "Quiz4", "TA", "Midterm", "Final", "ATT", "Class")

# ex1(c)
# ex1(d)
# ex1(e)
# ex1(f)
# ex1(g)

#ex2(a)
set.seed(123456)
Letters.code <- sample(LETTERS[1:5], 20, replace=T)
names(Letters.code) <- c("LETTERS[1]" = "1", "LETTERS[5]" = "1", "LETTERS[3]" = "2", "LETTERS[2]" = "3", "LETTERS[4]" = "3")
