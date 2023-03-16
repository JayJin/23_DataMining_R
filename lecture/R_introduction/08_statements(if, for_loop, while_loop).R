# 1. If statement

# Syntax
# 
# if ( condition ) statement 1 else statement 2
 

# if (condition) {
#   statement 1a
#   statement 1b
#   statement 1c
# } else {
#   statement 2a
#   statement 2b
#   statement 2c
# }


# if (condition1) {
#   statement 1a
#   statement 1b
# } else if (condition2) {
#   statement 2a
#   statement 2b
# } else {
#   statement 3a
#   statement 3c
# }


x <- 5
if (x < 3){
  print("x is less than 3")
} else {
  print("x is not less than 3")
}

x <- 0
if (x < 3){
  print("x is less than 3")
} else {
  print("x is not less than 3")
}

# ※ Operators
# Comparison operators
#   Equal to ==
#   Not equal to !=
#   Less than or equal to <=
#   Less than <
#   Greater than or equal to >=
#   Greater than >

# Boolean operators
#   And &&
#   Not !
#   Or ||

# 아래 식들을 실행해보면 비교연산자를 확인해볼 수 있다.
x <- 3
pi
x == pi
x != pi
x < pi
x <= pi
x > pi
x >= pi


x <- c(3, pi, 4)
y <- c(pi, pi, pi)
x == y
x != y
x < y
x <= y
x > y
x >= y
x == pi
x != pi
any(x==pi)  # 하나라도 TRUE이면 TRUE
all(x==pi)  # 모두가 TRUE여야 TRUE

any(c(TRUE, FALSE))
all(c(TRUE, FALSE))
all(c(TRUE, TRUE))



# 2. for Loop statement
# A statement or a set of statements that you want to repeat a number of times

# Syntax
# 
# for (variable in sequence) statement

# for (variable in sequence){
#   statement 1
#   statement 2
# }

# Example
x <- c(1:10)
y <- 0
for(i in 1:length(x)) y <- y+x[i]
y

x <- 0
for (i in 1:10) {
  x <- x + i
}
x

a <- c(2, 3, 5, 1, 2)
for (i in 1:5){
  print(a[i])
}

a <- c(2, 3, 5, 1, 2)
for (i in c(2, 3, 5)){
  print(a[i])
}


# 2. while Loop statement
# A loop for which you do not know in advance how many times iterations there will be

# Syntax
# run the statements while the condition is true
# while (condition) statement
# 
# while (condition){
#   statement 1
#   statement 2
# }

# Example
x <- c(1:10)
y <- 0
i <- 1
while(i<=length(x)){
 y <- y+x[i]
 i <- i+1
}
i
y



