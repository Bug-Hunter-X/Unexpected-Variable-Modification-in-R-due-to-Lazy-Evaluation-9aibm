# Unexpected Variable Modification in R due to Lazy Evaluation

This repository demonstrates a common, yet often overlooked, source of bugs in R programming: unexpected variable modification stemming from R's lazy evaluation.  Lazy evaluation means that expressions are not evaluated until their value is actually needed. This can lead to unexpected side effects, particularly when dealing with global variables or modifying variables within functions.

The `bug.r` file contains examples showcasing this behavior.  The `bugSolution.r` file provides solutions and best practices to avoid these pitfalls.

## How to Reproduce
1. Clone this repository.
2. Open `bug.r` in an R environment.
3. Run the code. Observe the unexpected modification of global variable `x` in the first example. Notice how in the second example, the function modifies a copy of x locally, not the global variable.
4. Open `bugSolution.r` to see how to address these issues using explicit copying and avoiding global variable modification.

## Solutions
The `bugSolution.r` file offers solutions and demonstrates how to mitigate these problems with better practices.
