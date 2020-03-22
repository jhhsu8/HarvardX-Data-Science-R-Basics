#Data Types

#1. Variable names 
# Load package and data
library(dslabs)
data(murders)
# Use the function names to extract the variable names 
names(murders)

#2. Examining Variables 
# To access the population variable from the murders dataset use this code:
p <- murders$population 
# To determine the class of object `p` we use this code:
class(p)

#3. Multiple ways to access variables 
# We extract the population like this:
p <- murders$population
# This is how we do the same with the square brackets:
o <- murders[["population"]] 
# We can confirm these two are the same
identical(o, p)
# Use square brackets to extract `abb` from `murders` and assign it to b
b <- murders[["abb"]]
# Check if `a` and `b` are identical 
identical(a,b)

#4. Factors
# We can see the class of the region variable using class
class(murders$region)
# Determine the number of regions included in this variable 
length(levels(murders$region))

#5. Tables 
# Here is an example of what the table function does
x <- c("a", "a", "b", "b", "b", "c")
table(x)
# Write one line of code to show the number of states per region
table(murders$region)
