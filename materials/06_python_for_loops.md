---
title: Python for Loops
---

::: {.callout-tip}
#### Learning Objectives

- Learn what a for loop is
- Learn the syntax for a for loop
- Learn the common functions used with for loops

:::

## `for` Loops in Python

`for` loops iterate over a sequence (list, tuple, string, dictionary, set, or range) and perform processes. The syntax of a `for` loop is simple but must be carefully followed, especially with respect to the colon (`:`) and indentation.

**Syntax**

- The `for` keyword is followed by a variable name (e.g., `item`) that will take on the value of each element in the sequence.  
- The sequence can be a list, tuple, string, or any iterable object.  
- The colon (`:`) indicates the start of the loop block.  
- The indented lines that follow the colon are the code that will be executed.


```
for item in sequence:
    print(x) # Code block to execute
```
Example:

```
animals = ["dog", "cat", "rabbit", "elephant", "tiger"]

for animal in animals:
    print(f'I have a {animal}.')
```
Output
```
I have a dog.
I have a cat.
I have a rabbit.
I have an elephant.
I have a tiger.
```

## Using `len()` and `range()` in `for` loops

In Python, `len()` and `range()` are often used with for loops to control iterations and access elements by their index.

**Using `len()`**

The `len()` function returns the number of items in an iterable (like a list, tuple, or string). This is useful when you need to loop through each element of a sequence without manually specifying the length.

**Using `range`**

The range() function generates a sequence of numbers, which can be useful for iterating over a sequence with a specified start and end. The syntax is range(start, stop[, step])

```
# Loop through the first five integers
for num in range(5):
    print(num)

```

**Examples:**

```
animals = ["dog", "cat", "rabbit", "elephant"]

for i in range(len(animals)):            # only 1 value - stop
    print(f"Animal at index {i}: {animals[i]}")

for i in range(0,len(animals),2):        #start, stop, step
    print(f"Animal at index {i}: {animals[i]}")


```

## Using `enumerate()` in `for` Loops

The `enumerate()` function in Python adds a counter to an iterable and returns it as an `enumerate` object. This is particularly useful when you want to loop through a sequence and keep track of the index of each item without using `range()`.

**Syntax**

The syntax of `enumerate()` is as follows:

```python
enumerate(iterable, start=0)
```
- iterable: The sequence (like a list, tuple, or string) you want to iterate over.
- start: The starting index (default is 0).

**Example of `enumerate()`**
Here's a simple example demonstrating how to use enumerate() with a list of animals:

```
animals = ["dog", "cat", "rabbit", "elephant"]

for index, animal in enumerate(animals):
    print(f"Animal {index}: {animal}")
```
output:
```
Animal 0: dog
Animal 1: cat
Animal 2: rabbit
Animal 3: elephant
```
**Benefits of Using `enumerate()`**

- **Clarity:** It makes the code cleaner and more readable by eliminating the need to manually manage the index.
- **Convenience:** Automatically handles the index tracking for you, reducing the risk of errors.

::: {.callout-exercise}
#### Modify the expense calculator
{{< level 2 >}}

Using conditional statements, for loops and the functions we have seen, 
Modify the expense calculator to also allow the input of a dictionary rather than a file.
Write code such that the calculator correctly loops through the dictionary to correctly load in pre-existing expenses and test your script.

Look at eachothers code - how might it be improved?

:::

::: {.callout-exercise}
#### Make your own `for` loop
{{< level 2 >}}

Exercise:  Make your on loop which iterates through a task of your own choosing - it needs to use enumerate.
Use your impagination to come up with scenarios.

Write code to deal with edge cases that might appear.
:::

## Extra: List Comprehensions

List comprehensions in python enable you to write shorter and sometimes faster code than standard loops. The syntax is:

[expression for item in iterable if condition]

Similar tools occur for dictionaries (Dictionary comprehension)

::: {.callout-exercise}
#### Use list Comprehensions
{{< level 1 >}}

print the animals list in upper case using list comprehensions


::: {.callout-answer}

Answer:
```
animals = ["dog", "cat", "rabbit", "elephant"]
print([animal.upper() for animal in animals])
```
output:
```
['DOG', 'CAT', 'RABBIT', 'ELEPHANT']
```

:::
:::

## Summary

::: {.callout-tip}
#### Key Points

- for loops can be used to repeatedly use the same logic in scripts
- conditionls can easily be embedded within for loops

:::
