---
title: NumPy
---

::: {.callout-tip}
#### Learning Objectives

- Be able to use numpy
- Know what numpy is good for


:::

## What Is NumPy?

NumPy (Numerical Python) is a foundational Python library for numerical and scientific computing. It provides efficient data structures and functions for working with large, multi-dimensional numerical datasets. NumPy is widely used in data science, machine learning, engineering, physics, and finance, and it underpins many other libraries in the Python scientific ecosystem, such as pandas, SciPy, and scikit-learn.

You will likely need NumPy in many of the future python courses including in machine learning and data science courses, and therefore we introduce it here.

## Base Data Structure: The ndarray

The core data structure in NumPy is the ndarray (N-dimensional array).

Key characteristics:

- Stores elements of a single data type (e.g., integers, floats)
- Supports one-dimensional (vectors), two-dimensional (matrices), and higher-dimensional arrays
- Optimised for performance and memory efficiency

Example:

```
import numpy as np

a = np.array([1, 2, 3])          # 1D array
b = np.array([[1, 2], [3, 4]])   # 2D array
```

## Common Operations 

**Element-wise Operations**
```
x = np.array([1, 2, 3])
y = np.array([4, 5, 6])

x + y        # array([5, 7, 9])
x * y        # array([4, 10, 18])
```

**Broadcasting**

```
x * 2        # array([2, 4, 6])
```

**Indexing and Slicing**
```
x[0]         # 1
x[1:]        # array([2, 3])
```

**Aggregations**
```
x.mean()     # 2.0
x.sum()      # 6
x.max()      # 3
```

**Linear Algebra**
```
A = np.array([[1, 2], [3, 4]])
np.linalg.det(A)
np.linalg.inv(A)
```

## Reading and Saving Data

**Reading Data**

Common methods include from text or CSV files:

```data = np.loadtxt("data.csv", delimiter=",")```


or from NumPy’s native binary format:

```data = np.load("data.npy")```

**Saving Data**
```
np.savetxt("output.csv", data, delimiter=",")
np.save("output.npy", data)
```

NumPy is often combined with pandas another package for more complex data ingestion tasks.

## Advantages and Disadvantages

| Advantages                                                                 | Disadvantages                                                      |
|----------------------------------------------------------------------------|--------------------------------------------------------------------|
| Very fast for numerical operations due to optimized C-based implementation | Limited support for non-numeric or mixed data                      |
| Memory-efficient compared to Python lists                                  | Less intuitive for labeled or relational data                      |
| Extensive mathematical and linear algebra functionality                     | Steeper learning curve than basic Python lists for beginners       |
| Integrates well with the scientific Python ecosystem                        |                                                                    |


## Common Alternatives and Their Use Cases

**pandas**
Used for labeled, tabular data (DataFrames). Builds on NumPy and adds indexing, grouping, and data-cleaning tools.

**SciPy**
Extends NumPy with advanced scientific algorithms (optimization, signal processing, statistics).

**TensorFlow / PyTorch**
Used for large-scale numerical computation and machine learning, especially with GPUs and automatic differentiation.

**Python Lists**
Suitable for small datasets or heterogeneous data, but inefficient for numerical computation.


**'NumPy' Documentation**

The 'NumPy' documentation is very good and the modules are very widely used!
For this reason I have not given any more examples here. When you start coding more, you must use the resources and documentation to solve your own challenges.
Use the both the documentation and what you have learnt so far in the following exercises.

https://numpy.org/doc/

::: {.callout-exercise}
#### Numpy Exercise
{{< level 1 >}}

1. 

Create the following NumPy arrays:

A 1D array of integers from 0 to 9.

A 2D array of shape (3, 3) filled with zeros.

A 2D array of shape (2, 4) filled with ones.

Hint: Use np.arange() and np.zeros() / np.ones().

2. 

a. Compute the element-wise sum of a and b given the arrays:

```
a = np.array([1, 2, 3, 4])
b = np.array([10, 20, 30, 40])
```

b. Multiply each element of a by 3.

c. Compute the square of each element in b.

3. 

a. Extract the first row given the array:

```
arr = np.array([[1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]])
```

b. Extract the last column.

c. Extract the 2x2 subarray in the bottom-right corner.

4. 

a. Create a random 3x4 array of integers between 0 and 10 (inclusive). Then:

b. Compute the sum of all elements.

c. Compute the mean of each column.

d. Find the maximum element in each row.

:::{.callout-hint}
Use np.random.randint().
:::

5. 

Using NumPy’s built-in functions:

a. Create a 5x5 array with random float values between 0 and 1.

b. Normalize the array so that its values are between 0 and 1 using min-max normalization.

c. Find the determinant of a 3x3 subarray of your choice.


6. 

a. make an array of student scores with three scores per student. save it to a csv

b. Load from the csv. Print the array.

c. Compute the average cost for each catagory and store it in a 1D array called avg.

d. Find the student with the highest average score using Numpy

e. Normalize the array so that each subject (column) has values between 0 and 1.

f. Bonus: Create a boolean mask array indicating which scores are above the average for their subject.

:::

::: {.callout-exercise}
#### Using Numpy in Expense_calculator
{{< level 2 >}}

Modify your expense calculator or your own function to use NumPy to load and process the csv.
:::


## Summary

Numpy is very useful for numerical calculations, that are common in many fields.

<!--
1. Foundations: Why NumPy Exists
Goals
Understand what problems NumPy solves
Learn to think in arrays instead of loops
Topics
Limitations of Python lists for numerical work
What an ndarray is (homogeneous, fixed-type, contiguous memory)
Vectorization vs Python loops
When NumPy should and should not be used
Key ideas
NumPy is about performance and expressiveness
Operations apply to entire arrays at once
2. Creating Arrays
Goals
Learn common ways to create arrays
Understand shape and dimensionality
Topics
Creating arrays from lists and tuples
Common constructors (zeros, ones, arange, linspace)
Data types (dtype)
Shape, size, and number of dimensions
Key ideas
Shape controls how data is interpreted
dtype matters for performance and correctness
3. Indexing, Slicing, and Views
Goals
Access and modify data correctly
Avoid common memory mistakes
Topics
Basic indexing and slicing
Multidimensional indexing
Views vs copies
Modifying arrays in place
Key ideas
Slicing usually returns views, not copies
Changes to views affect the original array
4. Array Operations and Broadcasting
Goals
Replace loops with vectorized operations
Understand broadcasting rules
Topics
Element-wise arithmetic
Comparison and logical operations
Broadcasting mechanics
Shape compatibility rules
Key ideas
Broadcasting is not “magic”; it follows strict rules
Most NumPy code should avoid explicit loops
5. Aggregations and Statistics
Goals
Summarize data efficiently
Topics
Sum, mean, min, max, std
Axis-based operations
Cumulative operations
Handling missing values (NaNs)
Key ideas
The axis argument is critical
Aggregations reduce dimensions
6. Boolean Arrays and Masking
Goals
Filter and conditionally modify data
Topics
Boolean comparisons
Boolean indexing
Combining conditions
Conditional replacement
Key ideas
Boolean masks are arrays themselves
Masking is faster and clearer than loops
7. Reshaping and Manipulating Arrays
Goals
Change how data is structured without copying
Topics
reshape, ravel, flatten
Transpose and swapping axes
Stacking and splitting arrays
Understanding memory layout
Key ideas
Reshaping does not change data, only interpretation
Copies vs views matter for performance
8. Linear Algebra Essentials
Goals
Perform core mathematical operations
Topics
Dot products and matrix multiplication
Transpose and inverses
Solving linear systems
Eigenvalues (conceptual level)
Key ideas
* vs matrix multiplication
NumPy is foundational for ML and scientific computing
9. Random Numbers and Simulation
Goals
Generate reproducible random data
Topics
Random number generators
Common distributions
Seeding for reproducibility
Monte Carlo simulation concepts
Key ideas
Randomness must be controlled in scientific code
NumPy underpins simulation workflows
10. Performance and Best Practices
Goals
Write fast, memory-efficient NumPy code
Topics
Vectorization vs loops
In-place operations
Avoiding unnecessary copies
When to use NumPy vs Python vs libraries like pandas
Key ideas
Performance comes from how you think, not just syntax
Clarity and correctness come before micro-optimizations
11. NumPy in the Ecosystem
Goals
Understand NumPy’s role in Python’s data stack
Topics
Relationship to pandas, SciPy, Matplotlib
NumPy as the foundation for ML libraries
Interoperability with other tools
12. Capstone / Applied Section
Goals
Reinforce learning through real problems
Example projects
Numerical simulation
Image manipulation
Simple data analysis pipeline
Scientific computation example
Key ideas
Think in arrays
Avoid loops
Use the right abstraction
-->