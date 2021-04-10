# Arithmetic Operators:

number1 <- 10
number2 <- 3

# Add
number1 + number2 # 13

# Subtract
number1 - number2 # 7

# Multiply
number1 * number2 # 30

# Divide (output = decimal real)
number1 / number2 # 3.3333333

# Modulo (ouput = remainder)
number1 %% number2 # 1

# Integer division (output = floor)
number1 %/% number2 # 3

# Arithmetic operations on a vector returns a new vector!

vector1 <- c(5, 10, 15)
vector2 <- c(3, 6, 9)

# Addition:
vector1 + vector2 # 8 16 24

# Subtraction:
vector1 - vector2 # 2 4 6

# Multiplication:
vector1 * vector2 # 15 60 135

# Division:
vector1 / vector2 # 1.66667 1.66667 1.66667

# Modulo
vector1 %% vector2 # 2 4 6

# Integer Division:
vector1 %/% vector2 # 1 1 1

# Calculating operation on vector by number produces the scalar product -> the number acts on each item in the vector

myVector <- c(5, 10, 15)
number <- 3

# Addition:
myVector + number # 8 13 18

# Subtraction:
myVector - number # 2 7 12

# Multiplication:
myVector * number # 15 30 45

# Division:
myVector / number #1.66667 3.33333 5.00000

# Exponent:
myVector ^ number # 125 1000 3375

# Modulo:
myVector %% number # 2 1 0

# Integer Division:
myVector %/% number # 1 3 5

# Using R's relational operators on a vector
# R will do element-wise comparisons

vector1 <- c(5, 10, 15)
vector2 <- c(3, 6, 9)

# Equal to
vector1 == vector2 # ouput: FALSE FALSE FALSE

# Not equal to
vector1 != vector2 # output: TRUE TRUE TRUE

# Less than
vector1 < vector2 # output: FALSE FALSE FALSE

# Less than equal to
vector1 <= vector2 # output: FALSE FALSE FALSE

# Greater than
vector1 > vector2 # output: TRUE TRUE TRUE

# Greater than equal to
vector1 >= vector2 # output: TRUE TRUE TRUE

# Using R's %in% operator:

myVector <- c(5, 3, 15)
number <- 3

number %in% myVector # output: TRUE

# If the vector on the lefthand side has multiple elements,
# Each element is searched in the vector on the right side.
# Individual TRUE or FALSE values are produced as a result

vector1 <- c(5, 3, 15)
vector2 <- c(3, 10)

vector2 %in% vector1 # 3 is present in vector1 but 10 is not present in vector2

# The output of the above would be: TRUE FALSE

# LOGICAL OPERATORS IN R

number1 <- 10
number2 <- 3

number1 & number2 #output: TRUE

number1 && number2 #output: TRUE

number1 | number2 #output: TRUE

number1 || number2 #output: TRUE

!number1 #output FALSE

xor(number1, number2) # output: FALSE

# If we want to check if a number: testVariable is greater than 4 and less than 10:

testVariable <- 19

cat(testVariable > 4 && testVariable < 10)

## IF/ELSE

x <- 5

if (x > 0) # condition checking if x is a positive number
{
  print("Positive number")
} else
{
  print("Negative number")
}

# Check if testNumber is in myVector

myVector <- c(1, 2, 3, 4)
testNumber <- 4

if (!testNumber %in% myVector)
{
  print("Not found!")
} else
{
  print("Found!")
}

# Nesting if...else statements

age <- 22
validID <- TRUE

if (age >= 18)
{
  if (validId)
  {
    cat("Voting is allowed")
  } else
  {
    cat("Voting not allowed")
  }
} else
{
  cat("Voting not allowed")
}

# Foo, bar with R!
# If the number is a multiple of three, print "foo", if the number is a multiple of 5, print "bar" and print "foo bar"
# if it's a multiple of 3 and 5!

num1 <- 3
num2 <- 6
num3 <- 10
num4 <- 15

if (n %% 3 == 0)
{
  if (n %% 5 == 0)
  {
    print("foo bar")
  } else
  {
    print("foo")
  }
} else
{
  if (n %% 5 == 0)
  {
    print("bar")
  }
}

## R also has an ifelse() method that we can pass multiple arguments that coerce to booleans
# and ifelse() will always return a vector

# ifelse(expression, condition1, condition2)

# expression is a statement which can be coerced to logical mode
# condition1 and condition2 will return TRUE if it satisfies expression and FALSE if not
# output: [TRUE, FALSE]
# You always pass ifelse a vector and two conditions

x <- c(5, -5)
ifelse(x > 0, "positive", "negative") # if the expression is satisfied return condition1 else return condition2

## SWITCH STATEMENTS
# switch(expression, case1, case2...)

switch(2, "circle", "square", "triangle")  # Output "Square" because we match the index of value 'square'

# Another case where we match on index

input <- 3
ouput = switch(input, "Morning", "Afternoon", "Evening", "Night")
print(output) # Output = "Evening"

# And a case where we match on values:

input = "E"
output = switch(input, "M" = "Morning",
                       "A" = "Afternoon",
                       "E" = "Evening",
                       "N" = "Night")
print(output) # Output = "E"
