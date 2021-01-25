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
