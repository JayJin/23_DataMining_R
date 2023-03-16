A <- matrix(1:6, nrow=2, ncol=3, byrow=TRUE)
B <- matrix(7:12, 2, 3)

# matrix의 산술연산은 element by element 연산이 수행된다.
# 그러므로 연산되는 두 matrix의 차원은 같아야 한다.
A+B
A-B
A*B
A/B

# Matrix multiplication : 행렬곱은 %*%를 사용한다
A[,1:2]
B[,2:3]

A[,1:2] %*% B[,2:3]

# Vector dot product : 벡터의 연산도 element-by-element 곱이 연산된다.
a <- c(1,3,5,7,9)
b <- seq(1, 9, 2)
a
b

a * b # element-wise multiplication

# Vector의 dot product는 아래와 같이 연산한다.
sum(a * b) # use sum function
# matrix function을 활용하여 아래와 같이 dot product를 구현할 수도 있다.
matrix(a, 1) %*% matrix(b, 5)

a <- 1:10
sum(a)
cumsum(a) # 누적 합 : cumulative sum

sum(A)
colSums(A)  # 열별 합계 -> numeric vector
rowSums(A)  # 행별 합계 -> numeric vector

mean(a)   # 평균
mean(A)
colMeans(A)  # 열별 평균 -> numeric vector
rowMeans(A)  # 행별 평균 -> numeric vector


# apply() function
# apply(X, MARGIN, FUN, ...)
# X : matrix, MARGIN : row-wise(1)/column-wise(2), Fun : function to apply

apply(A, 1, mean)  # row means
apply(A, 2, mean)  # col means
apply(A, 1, cumsum)  # row cumsum
apply(A, 2, cumsum)  # col cumsum

# Standard deviation : 표준편차
apply(A, 2, sd)

a <- 1:10
var(a)  # 분산
sqrt(var(a))   # 표준편차
sd(a)   # 표준편차

A <- matrix(a, 5, 2)
sd(A)
sd(c(A))  # 결과가 동일. c(A)는 matrix A를 벡터화

var(A)   # cov
cov(A)   # cov

var(c(A))  # 모든 원소의 variance를 구하려면 먼저 벡터를 취한 후 var 적용한다

apply(A, 1, sd)  # row-wise
apply(A, 2, sd)  # col-wise


# Minimum, Maximum
a <- c(2,5,1,8,10)
min(a)
max(a)

which.min(a)  # 벡터의 최소값(1)의 위치 인덱스 3 리턴
which.max(a)  # 벡터의 최대값(10)의 위치 인덱스 5 리턴
A

apply(A, 1, min)
apply(A, 2, min)

min(A)
max(A)

A[2,2] <- -2
A[4,1] <- 100
A

min(A)
max(A)

which.min(A)  # 5*2 행렬의 (2,2) 위치 -> 7번째로 7을 리턴
which.max(A)  # 5*2 행렬의 (4,1) 위치 -> 4번째로 4를 리턴

# transpose / determinant / inverse matrix / diagonal elements / trace
A <- matrix(c(3,2,6,10,3,1), 2, 3)
A
t(A) # transpose

B <- matrix(c(4,2,7,6), 2, 2)
B
det(B) # determinant : det() = AD-BC
solve(B) # inverse matrix : 역행렬
diag(B) # diagonal elements : 대각행렬의 원소값
sum(diag(B)) # trace of a matrix : 주대각원소의 합







