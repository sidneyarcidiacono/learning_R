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
