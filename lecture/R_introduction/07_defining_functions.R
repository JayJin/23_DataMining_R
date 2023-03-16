# Syntax

# myfunction <- function(arg1, arg2, ... ){
#   statements
#   return(object)
# }


# Example 1   <-- recommended
f <- function(a, b){
  c <- a+b
  return (c)
}
f(2,3)
f(4,100)

# Example 2
f <- function(x,y) x+y
f(2,3)

# Example 3
f <- function(a,b) {a+b}
f(2,3)


# type the below in R Editor and Run the whole selection
mydnorm <- function(x, mu, sigma) {
  y <- exp(-(x-mu)^2/(2*sigma^2))/(sigma*sqrt(2*pi))
  return(y)
}

# 확인 1
mydnorm(0, 0, 1)
dnorm(0, 0, 1)

# 확인 2
mydnorm(0, 5, 4)
dnorm(0, 5, 4)








