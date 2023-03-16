# Histogram
iris  # 이미 저장된 데이터
str(iris)  # structure 확인(type 등 확인 가능)

cnames <- colnames(iris)
?hist

for (i in 1:4) {
  hist(iris[,i], breaks=10, col=i+1, main="")
  title(main=cnames[i])
}


# Plot
x <- rnorm(1000)    # 표준정규분포로부터 데이터 1000개 만들기
y <- rnorm(1000) + x  # 표준정규분포로부터 데이터 1000개 만들고 x를 더하기
summary(y)    # 최소값, 최대값, 중간값, 25%/75% percentile
var(y)
hist(x, col="lightblue")    # 히스토그램 그리기

?plot
plot(x,y)    # 산점도 그리기


# Box Plots
boxplot(Sepal.Length~Species, data=iris, main="Iris Data", xlab="Species", ylab="Sepal Length")
boxplot(list(SL=iris[,1], SW=iris[,2], PL=iris[,3], PW=iris[,4]))

x <- iris[,2]
boxplot(x)
y <- sort(x, decreasing=FALSE)
m <- median(y)
q1 <- 0.25*150+0.5
q3 <- 0.75*150+0.5
upper.fence <- y[q3]+1.5*(y[q3]-y[q1])
lower.fence <- y[q1]-1.5*(y[q3]-y[q1])
top.bar <- max(y[y<upper.fence])
bottom.bar <- min(y[y>lower.fence])
top.outliers <- y[y>top.bar]
bottom.outliers <- y[y<bottom.bar]


# Scatter plot matrices : 산점도 행렬
# When there are more than two variables of interest it is useful to plot a scatter plot matrix, which plots each variable against every other one.

pairs(iris[,-5], pch=19, col=c(2,3,4)[iris[,5]])



