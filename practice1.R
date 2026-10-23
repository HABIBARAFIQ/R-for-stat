###Assigning values to objects
x <- 11
y <- 5
print(x,y)

###Case sensitivity
X

###Workspace commands
ls()
rm(y)
rm(list = ls())
ls()

###Naming objects
x.1 <- 12  #valid
1x <- 12  #invalid

###Storing character values
xx <- "amin"
xy <- "1"
px <- 1
pk <- 34.56
hn <- '1'
gh <- TRUE
class(xx)
class(xy)
class(px)
class(pk)
class(hn)
class(gh)

#arithmatic op
x <- 11
y <- 7
class(print(x/y))

#Combine values into a vector
x1 <- c(1, 3, 5, 7, 9)
print(x1)
class(x1) #->numeric
gender <- c("male", "female")
print(gender)

#sequence of integers
x <- 2:7
print(x)

#sequence with a specified interval
seq(1, 7, by = 1)
seq(1, 7, by = 1/3)
seq(1, 7, by = 0.25)
seq(2, 5, by = 0.25)

#Repeat values
rep("marin", times = 5)
rep(1:3, times = 5)
rep(seq(2, 5, by = 0.25), times = 5)
rep(c("m", "f"), times = 5)

#Extracting elements from a vector
y <- c(1, 3, 5, 7, 9)
y[3]
y[1:3]
y[c(1,5)] #1st and 5th element
y[-c(1,5)] #without 1st and 5th element
y[y < 6] 

#Creating matrices
?matrix
mat <- matrix(
  c(1, 2, 3, 4, 5, 6, 7, 8, 9),
  nrow = 3,
  byrow = TRUE
)
#by row = TRUE means row dhore fillup
print(mat)
mat <- matrix(
  c(1, 2, 3, 4, 5, 6, 7, 8, 9),
  nrow = 3,
  byrow = FALSE
)
#by row = FALSE means row dhore fillup
print(mat)
mat[c(1, 3), 2] # 1st and 3rd row and 2nd colm
mat[2, ]
mat[, 1]


