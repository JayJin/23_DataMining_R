w <- 1:50
x <- c(0, 1, 2, 3, 4) # combine function
y <- 1:5  # increment = 1
y <- seq(1, 5, 1) # sequence function
z <- seq(1, 10, 2)

b <- c("one","two","three")

c <- c(TRUE,TRUE,TRUE,FALSE,TRUE,FALSE)
a <- c(1,2,3,4,5)
b <- c(1,1,3,3,5)
c <- a==b # comparison operator

a[c(2,5)] # index로 원하는 요소 가져오기(subscript = indexing)

# mymatrix <- matrix(vector, nrow=r, ncol=c, byrow=FALSE, dimnames=list(char_vector_rownames,char_vector_colnames)) 

y <- matrix(1:20, nrow=5, ncol=4) # 기본값 : 열으로 채우기
z <- matrix(1:20, nrow=5, ncol=4, byrow=TRUE) # byrow=TRUE :행으로 채우기

matrix(1:20, 3)  # 길이가 나누어서 안떨어지면 처음 숫자로 다시 채운다

cells <- c(1,26,24,68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2")
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE, dimnames=list(rnames, cnames)) # dimnames = 행, 열 이름 지정

# Matrix slicing
# Identify rows, columns or elements using subscripts. 
y[,4] # 4th column of matrix
y[3,] # 3rd row of matrix
y[2:4,1:3] # rows 2,3,4 of columns 1,2,3 
y[1, 2]

# 어느 matrix의 행 또는 열을 가져올 경우에는 데이터타입이 matrix가 아닌 numeric vector로 변경된다.

x <- sample(20)
y <- matrix(x, 4, 5, byrow=TRUE)
y[3,2]
y[1:3, 2:4]         # 인덱스를 이용하여 슬라이싱하여 가져옴
y[c(1, 2), c(2, 5)] # 인덱스에 해당되는 값만 가져옴

y <- matrix(x, 20)  # 데이터 타입 : 열 벡터
y <- matrix(x, 1, 20)  # 데이터 타입 : 행 벡터

array(1:50, dim=c(5,5,2))  # 1~50까지의 수를 사용하여 5*5 행렬을 2개 만든다
array(1:50, dim=c(5,5,3))
array(1:100, dim=c(5,5,2,2))  # 4차원 어레이

# data frame
d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)  # NA : Not Available(결측치)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata <- data.frame(d,e,f)  # 컬럼을 구성할 벡터들(길이가 같아야 함)
names(mydata) <- c("ID","Color","Passed") #variable names
mydata

mydata[2:3] # columns 2 and 3 of data frame
mydata[c("ID","Color")] # columns “ID” and “Color”
mydata$Color
mydata$ID
mydata$Passed # variable “Passed” of data frame

cities <- data.frame(
  city = c("Seattle","Washington","Chicago",
           "New York","Portland","St Louis",
           "Denver","Boston","Minneapolis","Austin",
           "Philadelphia","San Francisco","Atlanta",
           "Los Angeles","Richardson"),
  rank = c(100, 96, 94, 93, 93, 92, 90, 90, 89, 87,
           85, 84, 82, 80, 80)
)

cities
cities$city
cities$rank
cities[3,1]
cities[3,2]

is.character(cities$city)

# lists
a <- "Design of Experiments"
b <- c(3,4)
c <- matrix(1:70, 7, 10)
d <- list(a, b, c)
d

d <- list(class=a, year=b, ID=c)  # list의 이름을 지정
d

d[[3]][4,c(3,4)]
d$ID[4,c(3,4)]


# factors
# unique한 값들을 숫자로 구분하고, 별도로 value들을 저장한다.
eye.colors <- c("brown","blue","blue","green","brown","brown","brown")
eye.colors

# charactor vector를 factor 타입으로
eye.colors <- factor(c("brown","blue","blue","green","brown","brown","brown"))
levels(eye.colors)  # unique한 값을 levels로 보여준다

eye.colors  # levels까지 표현해준다.

str(eye.colors) # str() function: Display the structure of an object


# Converting data types - "as. "
# Type conversions in R work as you would expect.
# as.character(), as.numeric(), as.matrix(),
# as.list(), as.data.frame(), as.integer(),
# as.vector()

as.integer(eye.colors)
as.character(1:10)

# See data types - "is. "
# is.character(), is.numeric(), is.matrix(),
# is.list(), is.data.frame(), is.integer(),
# is.vector()

d$ID  # matrix 타입
is.matrix(d$ID)  # TRUE

d$ID <- as.data.frame(d$ID) # data frame으로 타입 변경
is.matrix(d$ID)  # FALSE

