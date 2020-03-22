#R Basics Final Assessment:
library(dslabs)
data(heights)

ind <- heights$sex != "Male" & heights$sex != "Female" 
heights$sex[ind]

#Question 1. Write an ifelse() statement that returns 1 if the sex is Female and 2 if the sex is Male.
x <- ifelse(heights$sex == "Female", 1, ifelse(heights$sex == "Male", 2,0))

#What is the sum of the resulting vector?
sum(x)

#Question 2. Write an ifelse() statement that takes the height column and returns the height if it is greater than 72 inches and returns 0 otherwise.
y <- ifelse(heights$height >72, heights$height, 0)
mean(y)

#Question 3. Write a function inches_to_ft that takes a number of inches x and returns the number of feet. One foot equals 12 inches.
inches_to_ft <- function(x) {
  return(x/12)
}
#What is inches_to_ft(144)?
inches_to_ft(144)

#How many individuals in the heights dataset have a height less than 5 feet?
index <- 5 > inches_to_ft(heights$height)
sum(index)

#Question 4. The factorial() function computes factorials in R. 
#Complete the code to generate a vector of length m where the first entry is 1!, the second entry is 2!, and so on up to m!.
n <- 10
f_n <- vector(length = m)
# make a vector of factorials
for(n in 1:m){
  f_n[n] <- factorial(n)
}
# inspect f_n
f_n
