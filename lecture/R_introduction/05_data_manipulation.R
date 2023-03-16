# Data Manipulation
# Selecting subsets of data

USArrests # a built-in dataset

USArrests[c(10,20,30),]   # 인덱스로 가져오기

# Use logical conditions
USArrests$UrbanPop    # numeric vector
USArrests$UrbanPop>=70   # logical vector : 조건문
USArrests.sub1 <- USArrests[USArrests$UrbanPop>=70,]  # 필터링
USArrests.sub1

# 조건문 2개 사용
USArrests.sub2 <- USArrests[USArrests$UrbanPop>=70&USArrests$Rape>=40,]
USArrests.sub2


# Adding or removing columns
USArrests.sub3 <- USArrests[USArrests$Murder>=15,] # subsetting
USArrests.sub3

USArrests.sub3$ID <- 1:4 # add ID column
USArrests.sub3

USArrests.sub3 <- USArrests.sub3[,-2] # remove 2nd column
USArrests.sub3


# Combine rows or columns
Orange # a built-in data set

sub1 <- Orange[Orange$Tree==1,]
sub2 <- Orange[Orange$Tree==5,]
sub1.sub2 <- rbind(sub1, sub2) # same function for matrix : 두 개의 dataframe을 열방향 합친다(stacking)
sub1.sub2


sub3 <- Orange[Orange$Tree==4,]
sub1.sub3 <- cbind(sub1, sub3) # same function for matrix : 두 개의 dataframe을 행방향 합친다
sub1.sub3










