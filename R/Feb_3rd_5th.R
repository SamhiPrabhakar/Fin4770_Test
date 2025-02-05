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