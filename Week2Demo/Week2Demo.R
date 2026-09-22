
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

y <-c(x, 0, x)
y


p <-c (3,5, 6, 8)
q <-c (3,3, 3)
p+q

#### Packages

install.packages("swirl")
library(swirl)

swirl

