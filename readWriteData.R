# Let's say that we want to read in a .txt file!

path <- "data.txt"

fileData <- file(path, open = "r")
lines <- readLines(fileData)

for (l in lines)
{
  print(l)
}

## Let's say that we want to do a bit more than just print the lines!

Sum <- function(myVector) # Sum is the result of adding together all elements in a vector
{
  sum = 0
  for (i in myVector)
  {
    sum = sum + as.integer(i)
  }
  return(sum)
}

## driver code

# create our path. This would assume that we have a .txt file in this directory
path <- "data.txt"

# Use file() to open the file in "r" (read mode)
fileData <- file(path, open = "r")
# lines = the result of the readLines function
lines <- readLines(fileData)

# Initialize a numeric vector with zero initial elements
myVector <- vector("numeric", 0) # store the data in a numeric vector

# iterate through indices for the amount of lines there are in our file
for (i in 1:length(lines))
{
  # For each line, append to myVector
  myVector <- c(myVector, lines[i])
}

# Call sum on the resulting myVector
Sum(myVector)


## So what if we want to output this to a file? Let's modify the above code to include the following:

result <- Sum(myVector) # Now, we store the result of calling this function in a variable called 'result'

outputFile <- "output/outData.txt" # The file path to write to
write(result, outputFile) # Write takes arguments: write(data, filepath)

## Let's now take some data in from a csv file!

csvData <- read.csv("data.csv")
print(csvData)

# Now, since we know that the compiler saves this as a dataframe, we can perform manipulations on it
# as usual.

maximumMarks <- max(csvData$Marks) # Here, we acces the marks column with the syntax csvData$Marks
print(maximumMarks)

## Revisit creating dataFrames:

myDataFrame <- data.frame(foo = c(1, 2, 3, 4, 5), bar = c(T, F, T, F, T)) # foo and bar name their respective columns and act as headers
print(myDataFrame)

# Output:
# foo bar
# 1   TRUE
# 2   FALSE
# 3   TRUE
# ...

## Now, let's modify the above code so that we write a csv with some data:
# we'll need the function write.csv(). It takes the data to be written and the file path as arguments

write.csv(myDataFrame, "output/outMyDataFrame.csv")
