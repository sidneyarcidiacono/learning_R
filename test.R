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

# Let's make a two dimensional array with one vector.
myVector <- c(1, 2, 3)
myArray <- array(myVector, dim=c(3, 1)) # this array has 3 rows and 1 column, and is 3x1
print(myArray)

# Let's code an array with 3 columns, and 1 row:
myVector <- c(1, 2, 3) # create our vector
myArray <- array(myVector, dim=c(1, 3)) # this array has 1 row and 3 columns, and is 1x3
print(myArray)

# Let's code an array with 2 columns and 2 rows!
myVector <- c(1, 2, 3, 4)
myArray <- array(myVector, dim=c(2, 2)) # this array has 2 rows and 2 columns, and is 2x2
print(myArray)

# Now, let's create an array of two 3x3 matrices!
myVector1 <- c(1, 2, 3)
myVector2 <- c(4, 5, 6)
myVector3 <- c(7, 8, 9)

myArray <- array(c(myVector1, myVector2, myVector3), dim = c(3, 3, 2))
print(myArray)

# Accessing and modifying arrays:
myVector1 <- c(1, 2, 3)
myVector2 <- c(4, 5, 6, 7, 8, 9)

myArray <- array(c(myVector1, myVector2), dim = c(3, 3, 2))

print(myArray[1, 1, 1]) # print element located at row 1, column 1, in the first matrix

print(myArray[2, 3, 2]) # print element located at row 2, column 3, in the second matrix

# We can also provide one single index, and R uses column major order to assign indeces
myVector <- c("a", "b", "c", "d", "e", "f", "g", "h", "i")
myArray <- array(myVector, dim = c(3, 3, 1))
print(myArray[5]) # use column major for accessing this index

# We can also modify items by index the same way

# MATRICES

# We can create a matrix using the matrix() function:
# we set nrow and ncol arguments to specify the # of rows and columns
# let's create first an empty matrix
myMatrix <- matrix(nrow = 2, ncol = 2)
print(myMatrix) # prints a 2x2 matrix with NA in place of values

# let's use a populated vector to create a matrix
myVector <- c(1, 2, 3, 4)
myMatrix <- matrix(myVector, nrow = 2, ncol = 2)
print(myMatrix) # prints the matrix with myVector's elements, arranged column-wise

# let's play with the matrix() function
myMatrix <- matrix(c(1:12), nrow = 4, byrow = TRUE)
print(myMatrix) # prints a 3 x 4 matrix with 1 - 12 arranged by row

# we can also set the names of rows and columns:
rownames <- c("r1", "r2", "r3", "r4")
colnames <- c("c1", "c2", "c3")
myMatrix <- matrix(c(1:12), nrow = 4, ncol = 3, byrow = TRUE, dimnames = list(rownames, colnames))
print(myMatrix) # prints same matrix as above, but now our output includes our row and column labels instead of the default # labels

# let's access an element of our matrix
myMatrix <- matrix(c(1:12), nrow = 4, byrow = TRUE)
print(myMatrix[2, 3]) # prints 6 which is our element in row 2, col 3

# we can change the value of an element by accessing it and re-assigning it with =
myMatrix <- matrix(c(1:12), nrow = 4, byrow = TRUE)
myMatrix[2, 3] = 0
print(myMatrix[2, 3]) # prints 0

# Creating a data frame:
myDataFrame <- data.frame(foo = c(10, 20, 30, 40, 50), bar = c(T, F, T, F, T))
print(myDataFrame) # prints labeled columns foo and bar and labeled positions for the rows

# We can find the number of rows and columns associated with a data frame with nrow() and ncol()
myDataFrame <- data.frame(foo = c(1, 2, 3, 4, 5), bar = c(T, F, T, F, T))
cat("Number of rows: ", nrow(myDataFrame), "\n") # prints Number of rows: 5
cat("Number of columns: ", ncol(myDataFrame), "\n") # prints Number of columns: 2

# Let's look at the dataframe containing employee data:
# Create name, address, phone number and gender variables
name <- c("Alex", "Brian", "Charles")
address <- c("California", "NewYork", "Boston")
phonenumber <- c(2025550167, 2025354137, 2025339164)
gender <- c('F', 'M', 'M')

employeeDataFrame <- data.frame(name, address, phonenumber, gender)
print(employeeDataFrame) # prints data frame with above created rows

# What if we want to access the phone number of the first employee?
employeeDataFrame[1,3] # fetching the first row's third column: output is [1] 2025550167

# what if we want to access the entire second row?
# we can do this using square brackets without a column number, like This
employeeDataFrame[2,] # output: 2 Brian NewYork 2025354137 M with column labels

# what if we want one specific column, like all of the phone numbers?
employeeDataFrame[,3] # outputs phone numbers

# We can also select the columns with their names
employeeDataFrame[,c('name', 'phonenumber')] # outputs columns name and phonenumber for employees

# or, we can use the $ sign to fetch a specific column, like this:
# <source>$<nameOfColumn>
employeeDataFrame$name # outputs name column
# Notice that the line: Levels: Alex Brian Charles is printed
# A DF has unique row names because character vectors passed to a DF are converted to factors
# We'll get into these more later

# Let's try out merge()!
idNum <- c(11, 22, 33)
employeeCardNumber <- data.frame(name, idNum)

merge(employeeCardNumber, employeeDataFrame) # results in a data frame that looks like
# employee dataframe but which also contains an idNum column containing their idNums

# What if the column names aren't the same?
myKey <- c("Alphabet a", "Alphabet b", "Alphabet c")
smallLetter <- c("a", "b", "c")
smallAlphabet <- data.frame(myKey, smallLetter)

myNewKey <- c("Alphabet a", "Alphabet b", "Alphabet c")
capitalLetter <- c("A", "B", "C")
capitalAlphabet <- data.frame(myNewKey, capitalLetter)

merge(smallAlphabet, capitalAlphabet, by.x = "myKey", by.y = "myNewKey")
# This creates a new dataframe with columns myKey, smallLetter, and capitalLetter
