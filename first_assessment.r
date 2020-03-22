#Section 1: R Basics, Functions, and Data Types

#Question 1
#To find the solutions to an equation of the format 𝑎𝑥2+𝑏𝑥+𝑐, use the quadratic equation: 𝑥=−𝑏±𝑏2−4𝑎𝑐√2𝑎.#
#What are the two solutions to 2𝑥2−𝑥−4=0 ? Use the quadratic equation.
#Report the positive solution first, using 3 significant digits for both solutions.
options(digits = 3)
a <- 2
b <- -1
c <- -4
(-b+sqrt(b^2-4*a*c))/(2*a)
(-b-sqrt(b^2-4*a*c))/(2*a)

#Question 2
#Use R to compute log base 4 of 1024. You can use the help() function to learn how to use arguments to change the base of the log() function.
log(1024, base = 4)

#Question 3a
#How many rows are in the dataset?
str(movielens)
nrow(movielens)
 
#Question 3b
#How many different variables are in the dataset?
str(movielens)
colnames(movielens)

#Question 3c
#What is the variable type of title ?
str(movielens)
class(movielens$title)
 
#Question 3d
#What is the variable type of genres ?
str(movielens)
class(movielens$genres)

#Question 4
#We already know we can use the levels() function to determine the levels of a factor. A different function, nlevels(), may be used to determine the number of levels of a factor.
nlevels(movielens$genres)

#Section 2: Vectors, Sorting   

#Question 1
#Consider the vector x:
x <- c(2, 43, 27, 96, 18)
sort(x)
order(x)
rank(x)
  
#Question 3
#Mandi, Amy, Nicole, and Olivia all ran different distances in different time intervals. Their distances (in
#miles) and times (in minutes) are as follows:
name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)

#How many hours did Olivia run?
#What was Mandi's speed in miles per hour?
#Which runner had the fastest speed?
df <- data.frame(name, distance, time)

olivia <- df$name=="Olivia"
df$time[olivia]/60

mandi <- df$name=="Mandi"
df$distance[mandi]/df$time[mandi] * 60

df$name[which(speed == max(speed))]

 