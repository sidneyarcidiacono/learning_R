# Let's play with loops in R!

myNumber <- 1

while(myNumber <= 10)
{
  print(myNumber)
  myNumber = myNumber + 1
}

# What if we want to use if... else inside a while loop?
# We can, just like in Python or most other programming languages,
# anything inside the loop will execute given that our *while* condition is true!

myNumber <- 1

while(myNumber <= 10)
{
  if(myNumber %% 2 == 0)
  {
    print("even")
  } else
  {
    print("odd")
  }
  myNumber = myNumber + 1
}

# foo bar exercise in R:

# Write your code here
num <- 1

while(num <= 20)
{
    if (num %% 3 == 0 && num %% 5 == 0)
    {
        cat(num, "foo bar\n")
    }
    else if (num %% 3 == 0)
    {
        cat(num, "foo\n")
    }
    else if (num %% 5 == 0)
    {
        cat(num, "bar\n")
    }
    num = num + 1
}

# Let's write a for loop in R!

myVector <- c(1, 2+2i, "3", 4, 5+5i, "6")

for (v in myVector)
{
  print(v)
}

# We've seen while and for loops, but R also has a repeat loop.
# Let's code an example:

myNumber <- 1

repeat
{
  print(myNumber)
  myNumber = myNumber + 1

  if (myNumber > 10)
  {
    break  # The loop runs until it is broken explicitly. We must use the 'break' statement to exit the repeat loop
  }
}
