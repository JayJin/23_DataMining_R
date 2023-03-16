d.gograd <- read.csv("./datasets/gograd.csv", header=TRUE, sep=",")
head(d.gograd)

library(VGAM)
ologr <- vglm(apply ~ pared+public+gpa, cumulative(parallel=TRUE,reverse=FALSE), d.gograd)
summary(ologr)

predict(ologr, d.gograd[, -1])   # (모델, 데이터) logit값 예측
pred <- predict(ologr, d.gograd[, -1], type="response")   # 확률값 추가 예측

rowSums(pred)  # 클래스 확률의 합

# 클래스 예측
apply(pred, 1, which.max)   # 클래스가 될 확률, row-wise, 컬럼에서 가장 큰 값을 클래스로

unique(apply(pred, 1, which.max))   # 결과를 보면 1번과 2번 클래스만 예측된다.

table(d.gograd[,1], apply(pred, 1, which.max))  # 예측값과 실제값 비교

