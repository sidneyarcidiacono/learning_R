# R

## Variables & Data Types:

- Important points while writing Identifiers in R:
    Identifiers can have a combination of letters, digits, one period . and one underscore _.
    However, they must start with a letter or a period. If it starts with a period, it cannot be followed by a digit.
    Reserved words in R cannot be used as identifiers!

R has **five main data types**:

    1. Character

    2. Complex

    3. Integer

    4. Logical

    5. Numeric

        - Real

        - Decimal

    You can see these all in test.R

### All about Strings:

**Escape Sequences**:

 - You can use escape sequences to include special characters in our strings.

 Common escape sequences include:

 \n - newline

 \t - tab

 \\ - backslash

 \' - single quote

 \" - double quote

 See string methods in test.R

### The difference between cat() & print()

As we see in test.R, print and cat both display something on the console. However, they're not necessarily exactly the same.

The simple printing method in R is print().

cat() is only valid for *atomic* types (more on this later) and won't work for non-empty lists or any types of objects. It'll only work on logical, integer, real, complex, or character types. As its name suggests, it converts arguments to characters and concatenates them.

An essential difference between cat() and print() is the *class* of the object they return. For now, you can assume that class means the type of object. This difference between the two methods can have practical consequences, as it affects what you can do with the returned object.

print() returns a character vector. A vector is an object in R language. We will be discussing this in the coming chapters. cat() returns an object NULL.

cat() can be quite useful when you have multiple strings you want to concatenate:

```R
# concatenate & print
cat("hello world", "with R")
```

Since print() and cat() have just about the same functionality, we can also concatenate strings with print() with the help of paste() (see test.R)

### Vectors

A vector is a basic **data structure** in R. It contains elements of the same type at each index. The data types can be:

- Logical

- Integer

- Numeric

- Character

- Complex

Creating vectors:

you can use the keyword vector() to create a vector of a *fixed type* and a *fixed length*.

*Using this method every index will now have a value of zero, FALSE, null string or something equivalent to nothing for the specified data type.*

A vector's type can be checked with typeof() and the number of elements in the vector can be checked with length().

But what if we don't want our vector to be initialized with nothing?

We can use c() to intialize vectors using concatenation. See test.R for reference.

You can also make a vector with just one value. R saves single values as a vector of length 1. See test.R for an example.

**Converting vectors to strings**:

Suppose we need to convert a vector to a string?

We can use the argument collapse with paste() to concatenate strings in a vector and remove the quotation marks between them. See test.R for examples.

**Inserting items into a vector**:

We can insert elements into a vector using the c() method.

**Accessing & modifying vectors**:

We can fetch an element at a specific index in a vector by using square brackets like this:

myVector[<index>]

Indexing starts at 1, which means the first element of the vector is at index 1

We can also modify the item at that index:

myVector[<index>] <- 1 would change the value at the given index to 1.

### Lists

Lists are essentially vectors that can hold elements of different data types.

Lists can be created with the list() function.

Lists have the capability of containing other lists within themselves. This makes lists *recursive*.
We can test this using the is.recursive() function.

**Inserting elements in a list**:

We can insert an element in our list using the c() method we used earlier on vectors.

**Accessing and modifying elements in a list**:

We can also fetch items at a specific index and modify them the same was as with a vector:

myList[<index>]

myList[<index>] <- newValue


In the above, we access the first list element of a list. As we mentioned above, each element in a list *could* be another list, so to obtain a single element, we use double square brackets instead. We can also use this double square bracket notation to change elements. See test.R!

**Named entries in lists**:

List entries can be named. For example:

```R
myList <- list(
  integerVar = 1:3,
  numericVar = 0.5,
  characterVar = c('a', 'b')
)
```

Entries in named lists can be accessed by their name rather than their index, as well.

### Arrays

We just learned about vectors & lists in R. R also has *arrays*.

While both lists and vectors in R are one dimensional, (having length and no other dimension), arrays in R can be **multi-dimensional**.

In R, you can create arrays using the array() keyword. Inputs to array() include concatenated vectors, and the *dim* argument for creating an array.

array(<dataVectors>, dim = <numOfDimensions>)

Optionally, we can also provide names for each dimension!

The dimensions of the array we made on lines 174 - 177 in test.R are 3x1, where 3 is the number of rows and 1 is the number of columns. This is also called a *single column matrix*.

Notice the row and column labels when we call print() on our array.

![Array output example from R course]('arrayOutput.png')

### Matrices

Matrices are objects in R where elements are arranged in a **two-dimensional** rectangular layout. Like arrays, they contain elements of the same data type.

**Why do we need matrices if we have arrays?**

Matrices in R are only two-dimensional. A matrix is just a more convenient constructor. There are many mathematical and statistical functions and methods that only accept 2D arrays. So, to ensure the programmer doesn't make the mistake of making the 2D array an nD array, a convenient object specifically for this task is used (our matrix).

Syntax:

matrix(data, nrow, ncol, byrow, dimnames)

Here, *data* is the input vector, *ncol* is the number of columns to be created, *nrow* is the number of rows to be created, *byrow* is a logical clue which if set to TRUE arranges elements row-wise, and *dimnames* is the argument that allows us to set names for the rows and columns.

**Accessing and manipulating matrices**

Elements of a matrix can be accessed and updated by using the row and column index of the element inside square brackets []. See in test.R

### Data Frames

Data frames are a super useful tool in R - basically, they're used to store **tabular data** in R. Data frames store data in a sequence of columns. Each column can be of a different data type.

In matrices, all of the items are of the same type. However, in a data frame, you can store objects of different types. So, if you want to store data of an employee, you can store their identification number, phone number, name, and address, you can!

To create a data frame, you pass vectors of the same length to the data.frame() function!

See test.R for some data frame methods and how to create one!

We can't use cat() for printing a data frame because cat() is used for objects containing only single data types. If we try to use cat() on a data frame, the compiler will throw an error.

What if we need to merge two different data frames with related information, and both have a column that has identical values?

For example: you have an employee data frame, like in test.R, but you have another data frame that contains the employee names and their ids.

You can do this using the merge() function.

Syntax for merge:

```R
merge(x, y, by.x, by.y, sort = TRUE)
```

Here, the parameters x and y are the two data frames we want to merge.
by.x and by.y provide the specifications of the columns through which merging will take place.
the sort parameter tells whether the result should be sorted on the specified column

By default, the data frames are merged on the columns which names they both have, but separate specifications can be given by by.x and by.y.

*We use by.x or by.y only when the names of the columns are different and we have to choose the ones on which merging should take place.*

Check out the example of merge() in test.R!

## Factors

## What is a factor?

A factor is a data structure in R used to categorize data. By categorizing data, we mean fields that only take predefined, a limited number of, or finite number of values (**categorical variables**).

For example, the marital status of a person can be the following:

- Married
- Single
- Divorced
- Separated
- Widowed

Here, we know that the possible values for marital status are 5. These values are predefined, distinct, and called **levels**.

Factors can be created using the factor() function. This function takes all **levels** in the form of a vector. See test.R!

Factors are closely related to vectors. i.e: factors are stored as integer vectors, meaning: *R records the data in the vector as integers and stores the result in an integer vector*.

## Operators

R has many **operators** that carry out different arithmetic and logical operations. An operator is a symbol that guides the compiler to perform specific arithmetic or logical manipulations.

There are four categories of operators in R:

1. Arithmetic
2. Logical
3. Relational
4. Assignment

### Arithmetic Operators:

+ -> Addition

- -> Subtraction

/ -> Division

* -> Multiplication

^ -> Exponent

%% -> Modulus

%/% -> Integer division

If we perform operations between vectors of the same length, the result is another vector! We can also perform operations between a vector and a single number - in which case, the number acts on each element in the vector. However, we can't operate between vectors of different lengths - the compiler will throw an error.

What if we want to solve:

2 + 4 * 9 - 8?

We need to keep in mind operator precedence. (PEMDAS!) The R compiler handles this for us, so we don't have to think too hard about it.

### Relational Operators:

Relational operators are used for comparing objects. They return a boolean value: TRUE or FALSE.

== -> equal to

!= -> not equal to

< -> less than

'>' -> greater than

<= less than or equal to

'>=' -> greater than or equal to

If you use a relational operator to compare vectors, R will do an element-wise comparison.

**The %in% operator**

The %in% operator is only used on vectors but is the only operator which does not do normal element-wise execution.

%in% checks whether the value(s) on the left side are present on the right side. This means %in% tests whether each value on the left is somewhere in the vector on the right.

*When using relational operators, if the two vectors are of unequal length, R tries to equalize them by replicating the smaller one*.

### Logical Operators:

Logical operators are used for carrying out Boolean operations like AND, OR, etc. Such operators compile the results of multiple logical tests into TRUE or FALSE.

The following are the logical operators in the R language:

& -> element wise logical AND

&& -> logical AND

| -> element wise logical OR

|| -> logical OR

! -> NOT

xor -> XOR

**R's relational operators have a higher precedence than R's logical operators, so the relational operator (>, <, etc.) will be executed first, and then the logical operator will be evaluated.**

## Conditional Statements

### if Statments:

Conditional statements are used to perform different computations or actions depending on if a condition is or is not met.

An *if statement* consists of a Boolean expression that when satisfied performs specific actions.

*if statements* in R are very similar to just about every other language I know.

*else if* in R is "else if" similar to JavaScript.

However, R has an ifelse() function that's a bit different. ifelse() takes:

ifelse(expression, condition1, condition2)

For example, if we want to print "even" for even numbers, and "odd" for odd numbers, we would do the following:

```R
ifelse(x %% 2 == 0, "even", "odd")
```

### Switch Statements:

A switch statement is a conditional statement that allows a variable to be tested for equality against a list of values. Each value is called a case.

Switch statements basically provide decision making capability: choose an option corresponding to the expression.
The options are chosen based on two criteria of the options:

1. Based on index - choose the option whose index corresponds to the value of the expression
2. Based on matching value - choose the option which is an exact match of the expression

The syntax is as follows:

switch(expression, case1, case2, case3, ....)

### Loops

Loops execute some code while some condition is true.

One example of a *while* loop in R:

```R
myNumber <- 1

while(myNumber <= 10)
{
  print(myNumber)
  myNumber = myNumber + 1
}
```

The syntax of a *for* loop in R is as follows:

```R
for (value in vector)
{
  statements
}
```

For loops can be used on lists, as well as matrices. This will also give us an idea of *nested* for loops.

Consider the following example:

```R
myMatrix <- matrix(c(1:12), nrow = 4, byrow = TRUE)

for (r in 1:nrow(myMatrix)) {
  for (c in 1:ncol(myMatrix))
  print(paste("Row", r, "and column", c, " = ", myMatrix[r, c]))
}
```

R also has something called a **repeat loop**. The syntax for the repeat loop is as follows:

```R
repeat
{
  statement

  if (something is true)
  {
    break
  }
}
```

In the statement block, we must use the "break" statement to exit the loop.

The repeat loop runs as long as it is not broken explicitly.

Check out an example in loops.R!

*Quick note: the break statement works in for and while loops in R as well!*

### Functions

Similarly to some other programming languages, functions are objects in R.

A function in R is created by using the 'function' keyword. Let's take a look at the syntax:

```R
functionName <- function(argument1, argument2, ...)
{
  # Statements
}
```

Components of a function:

*functionName* - this is the name of the function, and is stored as an object in R

*arguments* - We can pass data, inputs to the function. These are optional.

*statements* - These are the function's body, they define what the function does.

*output* - the return value of a function.

Types of functions:

*Built-in* - Build in R functions are pre-defined for us within the R language, and include many we've already been using such as ```cat()``` ```print()``` and ```length()```.

*User-defined* - These are functions we define ourselves with our own custom functionality. Functions are used to encapsulate code that we're likely to need to use multiple times in our program.

**Returning from a function**

We don't always just want our function to print something, because often we need to use the result. For this, we'll want to *return* something.

R has a *return()* method for this.

Syntax:

```R
return(expression)
```

The value returned from a function can be any valid object.

Okay, but there's a catch. R is a little weird and we don't NEED to specify a return statement.

**By default, R will return the result of the last expression in any given function**

Look back at functions.R for an example.

**Processing Lists and Vectors**

If we take a vector or list as input, we change our example function (in functions.R) slightly to iterate over each element we receive as input.

**Returning multiple values in R**

Say for our maxNumber function, we now want to return both the max and the min. We can store both of these in a list
and return the list!

**Nested Functions**

What is a nested function?

Sometimes, we might need to use another function in a current function. This is called nested functions: using a *user-defined* function in another *user-defined* function.

This would look something like this:

```R
myFunction <- function(arg1, arg2)
{
  # statements
}

myFunction2 <- function(arg1, arg2)
{
  myFunction(arg1, arg2)
  # ...
}
```

We can also define one function within another function and use it there, too!

```R
function1 <- function(arg1, arg2)
{
  function2 <- function(arg1)
  {
    # Statements
  }
  # Using the created function
  function2(arg1)
}
```

### Recursion

What is a recursive function?

A recursive function is one where we call the function itself from inside the function body. Recursion allows the function to execute several times, collecting the result at the end of each iteration.

**Components**:

Each recursive function has two parts:

*Base Case*: The base case is where the call to function stops, i.e., it does not make any more recursive calls.

*Recursive Case*: The recursive case is where the function calls itself again and again until the base case is met.

### Getting user input from the keyboard:

There are a few different ways to grab user input. First, let's take a look at the readLines() method:

The ```readLines()``` function takes user input - referred to as the STDIN file in R. First, we fetch the file using:

```R
input <- file("stdin")
```

Then, use the function readLines():

```R
UserInput <- readLines(input, <numberOfInputs>)
# Here, the variable UserInput is a list, and each of its elements can be accessed
# using square brackets
```

*Note:* The input taken from STDIN is always type string.

*Note:* The core strength of an R application is the ability to manipulate large chunks of data. Such data cannot be easily entered by the user, therefore, **external files** are used to pass large chunks of data to an R program. Such a method is more efficient and easy to use.

### Handling .txt files:

**Steps to take input from a file**:

1. We need to specify the file name and path in the local filesystem. If the file is in the same directory as the R program, then just the file name is enough.

```R
fileData <- file(path, open="r")

## Path is the location of the file plus its name
## open="r" specifies  that we'd like to open the file in read mode.
```

2. In the next step, we fetch all the data from the file. In this case, we fetch data from fileData (the variable in which we stored the result of opening the file). For this purpose, we again use the function ```readLines()```. The syntax is:

```R
lines <- readLines(fileData)
```

3. Now that all the lines of the file are stored in the variable ```lines```, we can perform any calculation or task on this data.

Let's look at the complete code for reading in the data from a .txt file and displaying its contents on the screen:

```R
path <- "data.txt"  # The path to the file we want to open. In this example, it's in the same directory as our program.

fileData <- file(path, open="r")  # open the file
lines <- readLines(fileData)  # read all the lines of the file.

for (l in lines)  # iterate over all the lines - remember that readLines stores a list.
{
  print(l)
}
```

Remember that **by default - everything we input from a file is type string. This means that should we need to perform calculations on numbers, we'll need to use our as.Integer or other methods to parse them as such.**

#### Outputting data to a file:

While handling data, we might want to output large quantities of data as well as read it in or do something with it. We might want to store this data for future use, or use it as input for another program.

**Steps for Outputting Data to a File:**

1. Find the path of the file that needs to be written

2. Now, use the write() function to write data, which is the counterpart of the readLines() function. The first argument to the write() function is the *data* and the second is the filepath. So, the syntax is like so:

```R
write(<dataToBeWritten>, <pathOfFile>)
```
