```r
# Example of unexpected behavior due to R's lazy evaluation

x <- 10
y <- 20

# Function with lazy evaluation
my_function <- function(a, b) {
  x <<- a + b  # Modifies x in the parent environment
  print(x)
  return(x)
}

# Call the function
my_function(x,y)
print(x) #prints 30, unexpectedly modifying x outside the function

#Another example

f <- function(a, b){
  a <- a + 1
  c <- a + b
  return(c)
}

x <- 10
y <- 20

z <- f(x,y)
print(z) #31
print(x) #10, x was not modified globally as might be expected.
```