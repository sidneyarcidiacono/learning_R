# This is a comment in R
print("Hello World!", quote = FALSE)

# Another method for printing in R:
# Here, the quotations marks are already supressed
cat("Hello world!")

# But, if we do want to use cat and print with the quotes:
# we can use an escape sequence

cat("\"Hello World!\"")

# Let's declare some variables in R! You can see notes.md for notes on the different data types.
# We use class() to see what type each variable is

# Real Numeric:
myRealNumeric <- 10
class(myRealNumeric)

# Decimal Numeric:
myDecimalNumeric <- 10.0
class(myDecimalNumeric)

# Character:
myCharacter <- "10"
class(myCharacter)

# Logical:
myBoolean <- TRUE
class(myBoolean)

# Integer:
myInteger <- 0:10
class(myInteger)

# Complex:
myComplex <- 5i
class(myComplex)

# Testing typeof & length
cat("The type of the variable is ", typeOf(myInteger), "\n") #returns low level data type
cat("The length of the variable is ", length(myInteger),"\n") #returns length of variable

# If you reassign a variable name, you overwrite the data stored in it, like in Python:
# overwriting myInteger
myInteger <- 11:10
cat("myInteger: ")
cat(myInteger, "\n")

# You can use ls() to print all of the variables assigned in the workspace alphabetically:
cat("variables in the current directory: ")
ls()
cat("\n")

# You can use rm() to delete variables.
cat("Deleting myRealNumeric and myDecimalNumeric: ")
rm(myRealNumeric, myDecimalNumeric) # Delete the two mentioned variables
cat("Now the variables in the current directory are ")
ls()
cat("\n")

# STRINGS

# You can find the length of a string using nchar()
nchar("learning is fun") # output : 15
# Empty spaces or tabs are also considered characters and included in the length of the string

# You can concatenate two strings using paste()
paste("learning", "is", "fun") # by default, paste inserts a single space between each argument
# We can set a different separator using the sep argument:

paste("learning", "is", "fun", sep = ".") # paste with sep argument

# we can duplicate the same string multiple times by using replicate() or rep()
# syntax for replicate: replicate(numTimes, "String to replicate")
# syntax for rep: rep("string to replicate", numTimes)

replicate(3, "learning is fun")

# VECTORS

# creating vectors using the vector() keyword
vector("numeric", 5) # Numeric vector with 0 at every index

vector("complex", 5) # complex vector with 0+0i at every index

vector("logical", 5) # logical vector with FALSE at every index

vector("character", 5) # character vector with "" at every index

# creating vectors using the c() keyword

myRealNumericVector <- c(1, 2, 3, 4) # numeric

myDecimalNumericVector <- c(1.0, 2.0, 3.0, 4.0) # numeric

myLogicalVector <- c(TRUE, FALSE) # logical

myCharacterVector <- c("a", "b", "c") #character

myIntegerVector <- 1:10 # integer

myComplexVector <- c(1+1i, 2+2i) # complex


# Creating a vector with a single element

myVector <- 5
is.vector(myVector) # check if this is a vector (returns TRUE or FALSE) - this is a built in R function
length(myVector) # see how many elements are in our vector

# concatenating a vector of strings:
myVector <- c("learning", "is", "fun")
paste(myVector, collapse = ".") # the collapse parameter specifies what separator should be used between elements

# overwrite myVector again:
myVector <- c(1, 2, 3, 4)
cat("Original vector: ")

myVector <- c(0, myVector)
cat("Prepending 0 at the start of myVector: ")
print(myVector)

myVector <- c(myVector, 5)
cat("Appending 5 at the end of myVector: ")
print(myVector)

tempVector <- c(6, 7, 8)
myVector <- c(myVector, tempVector)
cat("Appending another vector at the end of myVector: ")
print(myVector)

# Access the first index in myVector:
print(myVector[1])

# Altering the item at index 1
myVector[1] <- 2

# LISTS

# Create a list using the list() function:
myList <- list(1, 1+1i, "a", TRUE)
is.recursive(myList) # returns TRUE or FALSE
print(myList)


myList <- c("s", myList) # append "s" to start of list
cat("Prepending s to the start of myList: ")
print(myList)

# Fetch the first item in myList
print(myList[1])

# Use double square bracket notation to access element in myList:
print(myList[[1]])

# Modify the element at index 1:
myList <- list(, 1+1i, "a", TRUE)
myList[[1]] <- 100
print(myList[[1]])

# A list with named elements:
myList <- list(
  integerVar = 1:3,
  numericVar = 0.5,
  characterVar = c('a', 'b')
)

# Access named list elements by name:
print(myList['integerVar']) # prints the name as well as the value

print(myList[['integerVar']]) # prints only the value
