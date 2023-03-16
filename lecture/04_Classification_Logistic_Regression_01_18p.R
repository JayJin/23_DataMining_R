

d.brand <- read.csv("./datasets/brandchoice.csv", header=TRUE, sep=",")
table(d.brand)
head(d.brand)

table(d.brand$female)
summary(d.brand$age)
xtabs(~ d.brand$female + d.brand$brand)


library(mlogit)
d.brand$brand <- as.factor(d.brand$brand)   # brand type을 int에서 factor로 변경
td.brand <- mlogit.data(d.brand, varying=NULL, choice="brand", shape="wide")
nlogr <- mlogit(brand~1|female+age, data=td.brand, reflevel="1")
summary(nlogr)
