
# Variable assinment

x <- 2
x

y <- 5
y


# multiple variables simultaneously
a <- b <- 7
a
b

# Removing variables

rm (a)
a

# finding data types

x <- 5
class(x)

# Numeric data

is.numeric (x) 

i <- 5L
i
is.integer(i)


# Numeric data

class(4L)

class(2.8)

4L * 2.8

class (5L)

class (2L)


# Char Data
x <- "data"
y <- factor("{data")
y

## Date Data type

date1 <-as.Date("2019-03-08")
date1
class(date1)
as.numeric(date1)

date2 <- as.POSIXct("2019-03-08 09:00")
date2
as.numeric(date2)


# Logical

2 == 3

2 != 3

2 < 3

2 >= 3

# Vectors

assign('a', c(10, 150, 30, 40, 55.6))

a <- c(10, 150, 30, 40, 55.6)
a = c(10, 150, 30, 40, 55.6)

# Assigning vectors

x <- c(10, 150, 30, 40, 55.6)
c(10, 150, 30, 40, 55.6) -> x

1/x
x+2

x <- c(10, 150, 30, 40, 55.6)

y <-c(x, 0, x)
y

z <- 2*x + y + 1

p <-c (3,5, 6, 8)
q <-c (3,3, 3)
p+q

#### Packages

install.packages("swirl")
library(swirl)

swirl


## Vector Arithmetic


x <-c(10.4, 5.6, 3.1, 6.4, 21.7)
y <-c(x, 0, x)
z <-2*x + y + 1


min(z)
min(z)

var(x)

# Regular Seq

1:30
2*1:15
30:1

seq( 1,30)
seq(from=1,to=30,by=2)

seq(-5, 5, by=.2) -> s3
s4 <-seq(length=51, from=-5, by=.2)
s4 <-seq(from=-100,to=100, by=.6)

# Seq example
seq3 <- seq(-100, 100, by=0.6)
Seq3 <- mean((seq3))
# Sort seq3 in descending order
sort(seq3, decreasing = TRUE)


seq(-5, 5, by=.2) -> s3
s4 <-seq(length=51, from=-5, by=.2)


y <- c(1, 4, 6, 9)
x <- seq(from=0, to=20, along.with=y)

# Rep
x <-c(10.4, 5.6, 3.1, 6.4, 21.7)
s5 <-rep(x, times=5)
s6 <-rep(x, each=5)


# Logical vectors
x <-c(10.4, 5.6, 3.1, 6.4, 21.7)
temp <- x > 13


# NA
is.na(seq3)
z <-c(1:3,NA)
result <-is.na(z)


# Index

y <-x[-(1:4)]

#Factor vectors
vec1 <-c("Hockey", "Football", "Baseball", "Curling", "Rugby",
         "Hurling", "Basketball", "Tennis", "Cricket", "Lacrosse")
vec2 <-c(vec1, "Hockey", "Lacrosse", "Hockey", "Water Polo", "Hockey",
         "Lacrosse")
vec2
vec3 <-vec2 [c(1,3,6)]
vec3
vec3_factor <-as.factor(vec3)
class(vec3)

factor (x=c("Degree", "High School", "Masters", "Doctorate"), levels = c("High
School", "Degree", "Masters", "Doctorate"), ordered = TRUE)
