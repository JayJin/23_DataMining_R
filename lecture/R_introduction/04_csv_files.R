# writing to csv files
cities
write.csv(cities, "mycities.csv",row.names=FALSE, col.names=TRUE)
# row.names=TRUE로 하면 row name도 "", 1", "2", ... 순으로 저장이 된다.
# 맨 첫 열은 col.name이 들어가므로 row name이 ""으로 저장된다.


# Reading from CSV files
cities2 <- read.csv("mycities.csv",header=TRUE, sep=",")
cities2
