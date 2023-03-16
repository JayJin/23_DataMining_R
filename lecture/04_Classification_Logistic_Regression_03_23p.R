d.gograd <- read.csv("gograd.csv", header=TRUE, sep=",")
head(d.gograd)

library(VGAM)
ologr <- vglm(apply ~ pared+public+gpa, cumulative(parallel=TRUE,reverse=FALSE), d.gograd)
summary(ologr)