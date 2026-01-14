---
title: Python Functions
---

::: {.callout-tip}
#### Learning Objectives

- Learn wha a finction is
- Learn about pythons core functions and how to use them
- Learn the syntax and be able to write basic python functions

:::


## Functions in Python

Functions in Python are blocks of reusable code designed to perform a specific task. They help organise code, promote reusability, and make programs more readable.
Functions just like in maths can take inputs and return outputs

Python ships with many in built functions. See: https://docs.python.org/3/library/functions.html

As we have seen already to call a function, simply use the function name followed by parentheses. If the function takes parameters, provide the arguments inside the parentheses.
- functions may take arguments in an order separated by a comma: 
```
function(a, b) 
```

- alternatively functions may use assignment for inputs:
```
function(a, type = b)
```

- variable inputs into functions can defined globally
```
b = number
function(a, type = b)
```
- Functions can have default inputs if none specified (we will see this when defining functions)


- functions can be nested although this can make code less readable
```
function_two(function_one(a))
```
::: {.callout-exercise}
#### Function
{{< level 1 >}}

1. List some of the functions used so far and in the ```expenses_calculator.py```script. What do they do?

:::

## Using the type() function

As mentioned python uses dynamic typing. The type() function can output the datatype assigned to a variable

::: {.callout-exercise}
#### Find the data type
{{< level 1 >}}

What is the data type of the **message** variable? Print it to Standard output

::: {.callout-answer}
```
print(type(message))
```
output:
```
<class 'str'>
```
It is a string
:::
:::


## Defining your own Functions in Python

**Syntax for defining a Function**

The basic syntax for defining a function in Python is:

```python
def function_name(parameters):
    """Docstring explaining the function"""
    # Function body
    value = 1
    return value
```
- **`def`**: This keyword is used to define a function.
- **`function_name`**: The name you choose for the function.
- **`parameters`**: Optional. Values that the function accepts as inputs. If there are multiple, they are separated by commas.
- **`return`**: Optional. The function can return a value using the `return` statement.

**Example 1: Function with No Parameters**

```
def welcome():
    print("Hello, World!")
```

**Example 2: Function with Parameters**

```
def welcome_person(name):
    print(f"Hello, {name}!")
This function accepts a single parameter, name.
```
It uses that parameter to personalize the greeting.
Calling the function:

```
welcome_person("Kavi")
```
Output:

```
Hello, Kavi!
```

**Example 3: Function with Multiple Parameters and a Return Value**

```
def add_numbers(a, b):
    return a + b
```
This function takes two parameters, a and b.
It returns the sum of the two numbers.
Calling the function:

```
result = add_numbers(5, 10)
print(result)
```
Output:

```
15
```

**Example 4: Function with Default Parameters**

You can set default values for parameters so that a function can be called with fewer arguments than defined.

```
def welcome_person(name="Guest"):
    print(f"Hello {name}, nice to meet you!")

```
Calling the function with and without the parameter:

```
welcome_person("Tom")  # Uses the provided argument
welcome_person()         # Uses the default value

```

output

```
Hello Tom, nice to meet you!
Hello Guest, nice to meet you!
```

**Example 5: Function with Multiple Outputs**

A function can return more than one value using tuples or other data structures.

```
def calculate(a, b):
    sum_val = a + b
    product_val = a * b
    return sum_val, product_val
```

Calling the function and unpacking values:

```
sum_1, product_1 = calculate(3, 4)
print(sum_1, product_1)
```
Output:
```
7 12
```
<br>

**Functions Summary**

Functions in Python are defined using the def keyword.
Inputs (parameters) can be passed into functions, and outputs can be returned using the return statement.
Functions can have default parameters, accept multiple arguments, and return multiple values.



::: {.callout-exercise}
#### Writing Functions Exercise
Can you remove some of the code in the expense_calculator script into new functions that are used later in the script?
Are there any other functions you might want to write and use in the script?

:::

::: {.callout-exercise}
#### Discussion
{{< level 2 >}}

What have I not added in many of these examples above, that I should have?

Try and run the `help()` function on a built in python function. What is returned. e.g. help(print)
How do you return similar for your own functions?

::: {.callout-answer}

Docstring comments. While this may not be super important here, when you start using your own written functions as modules they are important!

:::
:::


## Summary

::: {.callout-tip}
#### Key Points

- Python has many functions that can be used
- you can write your own functions using the set syntax
:::
