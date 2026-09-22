---
title: Data Types and Operators
---

::: {.callout-tip}
#### Learning Objectives

- Learn about python data types
- Learn when to use different data types

:::

## Introducing python Data types

In programming, **data types** define the kind of data a variable can hold, such as numbers, text, or more complex structures, and they determine what operations can be performed on that data. 

In **Python**, common data types include `int` for integers, `float` for decimal numbers, `str` for strings of text, `bool` for true/false values, `list` for ordered collections, `tuple` for immutable collections, `set` for unique items, and `dict` for key-value pairs. 

Using data types in Python is straightforward: you assign a value to a variable, and Python automatically recognizes the type. 

For example, `x = 10` creates an integer, whereas `x = 10.3` creates a float.
A float in a decimal placed number and is stored in python in a 64 bit format.

For an overview of data types use the **cheat sheet**.

::: {.callout-note}

To check the data type of a python object use the ```type()``` function.

```{python}

x = 10
print(type(x))

```
:::


## Primitive Data Types

Primitive data types contain single values e.g. numbers and words.

### Numerical data types

Python has three numerical data types:
- integers: whole numbers `int`
- floats: decimal placed numbers which are also known as floating point numbers `float`
- complex numbers: python has direct support for complex numbers (*a + bi*). These are not used often by most python users and will not be discussed further in this course.

### Words and text

Sequences of letters like words are called strings and require quotation marks around them:

```name = "Alice"``` creates a string. 

Strings can be single words or paragraphs.

### Boolean: true or false

The boolean data types use the key words ```True``` and ```False```

### The placeholder

```None``` can also be used as a placeholder for a variable has no meaningful value yet.

## The importance of data types

Python makes working with data types easier than many other programming languages. When you create a variable, Python automatically decides what type of data it is based on the value you give it. In most cases, the correct data type is a straightforward choice. For example, when indexing a table or referring to whole number counts integers are used, whereas measurements often require decimal places and so floats are used.

That said, Python’s data types each have their own rules and behaviors. As you’ll see in the following exercises, understanding these differences is important for writing correct programs, doing calculations, and working with data effectively. It’s also helpful to know that data types can behave differently in other languages—for example, in how numbers are rounded.

## Immutable versus mutable data types

In Python, data types can be either **mutable** or **immutable**, which refers to whether their values can be changed after they are created.

Most python primitive data types, such as integers, floats, booleans, and strings, are **immutable**, meaning their values cannot be changed after they are created. If you appear to modify one of these values, Python actually creates a new object instead with the same variable name. This makes primitive types simple and predictable to work with, especially for beginners. 

In contrast, composite data types (like lists, tuples, sets, and dictionaries) can be either **mutable** or **immutable**. Two types that are **mutable**, and so can be changed after they are created are lists and dictionaries. We will look at composite data types in more detail in the next section.

::: {.callout-note}

To demonstrate that the primitive data types are immutable you ca change their value and use the id() function to check where they are located in memory.

```{python}

x = 10
print("Initial value:", x)
print("Initial memory location:", id(x))

# "Modify" the integer
x = 15

print("New value:", x)
print("New memory location:", id(x))

```
:::


## Composite Data Types - The exciting stuff!

Composite data types are where things start to become more interesting and form the foundation for more complex programming.

In Python, composite data types allow you to store multiple values within a single variable. These values are grouped together as a collection, and they can even be of different data types. The main composite data types in Python are:

**Lists**

- **Definition**: Ordered, mutable collections that allow duplicate items.

- **Syntax**: Defined using square brackets `[]`.

**Tuples**

- **Definition**: Ordered, immutable collections that can also contain duplicates.

- **Syntax**: Defined using parentheses `()`.

**Dictionaries**

- **Definition**: Unordered collections of key-value pairs, where each key is unique and must be immutable.

- **Syntax**: Defined using curly braces `{}` and using a colon `:` to separate keys from values.

**Sets**

- **Definition**: Unordered collections of unique items.

- **Syntax**: Defined using curly braces `{}` or the `set()` function.

**Example Initialization and Differences:**

Let's initialize one of each composite data type with a list of 10 animals, and then demonstrate some of the main differences.

```python
# Initialize a list of animals
animal_list = ["Dog", "Cat", "Elephant", "Lion", "Tiger", "Giraffe", "Zebra", "Monkey", "Snake", "Rabbit"]

# Initialize a tuple of animals
animal_tuple = ("Dog", "Cat", "Elephant", "Lion", "Tiger", "Giraffe", "Zebra", "Monkey", "Snake", "Rabbit")

# Initialize a dictionary of animals with their classifications
animal_dict = {
    "Dog": "Mammal",
    "Cat": "Mammal",
    "Elephant": "Mammal",
    "Lion": "Mammal",
    "Tiger": "Mammal",
    "Giraffe": "Mammal",
    "Zebra": "Mammal",
    "Monkey": "Mammal",
    "Snake": "Reptile",
    "Rabbit": "Mammal"
}

# Initialize a set of animals
animal_set = {"Dog", "Cat", "Elephant", "Lion", "Tiger", "Giraffe", "Zebra", "Monkey", "Bear", "Rabbit"}

# Show differences between data types
print("Original List:", animal_list)
print("Original Tuple:", animal_tuple)
print("Original Dictionary:", animal_dict)
print("Original Set:", animal_set)

# Mutability Demonstration
# Modifying the list (mutable)
animal_list[0] = "Wolf"  # Change "Dog" to "Wolf"
print("Modified List:", animal_list)

# Attempting to modify the tuple (immutable)
animal_tuple[0] = "Wolf"  
# This will raise an error

# Adding a new key-value pair to the dictionary (mutable)
animal_dict["Fox"] = "Mammal"
print("Modified Dictionary:", animal_dict)

# Attempting to add a duplicate to the set (will be ignored)
animal_set.add("Dog")  # This will not change the set
print("Modified Set (after trying to add 'Dog'):", animal_set)
```

Remember the key differences - use the summary cheat sheet if you need help

**Mutability** - which data types are mutable?

**Order** - which are ordered?

**Duplicates** - which allow duplicates?


## Working with Lists in Python

Lists in Python are versatile and support various operations that allow you to manipulate and interact with the data they contain. Below are some common operations you can perform on lists.

**Accessing Elements**

You can access list elements using indexing (zero-based).

`first_element = my_list[0]  # 1`  
`last_element = my_list[-1]   # 5`

**Slicing a List**

You can retrieve a portion of a list using slicing.

`sub_list = my_list[1:4]  # [2, 3, 4]`

**Adding Elements**

Append: Add an element to the end of the list.

`my_list.append(6)  # [1, 2, 3, 4, 5, 6]`

Insert: Insert an element at a specific index.

`my_list.insert(2, 2.5)  # [1, 2, 2.5, 3, 4, 5, 6]`

**Removing Elements**

Remove: Remove the first occurrence of a specified value.

`my_list.remove(2.5)  # [1, 2, 3, 4, 5, 6]`

Pop: Remove and return an element at a specified index (default is the last element).

`last_item = my_list.pop()  # list is now [1, 2, 3, 4, 5]`

**Modifying Elements**

You can change the value of an element using its index.

`my_list[1] = 20  # [1, 20, 3, 4, 5]`

**Extending a List**

You can add multiple elements to the end of the list using `extend()`.

`my_list.extend([6, 7, 8])  # [1, 20, 3, 4, 5, 6, 7, 8]`


**Sorting a List**

Sort the list in ascending order.

`my_list.sort()  # [1, 3, 4, 5, 6, 7, 8, 20]`

**Reversing a List**

You can reverse the order of elements in a list.

`my_list.reverse()  # [20, 8, 7, 6, 5, 4, 3, 1]`

**Finding the Length**

Get the number of elements in the list.

`length = len(my_list)  # 8`

**Numeric operations e.g. Append multiple repeats**

`my_list * 2  # [20, 8, 7, 6, 5, 4, 3, 1, 20, 8, 7, 6, 5, 4, 3, 1]`


## Converting between data types

All built-in data types in Python have associated built-in functions that allow you to convert values from one data type to another or explicitly create an object of that type. Examples of converting between data types are presented below.

It is not possible to convert between all data types; some conversions require additional information and input.

Resources about data types can be found in the python documentation: 
https://docs.python.org/3/library/functions.html
https://docs.python.org/3/library/stdtypes.html
 
Examples of converting between data types: 



**1. Converting int to float**
```
x = 5  # integer
y = float(x)  # converting to float
print(y)  
```
Output: 
```
5.0
```

**2. Converting float to int**
```
x = 3.23  # float
y = int(x)  # converting to int
print(b)
``` 
Output: 
```
3
```

**3. Converting int to str**
```
x = 10  # integer
y = str(x)  # converting to string
print(y)
```
Output: 
```
'10'
```

**4. Converting str to int**
```
x = "123"  # string
y = int(x)  # converting to int
print(y)
```
Output: 
```
123
```

**5. Converting str to float**
```
x = "45.67"  # string
y = float(x)  # converting to float
print(x)  
```
Output: 
```
45.67
```

**6. Converting list to tuple**
```
my_list = [1, 2, 3]  # list
my_tuple = tuple(my_list)  # converting to tuple
print(my_tuple)
```
Output: 
```
(1, 2, 3)
```

**7. Converting tuple to list**
```
my_tuple2 = (4, 5, 6)  # tuple
my_list2 = list(my_tuple2)  # converting to list
print(my_list2)  
```
Output: 
```
[4, 5, 6]
```

**8. Converting int to bool**
```
num_bool = 0  # integer
bool_value = bool(num_bool)  # converting to boolean
print(bool_value)  
```
Output: 
```
False
```


## Exercises


::: {.callout-exercise}
#### Primitive data types

What are the different primitive data types in expenses_calculator.py
Why were they chosen?
Are there any other data types you recognise?

<!--
::: {.callout-answer}
1. 
Strings (str)

Examples: "food", "expenses.csv", "done".

Why they were chosen: Strings are used for any textual data. In your script, they handle category names, filenames, and user input. Since Python treats strings as sequences of characters, they are perfect for labels and messages.

Floats (float)

Examples: 100.0, amount = float(parts[1]).

Why they were chosen: Floats represent real numbers with decimal points. In a financial calculator, you need precision for cents (e.g., 10.50). If you used integers, you wouldn't be able to track partial currency units.

Booleans (bool)

Examples: True (in while True:), and the result of category == "done".

Why they were chosen: Booleans represent truth values. They are the backbone of your script's logic, controlling the loop and the if/else validation checks.

2. 

Dictionaries (dict) and Lists (list)
:::
-->

:::


::: {.callout-exercise}
#### Composite data types

What are the composite data types in the expense_calculator.py script?

Why are these data types used?

Can you try using a set to identify expense type - what is the advantage/disadvantage?

<!--
::: {.callout-answer}
1, 2. 
Dictionaries (dict)

Example: thresholds = {"food": 100.0, ...}

Why it's used: Dictionaries allow for key-value mapping. In your script, the category name is the "key" and the budget limit is the "value." This is chosen because it allows for quick lookup. Instead of searching through a list to find the limit for "food," Python jumps straight to it.

Lists (list)

Example: expenses = [] and [category, amount]

Why it's used: Lists are ordered and mutable. You use a list of lists (a nested structure) to keep a running history of transactions. Since you don't know how many expenses a user will enter, the list’s ability to grow dynamically is essential.

2. Using a set to Identify Expense Types
A set is an unordered collection of unique elements. The script could define valid categories using a set like this:

valid_categories = {"food", "transport", "entertainment", "other"}

Yes, you could use a set to identify the expense type.
This is fast - faster than a list. You cannot store duplicate values in a set. This is not an issue and instead beneficial for category types.

Unlike the dictionary used for thresholds, a set cannot hold an associated value. It can store the word "food," but it cannot link it to the numerical value 100.0.
The Verdict:
While the script could incorporate a set to validate category names, the Dictionary (thresholds) remains the most effective choice. It functions similarly to a set by allowing for fast membership checks of category names (the keys), but it provides the added necessity of storing the specific budget limits (the values) required for the script's calculations.
:::
-->

:::

::: {.callout-exercise}
#### Which Data type to use
{{< level 1 >}}

State the best data type to use in Python:

1. You want to store a sequence of names that may change (e.g., adding or removing names).

2. You need to check if certain items (e.g., unique user IDs) exist in a collection and don't care about the order.

3. You need to store an unchanging sequence of geographic coordinates (latitude, longitude).

4. You are counting the number of items in stock in an inventory system (whole numbers only).

5. You are dealing with financial calculations and need decimal values for prices and quantities.

6. You need to store data about a person (e.g., name, age, occupation) and retrieve the data by key.

7. You are processing binary data from an image file and need to modify the data.

8. You want to represent a logical condition (True or False) to check user login status.

9. You want to ensure a set of elements stays constant and cannot be modified after creation.

10. A function you are writing returns nothing (i.e., no meaningful value to return).

11. You need to handle a collection of scientific data points with floating-point precision (e.g. temperature readings).

12. You are working with text that may need to be split, joined, or manipulated.

<!--
::: {.callout-answer}
1. list — Ordered and mutable collection of names.
2. set — For fast membership tests with unique elements, order is irrelevant.
3. tuple — Immutable sequence, perfect for storing fixed data like geographic coordinates.
4. int — Used for counting and working with whole numbers.
5. float — If precision is required, consider decimal.Decimal, but float for most cases.
6. dict — For key-value pairs (e.g., storing data about a person).
7. bytearray — Mutable sequence of bytes, useful for modifying binary data.
8. bool — Represents binary conditions (True or False).
9. frozenset — Immutable version of a set.
10. None — Represents the absence of a value, useful for functions that don’t return anything.
11. float — Floating-point numbers are used for measurements and continuous values.
12. str — For handling textual data with built-in manipulation methods.

Which data type you use effects memory useage and speed of computations which may be important in larger programs.
For further reading you can investigate why sets are generally faster to find unordered elements (membership tests) than lists or tuples
:::
-->
:::


## Summary

::: {.callout-tip}
#### Key Points

- Variables are words used to reference and access a value
- Be clear an concise following guidelines when naming variables
- Comment your code for clarity

:::

<!--

Notes to change - more very basic exercisees on primitive data types - exercise to add subtract etc....
--->
