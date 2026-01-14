---
title: Summary - Python Data Types
---

## Inbuilt Data Types

In programming, data type is an important concept. Variables can store data of different types, and different types can do different things.

Python has the following data types built-in without needing any other libraries:

**Simple/primitive data types:**

- None Type:    `NoneType`

- Boolean Type:    `bool`

- Text Type:    `str`

- Numeric Types:    `int`, `float`, `complex`

- Binary Types:    `bytes`

<br>

**Composite Datatypes / data structures**

- Sequence Types:    `list`, `tuple`, `range`

- Set Types:    `set`, `frozenset`

- Mapping Type:    `dict`

- Binary composite type: `bytearray`, `memoryview`

<br>

**We will also look at the numpy arrays and pandas dataframes, you can also use the decimal module for correctly rounded arithmetic**

<br>

In Python, each data type has specific use cases and trade-offs. Let's look at each category and examine when it might be used, along with its benefits and disadvantages:

| Category       | Type         | Common Use Case                                    | Benefits                                           | Disadvantages                                          | Syntax |
|----------------|--------------|---------------------------------------------------|---------------------------------------------------|-------------------------------------------------------|--------|
| **None Type**  | NoneType     | Represents absence of value                        | Useful for optional values and placeholders        | Can cause errors if operations expect a value         | `None` |
|                |              |                                                   |                                                   |                                                       |        |
| **Boolean**    | bool         | Represents True or False                           | Simple and efficient for control flow              | Limited to two states (True/False)                    | `True`, `False` |
|                |              |                                                   |                                                   |                                                       |        |
| **Text**       | str          | Text representation                                | Immutable, Unicode support, rich manipulation methods | Inefficient for heavy modifications                    | `"Hello"`, `'World'` |
|                |              |                                                   |                                                   |                                                       |        |
| **Numeric**    | int          | Represents whole numbers                           | No precision issues                                | Limited to integers                                    | `42`, `-7` |
|                | float        | Represents decimal numbers                         | Supports real numbers                              | Precision issues due to storage                        | `3.14`, `-0.5` |
|                | complex      | Represents complex numbers                         | Direct support for complex arithmetic             | Rarely needed in general programming                   | `2+3j` |
|                |              |                                                   |                                                   |                                                       |        |
| **Sequence**   | list         | Mutable sequence of items                          | Flexible, dynamic size, rich methods              | Slower resizing operations                             | `[1, 2, 3]` |
|                | tuple        | Immutable sequence of items                        | Memory-efficient, safe                             | Cannot change values once set                          | `(1, 2, 3)` |
|                | range        | Sequence of numbers                                | Memory-efficient                                   | Less flexible than lists                               | `range(5)` |
|                |              |                                                   |                                                   |                                                       |        |
| **Mapping**    | dict         | Key-value pairs                                   | Fast lookups, flexible types                       | Higher memory usage due to hashing                     | `{"a": 1, "b": 2}` |
|                |              |                                                   |                                                   |                                                       |        |
| **Set**        | set          | Unordered collection of unique items              | Fast membership testing                             | Unordered in Python; no indexing                       | `{1, 2, 3}` |
|                | frozenset    | Immutable set                                     | Hashable, can be used as dictionary keys          | Cannot modify after creation                           | `frozenset([1, 2, 3])` |
|                |              |                                                   |                                                   |                                                       |        |
| **Binary**     | bytes        | Immutable binary data                             | Efficient, compact for binary data                 | Not human-readable, cumbersome for some operations     | `b"hello"` |
|                | bytearray    | Mutable binary data                               | Allows modification of binary data                 | Consumes more memory than bytes                        | `bytearray([1, 2, 3])` |
|                | memoryview   | Efficient access to binary data without copying   | No data duplication                                | More complex to use                                    | `memoryview(b"data")` |


**Custom Data types**

- In python it is possible to define custom data types with custom syntax and behaviours. Many of the common desired data types have already been made for you by others.

## Initialising and converting between data types

Different data types have different syntax. You will notice that all inbuilt data types in python have inbuilt functions which can be used to convert to that data type or specify as that data type. 

It is not possible to convert between all data types; some conversions require additional information and input.

Resources about data types can be found in the python documentation: 
https://docs.python.org/3/library/functions.html
https://docs.python.org/3/library/stdtypes.html

## Data type Characteristics

**Mutability**

- **Primitive Data Types**: Immutable - new items are created if the value changes

- **Lists**: Mutable - items can be changed or updated.

- **Tuples**: Immutable - once defined, items cannot be changed.

- **Dictionaries**: Mutable - keys and values can be added or updated.

- **Sets**: Mutable - can add or remove items, but cannot contain duplicates.

**Order**

- **Lists** and **Tuples**: Ordered collections (the order of elements matters).

- **Dictionaries**: Maintains insertion order as of Python 3.7.

- **Sets**: Unordered - no guaranteed order of elements

**Duplicates**

- **Lists** and **Tuples**: Allow duplicates.

- **Dictionaries**: Keys must be unique, but values can be duplicated.

- **Sets**: Do not allow duplicates.