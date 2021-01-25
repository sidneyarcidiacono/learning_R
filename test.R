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
