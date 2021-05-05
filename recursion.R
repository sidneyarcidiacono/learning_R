# Let's take a look at an example of recursion in R!

printNumbers <- function(myNumber)
{
  if (myNumber == 1)  # This is our base case
  {
    print(myNumber)
  } else
  {
    print(myNumber)
    printNumbers(myNumber - 1)  # This is our recursive case, where we call ourselves.
  }
}

# Driver code:
test = 10
printNumbers(test)
