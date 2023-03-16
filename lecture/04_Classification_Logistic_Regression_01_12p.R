# Binary logistic regression _ 12p

d.admit <- read.csv("./datasets/admission.csv", header=TRUE, sep=",")
logr <- glm(admit ~ gre + gpa + rank, data=d.admit,family=binomial("logit"))

summary(logr)


