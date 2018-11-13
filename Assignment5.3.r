# 1. Test whether two vectors are exactly equal (element by element)
vec1 = c(rownames(mtcars[1:15,]))
vec1

vec2 = c(rownames(mtcars[11:25,]))
vec2

m<- as.numeric(vec1)
m
n<- as.numeric(vec2)
n

# We can use this functions to test whether two vectors are exactly
#equal by element by element
identical(vec1,vec2)
identical(m,n)
all.equal(m,n)
isTRUE(all.equal(vec1,vec2))
setequal(vec1,vec2)
m%in%n

#2. Sort the character vector in ascending 
#  order and descending order
vec1 = c(rownames(mtcars[1:15,]))
vec1

vec2 = c(rownames(mtcars[11:25,]))
vec2

m<-as.numeric(vec1)
m
n<-as.numeric(vec2)
n
# sorting in ascending order which is default
sort(m)
sort(n)
#sorting in decending order 

sort(m,decreasing =TRUE)
sort(n,decreasing =TRUE)

#3.What is the major difference between str c() and paste()
#show an example.

Ans : 
  Str() function is compactly display the internal 
structure of an R object and an alternative to 
summary () function. It displays many useful things. 

Ex : 
  
  ajay<- c(2,3,4,"hey")
ajay
str(ajay)

say for Cereals_practice data 
str(Cereals_practice)

# example
#Join multiple strings into a single string.
library(stringr)
str_c("Letter: ", letters)
str_c("Letter", letters, sep = ": ")
str_c(letters, " is for", "...")
str_c(letters[-26], " comes before ", letters[-1])

str_c(letters, collapse = "")
str_c(letters, collapse = ", ")

# example
aj<- "Happy Learning"
str_sub(aj,1,6)
str_sub(aj,end=6)
str_sub(aj,8,15)
str_sub(aj,8)
str_sub(aj,c(1,6),c(8,15))

#str function does not return anything, for efficiency reasons. 
#the obvious side effect is output to the terminal

paste() function is used for concatenate Strings.
It has 3 arguments. 
paste(...,sep = " ",collapse = NULL)
The ... is the stuff you want to paste together and
(sep),(collapse) is to get this done.

# Example

ajay<- c('My Name is Ajay','Love to Learn R')
ajay
mishra<- paste(ajay[1], ajay[2], sep = " ")
mishra

#4. Introduce a separator when concatenating the strings

Ans: 
  x<- c('My.name.is.Ajay','Love.to.Learn.R')
x
y<- c(gsub(".","-",x,fixed = TRUE))
y
#used paste function to concatenating strings
z<- paste(y[1],y[2], sep=",")
z
  





