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
