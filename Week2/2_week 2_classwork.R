x <-c(10.4, 5.6, 3.1, 6.4, 21.7)
y <-c(x, 0, x)
z <-2*x + y + 1
x
y
z

min(z)
max(z)
range(z)
length(z)
sum(z)

prod(z)

mean(z)
var(z)
sort(z)
sorted_z <- sort(z)
sorted_z
class(sorted_z)
typeof(sorted_z)

sorted_z1 <- sort(z,decreasing = TRUE)
sorted_z1

1:30
30:1
2*1:10

seq(from, to, by, length.out , along.with , ...)
seq(1,20)
seq(20,1)
seq(1,20,by=2)
seq(1,20, length.out=30)
2*seq(1,20)
seq(-5, 5, by=.2) -> s3
s3
s4 <-  seq (length=51, 5, by=.2)
s4

#Generate a sequence seq3 
seq3 <- seq(from=-100, to=100, by=.6)
seq3
mean((seq3))

# Sort seq3 in descending order
sort(seq3, decreasing = TRUE)

y <- c(1, 4, 6, 9)
x <- seq(from=0, to=20, along.with=y)
x


# rep function
x <-c(10.4, 5.6, 3.1, 6.4, 21.7)
s5 <-rep(x, times=5)
s5

s6 <-rep(x, each=5)
s6

#logical vectors
temp <- x > 13
temp

is.na(s6) 
z <-c(1:4,NA)
result <-is.na(z)
result

x1 <- x == NA
x1
is.na(x)


x <-c(10.4, 5.6,0.0, 3.1, 6.4, 21.7)
y <-x[!is.na(x)]
y

(x+1)[(!is.na(x)) & x>0] -> z
z

#Positive integral vectors
x[1:10]
x[6]

#Negative integral vectors
y <-x[-(1:4)]
y

#Factor vectors
vec1 <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Hurling", 
          "Basketball", "Tennis", "Cricket", "Lacrosse")
vec1

vec2 <-c(vec1, "Hockey", "Lacrosse", "Hockey", "Water Polo", "Hockey", "Lacrosse")
vec2

vec3 <-vec2 [c(1,3,6)]
vec3

vec3_factor <-as.factor(vec3)
vec3_factor
class(vec3)

factor (x=c("Degree", "High School", "Masters", "Doctorate"), levels = c("High School", "Degree", "Masters", "Doctorate"), ordered = TRUE)

