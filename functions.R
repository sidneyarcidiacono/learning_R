# Let's take a look at a function that prints the maxNumber given to it!

maxNumber <- function(num1, num2)
{
  # function body
  if (num1 > num2)
  {
    print(num1)
  } else
  {
    print(num2)
  }
}

# Driver code

maxNumber(7, 13)

maxNumber(-12, 12)

# Let's write our maxNumber function so that it returns the value!

maxNumber <- function(num1, num2)
{
  if (num1 > num2)
  {
    return(num1)
  } else
  {
    return(num2)
  }
}

a <- -12
b <- 3
max <- maxNumber(a, b)

cat("The largest number between ", a, "and ", b, "is ", max) # Output:
                                                            # The largest number between -12 and 3 is 3

# Knowing that by default R returns the last evaluated expression in a function,
# we can also rewrite our function one more way:

maxNumber <- function(num1, num2)
{
  if (num1 > num2)
  {
    num1  # no return function but if this is the last statement executed it'll be returned
  } else
  {
    num2
  }
}

# What if we take a vector as input instead? Let's look at an example:

maxNumber <- function(myVector)
{
  max <- -Inf  # Here, -Inf is a reserved word for negative infinity. (the minimum number possible)
              # We set this to perform comparison with the first element.
  # loop through each item in our vector
  for  (v in myVector)
  {
    if (max < v)
    {
      max = v  # If a local maximum is found, update our max variable
    }
  }
  # Return max
  max
}

# Driver code:

result <- maxNumber(c(-10, 12, 1, 15, 9, 90))


maxMin <- function(myVector)
{
  max <- -Inf
  min <- Inf

  # Loop through each item in our vector and compare with max and min variables

  for (v in myVector)
  {
    if (max < v)
    {
      max = v
    } else if (min > v)
    {
      min = v
    }
  }
  list(max, min)
}

# Let's practice nested functions by rewriting our maxMin function using multiple functions!

maxNumber <- function(myVector)
{
  max <- -Inf

  for (v in myVector)
  {
    if (max < v)
    {
      max = v
    }
  }
  max
}

minNumber <- function(myVector)
{
  min <- Inf

  for (v in myVector)
  {
    if (min > v)
    {
      min = v
    }
  }
  min
}

maxMinNumber <- function(myVector)
{
  max = maxNumber(myVector)
  min = minNumber(myVector)

  print(paste("The maximum value in the vector is: ", max), quote = FALSE)
  print(paste("The minimum value in the vector is: ", min), quote = FALSE)
}

# Driver Code
input <- c(2, 5, 4, 10)
maxMinNumber(input) # calling the maxMinNumber() function

# Let's look at one more way to rewrite this as a nested function!

driverCode <- function()
{
  input <- c(2, 5, 4, 10)

  # Create the maxNumber function inside the driverCode function:
  maxNumber <- function(myVector)
  {
    max <- -Inf

    for (v in myVector)
    {
      if (max < v)
      {
        max = v
      }
    }
    max
  }

  # Create the minNumber function inside the driverCode function:
  minNumber <- function(myVector)
  {
    min <- Inf

    for (v in myVector)
    {
      if (min > v)
      {
        min = v
      }
    }
    min
  }

  # Create minMax to call functions inside the driverCode function
  minMaxNumber <- function(myVector)
  {
    min = minNumber(myVector)
    max = maxNumber(myVector)

    print(paste("The maximum value in the vector is: ", max), quote = FALSE)
    print(paste("The minimum value in the vector is: ", min), quote = FALSE)
  }

  # call the minMaxNumber from  within the driverCode function:
  minMaxNumber(input)
}

# Call the driverCode function - this is where execution actually starts:

driverCode()
