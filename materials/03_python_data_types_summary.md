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

| Category       | Type         | Common Use Case                                    | Benefits                                           | Disadvantages                                          |
|----------------|--------------|---------------------------------------------------|---------------------------------------------------|-------------------------------------------------------|
| **None Type**  | NoneType     | Represents absence of value                        | Useful for optional values and placeholders        | Can cause errors if operations expect a value         |
|                |              |                                                   |                                                   |                                                       |
| **Boolean**    | bool         | Represents True or False                           | Simple and efficient for control flow              | Limited to two states (True/False)                    |
|                |              |                                                   |                                                   |                                                       |
| **Text**       | str          | Text representation                                | Immutable, Unicode support- multilingual, rich manipulation methods | Inefficient for heavy modifications                    |
|                |              |                                                   |                                                   |                                                       |
| **Numeric**    | int          | Represents whole numbers                           | No precision issues                                | Limited to integers                                    |
|                | float        | Represents decimal numbers                         | Supports real numbers                              | Precision issues due to storage                        |
|                | complex      | Represents complex numbers                         | Direct support for complex arithmetic               | Rarely needed in general programming                   |
|                |              |                                                   |                                                   |                                                       |
| **Sequence**   | list         | Mutable sequence of items                         | Flexible, dynamic size, rich methods               | Slower resizing operations                             |
|                | tuple        | Immutable sequence of items                       | Memory-efficient, safe                             | Cannot change values once set                          |
|                | range        | Sequence of numbers                               | Memory-efficient                                   | Less flexible than lists                               |
|                |              |                                                   |                                                   |                                                       |
| **Mapping**    | dict         | Key-value pairs                                   | Fast lookups, flexible types                       | Higher memory usage due to hashing                     |
|                |              |                                                   |                                                   |                                                       |
| **Set**        | set          | Unordered collection of unique items              | Fast membership testing;                           | Unordered in the Python specification; no indexing     |
|                | frozenset    | Immutable set                                     | Hashable, can be used as dictionary keys          | Cannot modify after creation                           |
|                |              |                                                   |                                                   |                                                       |
| **Binary**     | bytes        | Immutable binary data                             | Efficient, compact for binary data                 | Not human-readable, cumbersome for some operations     |
|                | bytearray    | Mutable binary data                               | Allows modification of binary data                 | Consumes more memory than bytes                        |
|                | memoryview   | Efficient access to binary data without copying   | No data duplication                                | More complex to use                                    |


**Custom Data types**

- In python it is possible to define custom data types with custom syntax and behaviours. Many of the common desired data types have already been made for you by others.

## Initialising and converting between data types

Different data types have different syntax. You will notice that all inbuilt data types in python have inbuilt functions which can be used to convert to that data type or specify as that data type. 

It is not possible to convert between all data types; some conversions require additional information and input.

Resources about data types can be found in the python documentation: 
https://docs.python.org/3/library/functions.html
https://docs.python.org/3/library/stdtypes.html