# "Feb 3rd Notes"

print ("hello word")
print ("Hello Samhi!")

700+1000

print (700*1000)

length(c(2,3) * c(3,9))

my_number <- 3

user_name <- readline("What is your name?")


c(98,99,100,101,102)
bond_prices <- (98,99,100,101,102)


interest_rate <- readline("what is the interest rate now?")

_______________________________________________

print("Feb 5th Notes")

4 main types of Vectors Atomic
# Logical,Integer,Double,Character (lightest->heaviest memory)
# NA (Vector 1) and NaN (Vector 1,undefined mathmatically) vs NULL (Vector 0)
a <- TRUE
b <- 3.56
c <- "Logical"
d <- 6
typeof(a)
typeof(b)
typeof(c)
typeof(d)
# d is double because integers can be doubles as well (L specifies integer)
e <- 6L
typeof(e)

# List is Generic Vector (multiple types)
example_list <- list(1L,3.5,"hi",TRUE)
typeof(example_list)
my_list <- list(
  first_element=c(1L,2L,3L), 
  second_element=c("how","what","why","where"), 
  third_element=c(3 < 5, 3 == 5, 3 > 5))
typeof(my_list)
length(my_list)

 
# R Object Artibutes (data attached to the R)
# Method 1: Names
stock_prices <- c(150,200,250,300)
attributes (stock_prices)
name(stock_prices)
names(stock_prices) <- c("AAPL", "GOOGL", "MSFT", "AMZN")
names(stock_prices)
attributes(stock_prices)


# Method 2: attr()
stock_prices <- c(150,200,250,300)
attr(stock_prices)

# Method 3: assign names by construct 

# Try it yourself: pls help
stock_prices <- c(100,150)
name(stock_prices) <- c("monkey")
name(stock_prices)
attributes(stock_prices)
attr(obj, "names")


# Dim attributes (two dimention matrix)
# matrix
x <- 1:6
dim(x) <- c(2,3)
print(x)

#array
y <- 1:8
dim(y) <- c(2,2,2)
print(y)

# Class attribute (define the behavior of objects)
# Date/times, factors, dataframe, or custom built class

# Example 1:
#   double type atomic vector (type) but own specfic rule for uses (class)

today <- Sys.Date()
now <- Sys.time()

print(today)
print(now)

typeof(today)

attributes(today)
attributes(now)

class(today)
class(now)

# Example 2:

unclass(today)

print(today + 1) 
# adds one day

print(now + 1) 
# add one second

unclass(now)
class(now)
print(now)
print(today)
print(now)


# Time zone attributes
now <- Sys.time()
print(now)

unclass(now)

#set attribute to tzone to UTC
attr(now, "tzone") <- "UTC"
print(now)

unclass(now)

#Factors

# Example 1 (built on integer type)
firm_size <- factor(c("Large","Mid","Small"), levels = c("Small", "Mid","Large"))
political_parties <- factor(c("Democratic","Republican"))

typeof(firm_size)
class(firm_size)

#strip off all attributes
attributes(firm_size) <- NULL
firm_size
class(firm_size)
_____________________________________________________

#Feb 10th Notes

head(iris)
#row=observations, variable=column
typeof(iris)
class(iris)

#try!
iris_list <- unclass(iris)
print(iris_list)

#how to find the attributes (names,class, row.names)
attributes(iris)
names(iris)
class(iris)
row.names(iris)

#Tibble, better printing output (overall nicer to look at)
iris_tb <- as_tibble(iris) #doesn't work bc you need to download tidyverse
install.packages("tidyverse") #downloaded
library(tidyverse)
iris_tb <- as_tibble(iris)

#implicit class
#Atomic Vectors: (primary data types - Logical, Integers, double, charactor)
#When class doesn't show in attrubutes but does when asked specifically for class
a <- c(1,2,3)
typeof(a)
attributes(a)
class(a)

#try to find implicit 
a <- True
typeof(a)
class(a)
attributes(a) #attribute not there

b <- 3L
typeof(b)
class(b)
attributes(c)

c <- 3.5
typeof(c)
class(c) #implicit numeric
attributes(c)

d <- "A"
typeof(d)
class(d)
attributes(d)

#Excersize
typeof(c(1,2,3))
typeof(c(1L,2L,3L))

my_first_object <- c(1,3,5)
MySecondObject <- 5
my_first_object * MySecondObject

my_name <- "Samhi"
my_name + 3

#importance of class, for example- as you cannot add function on charactor and numeric 
#another way to perform plus/multiplication
`+`(3,4)
`*`(3,4)
?mean()
?+ #won't work
?"+"


#some functions CORCES the class
test <- c(3.14, Sys.Date(), Sys.time())
typeof(test)
class(test)

#Coercion Precedence: Charactor>Double>Integer>Logical (same with the memory is takes)

#Indexing elements in R:
#[] returns subset to orginal class
#[[]] returnes to 
# $

prices <- c("APPLE" = 300, "MSFT" = 250)
prices[1] #include
prices[2]
prices[-1] #exclude

prices[c(-1,2)] #can't do it be you can only include and exclude seperatly

#try!
stock_prices <- c("Misfit" = 200, "TSLA" = 255, "APPL" = 230, "GOOG" = 215)
stock_prices[c(1,3)] #access 1 and 3rd element 
stock_prices[c("MSFT","AAPL")] <- 300 #assign vectors

#tip [[]] single braket , [] double braket 
#you can subset logical vector 
prices>200
prices[prices > 200]

(prices %% 2) == 0
prices[(prices %% 2) == 0]

#Exercize
stock_prices <- c("TSLA" = 680, "FB" = 355, "NFLX" = 548, "NVDA" = 800, "AAPL" = 145)
stock_prices>250
stock_prices[stock_prices>250]

stock_prices %% 2 == 0 #stock prices that are even
is_even <- stock_prices %% 2 == 0
stock_prices[is_even]

stock_prices[stock_prices > 600]
stock_prices[stock_prices< 600 ] <- 360

#List Indexing
#[[]] returns vector
#[] returns list + Vector
# $ same as [[]], betterrr

___________________________________________
#Feb 12th
#List Indexing
#[[]] returns (element)
#[] returns list + Vector (list)
# $ same as [[]], betterrr

#chains

#NULL to remove
#can't do it to an element you would have to [-1] it instead

#Portfolio Exersize HOMEWORK

1:5 # Infix call
':'(1,5)

x <- c(1,2)
names(x) <- c("A")...

#c() has arbitrary number

#seq() from, to, and by
seq(from = 1, to = 10, by = 2)
seq(1,10,2) #can also be written like this

#max(...., na.rm = False) take our NAs -> max(..., na.rm = True)
max(c(1,2,3,4))

#Defining Function
my_first_function <- function(arg1, arg2) {#input argument
  # write out what function would do with arguments
  return()#output
}

say_hello <- function(){
  print("Hi!")
}
say_hello() #to execute function

#tweak function to accept argument called name

library(tidyverse)
say_hello <- function(name){
  print("hello, {name}")
}

say_hello(name = "Samhi")

name <- "Samhi"
str_glue("hello, {name}!")

say_hello <- function(name){
  print(str_glue("hello, {name}!"))
}


say_hello("Samhi")

#Build Perpetuity Calculator

pv_per <- function(pmt, r, g) {
  n <- pmt
  d <- r - g

  return(n/d)
}
pv_per()

pv_per(pmt = 10000, r = 0.07, g = 0.03)

answer <- pv_per(10000,0.07,0.03)
print(answer)



#Excersize
pv_per(50000,0.04,0)
pv_per(50000,0.04,c(0.01,0.02,0.03))

pv_per2 <- functionBody(pmt, r, g) {
  n <- pmt
  d <- r - g
  return(n/d)
}
pv_per2(10000,0.07)


#Anonymous Function can be used with syntactic sugar (simple to read/write)
function(x, y) {
  return(x + y + 1)
}
\(x, y) x + y + 1

\(x,y){
  x + y + 1
}

#Try it
pv <- \(pmt, r, g) pmt /(r-g)
pv(100, 0.04, 0.01)

#Syntax Sugar: Pip Operator PEMDAS
f(g(h(k(x)))) executed from the inside then outside (heard to understand)
x then 
call k()
call h()
call g()
 use |> pipe  |> (cmd shift M)
 |> |> |> |> |> |> |> |> |> |> shortcuttt
 
Solve_math <- function(){
  a <- cube(2*2*2)
  b <- sqrt(a)
  return()
}


2 |> 
  cube(x^3) |> 
  sqrt()

______________________________
#FEB 17th

some_function <- function(x, y = 1){
  i <- 1
  ans <- x + y + i
  return(ans)
}
some_function()
some_function()
formal (some_function(ans))
some_function(ans)

#3 elements of functions formal, ____, enviornment

#Perpetuity Calc, Pipe operator |> |> |> 
environment(purrr::map)
environment(some_function)
library(purrr)
map

library(tidyverse)

#Control Structure
#WHICH statments is run WHEN
#If Statments (true), Else/Else if (false)
#Loops: for (repeat), while (execute when condition is true)
#Map: Implicit loops 

#If Else
if (condition) true
if (condition) true_action else false 

stock_price <- 115
if (stock_price > 110) {
  print ("The stock price has increased")
}

#Practice

PMT <- 750

if (PMT > 1000) {
  PMT <- PMT + 10000
} else if (PMT > 50) {
  PMT <- PMT + 100
} else {
  PMT <- 0
}

#LOOPS

for (i in 1:5) {
  # i is a symbol for iterator
  # 1:5 is literable
  Print(i)
}

x <- c("a", "b", "c", "d")
for (a in seq_along(x)) {
  print(x[a])
}
#seq_along()is just using the integers in orders

#For loop: Preallocation
N <- 10
output <- vector(mode = "list", length = N)


for (n in 1:N){
  output [[N]] <- n**2
}

#Next and break 
#Nest is used to skip 
#Break is used to exit loop 

#For loop 
pricipal <- 10000
rate <- 0.05
N <- 10

output <- vector("double", length = N)

for(n in 1:N) {
  output[[n]] <-  pricipal * (1 + rate)^n

}
print(output)


#FEB 19th ___________________________________________

#While LOOPS

#For loop limited (has a range)
1.
for (i in 1:10){
  print(i)
}
2.
a <- 1
while (a < 11){
  print (a)
  a <- a + 1
}
3.
a <- 1
while (a < 11){
  if (a != 5) {
    print (a)
  }
  a <- a + 1
}


#Excersize, yesss
times_two <- function (x) (
return(x * 2)
)
map(1:10, times_two)

map_dbl(1:10, times_two)

#Vectorized Operations (multiplication)
stock_price <- c(150,250,100,250,300)
stock_holdings <- c(10,5,20,5,10)
answer <- stock_prices * stock_holdings

map2(stock_prices, holdings, "*")

#Exercise 
stock_price <- c(150,250,100,250,300)
stock_holdings <- c(10,5,20,5,10)

profolio_value <- vector("numeric",length(stock_prices))

for (i in seq_along(stock prices)){
  profolio_value
}

#ifelse(test,yes,no)
stock_prices <- c(45,50,52,48,55,49)
dividend <- ifelse(
  stock_prices > 50,
  stock_prices * 0.02,
  stock_prices * 0.015
)

print(dividend)
stock_cost <- c(45,56,52,48,55,49)
sentiment <- ifelse (
  stock_cost > 53,
"Bull",
"Bear"
)
Print(sentiment)

#Data Frame

my_dataframe <- data.frame(
  Name = c("Amy", "Bill", "Charles", "Donnea", "Ekert"),
  Age = c(21,25,30,38,49),
  Sex = c("Female", "Male", "Male", "Female", "Male"),
  Income = c(3600,5300,8900,8200,16600),
  Housing = c("Rent", "Rent", "Own", "Own", "Rent")
)
str(my_dataframe)

#Tibble Class
iris
iris |> (
  head(2)

)
#Convert to tibble, more info and formating
iris_th <- as_tibble(iris)
head(iris_tb, 3)



