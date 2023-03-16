# 1) runif(1) : Generate a continuous uniform random values between 0 and 1.
runif(1)

# 2) runif(n): Generate a vector of n uniform random values between 0 and 1.
runif(5)
hist(runif(1000))  # hist() : 히스토그램

# runif(n, min = a, max = b) : 균일분포, 랜덤한 생성
# dunif(x, min = a, max = b, log=FALSE) : 연속형확률분포, 확률밀도함수
# punif(q, min = a, max = b, lower.tail = TRUE, log.p = FALSE) : 누적 확률
# qunif(p, min = a, max = b, lower.tail = TRUE, log.p = FALSE) : quantile
runif(20, 3, 100)


# 3) floor(k*runif(1))+1: Generate a random integer between 1 and k.
floor(10*runif(1))+1  # 1~10사이의 random integer 생성

# 4) sample(n): Generate a random permutation of integers, 1,2,…,n.
sample(10)   # 1부터 n사이의 수를 랜덤하게 n개 

# 5) sample(n,k): Generate a random selection of k unique integers between 1 and n (i.e. sampling without replacement).
sample(10,6)   # sample(a, b) 1부터 a사이의 수를 랜덤하게 b개 

# rnorm(1,mu,sigma): Generate a random number from normal distribution with mu and sigma.
rnorm(1, 5, 1)
hist(rnorm(1000, 5, 2))
hist(rnorm(1000)) # rnorm : normal distribution, 정규분포

# dnorm(x,mu,sigma): Compute probability density function value at x for a random variable from normal distribution with mu and sigma.
dnorm(0,0,1) # density function value : 평균 0, 표준편차 1인 정규분포
dnorm(3, 5, 1)


# pnorm(x,mu,sigma): Compute cumulative distribution function value at x for a random variable from normal distribution with mu and sigma.
pnorm(6, 5, 1)
pnorm(0, 0, 1)  # 0일때 표준정규분포의 누적확률 : 0.5


qnorm(0.5, 0, 1)  # 누적확률이 0.5인 지점의 x값
qnorm(0.95, 0, 1)   # 1.644854
qnorm(0.975, 0, 1)  # 1.959964
qnorm(0.99, 0, 1)   # 2.326348


# set.seed(): Set the random number generator back to a known state. 
set.seed(1)
runif(1)
runif(1)
set.seed(1) # 46번 초기(1) 세팅 상태로 랜덤 number가 돌아간다.
runif(1)
set.seed(2) # 48번 두 번째(2) 세팅 상태로 랜덤 number가 돌아간다.














