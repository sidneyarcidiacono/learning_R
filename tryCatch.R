### Code example, will throw exception:

Sum <- function(myNumber1, myNumber2)
{
  return (myNumber1 + myNumber2)
}

# Driver code:

Sum("a", 1) # this line will throw an error and halt code execution
Sum(1, 2)


### Cleaning it up with try()

Sum <- function(myNumber1, myNumber2)
{
  return (myNumber1 + myNumber2)
}

# Driver code:

try(Sum("a", 1)) # Because we're using try, the error message will be shown but line 24 will still execute
try(Sum(1, 2))

### Let's look at an example of a full tryCatch() block:

tryCatch(
  sqrt("a")
  error = function (e)
  {
    print("Error -> Cannot find the square root of a character.")
  },
  warning = function(w)
  {
    print("Warning -> Cannot find the square root of a character.")
  },
  finally = {
    print("TryCatch ended.")
  }
)

# Output: since this throws an error, line 32 is executed. Then, finally is executed. So, the console output is:
# Error -> Cannot find the square root of a character
# TryCatch ended.

### Modifying our earlier example using tryCatch():

Sum <- function(myNumber1, myNumber2)
{
  return (myNumber1 + myNumber2)
}

tryCatch(Sum("a", 1), error = function (e) {print("Objects being added do not have the same data type.")})
tryCatch(Sum(2, 1), error = function (e) {print("Objects being added do not have the same data type.")})
