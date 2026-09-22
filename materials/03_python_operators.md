---
title: Data Types and Operators
---

::: {.callout-tip}
#### Learning Objectives

- Learn about python data types and operators
- Learn when to use different data types

:::



## Python operators

**operators** are symbols or keywords used to perform operations on data and variables, like calculations or comparisons. 
This of mathematical singles like ```+``` 0r ```<```.

Most of the operators in python make sense. Use the cheat sheet table to look them up if you need.

::: {.callout-exercise}
#### Using operators

Use the console to test different operators from the tables. 
Try adjusting the operators in the expenses_calculator.py script and seeing how the behaviour of the script changes.

:::

::: {.callout-warning}
Strings in Python are immutable, meaning they cannot be changed after they are created. When a string is modified—such as through concatenation or other operations—Python creates a new string object instead of altering the original one. Because of this, repeatedly building strings using operations like + in loops can be inefficient in both time and memory, since many intermediate string objects may be created. Python automatically manages memory using a process called garbage collection, which is how it reclaims memory from objects that are no longer needed. More specifically, garbage collection removes objects that are no longer reachable in the program—meaning there are no variable names or references pointing to them anymore, either because they were reassigned or deleted. In most cases, you do not need to manage this process manually. Instead, for efficiently building large strings, it is better to use tools designed for this purpose, such as ''.join() or io.StringIO, which reduce the number of temporary string objects created.
``` 

