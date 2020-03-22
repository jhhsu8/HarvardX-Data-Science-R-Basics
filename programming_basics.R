# Programming Basics

#1. ifelse 
# Assign the state abbreviation when the state name is longer than 8 characters 
new_names <- ifelse(nchar(murders$state) > 8, murders$abb, murders$state)
# Defining functions 
# Create function called `sum_n`
sum_n <- function(n) { x <- 1:n
sum(x)
}
# Use the function to determine the sum of integers from 1 to 5000
sum_n(5000)

#2. Defining functions continued... 
# Create `altman_plot` 
altman_plot <- function(x,y) {
  plot(x+y, y-x)
}
altman_plot(10,10)

#3. Lexical scope 
x <- 3
    my_func <- function(y){
    x <- 5
    y+5
}
# Print the value of x 
print(x)

#4. For loops 
# Here is an example of a function that adds numbers from 1 to n
example_func <- function(n){
    x <- 1:n
    sum(x)
}
# Here is the sum of the first 100 numbers
example_func(100)
# Write a function compute_s_n with argument n that for any given n computes the sum of 1 + 2^2 + ...+ n^2
compute_s_n <- function(n) {
  x <- 1:n
  sum(x^2)
}
# Report the value of the sum when n=10
compute_s_n(10)

#5. For loops continued... 
# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
# Create a vector for storing results
s_n <- vector("numeric", 25)
# write a for-loop to store the results in s_n
n <- 25
for(i in 1:n){
  s_n[i] <- compute_s_n(i)
}
s_n

#6. Checking our math 
# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
# Define the vector of n
n <- 1:25
# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}
# Create the plot 
plot(n, s_n)

# 7.Checking our math continued 
# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
# Define the vector of n
n <- 1:25
# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}
# Check that s_n is identical to the formula given in the instructions.
y <- n*(n+1)*(2*n+1)/ 6
identical(s_n,y )
