---
title: Python Basics - Writing your ownscript
---

::: {.callout-tip}
#### Learning Objectives

- Learn the basic python syntax
- Build up towards a fully functional python script
:::


## Overview

This page will roughly follow along with the live coding session. The next sections in the course materials are for reference, for you to look back at when you need. In the session, most of the information will be taught to you within the live coding and using the exercises, however in some cases the course materials will have more information which could be useful in certain situations. In particular, there are reference tables for operators, data types and templates for functions.


## Writing a variable

### Assigning variables

In Python initialising variables is easy:

- Variables are assigned using the = sign

- Case sensitive

- No need to declare the type explicitly (dynamic typing)

```
# Initialising my_height in cm 
my_height = 176
my_name = "Kavi"

```
<br>

### Variable Naming Conventions in Python

When naming variables, it's important to follow Python's guidelines for consistency and readability. Here are some key rules to remember:

* **Case-sensitive:** weight and Weight are different variables.

* **Use lowercase:** Separate words with underscores, e.g., weight_kg.

* **Don't start with numbers:** Variable names cannot begin with a digit.

* **Stick to letters:** Use only letters, underscores, and digits (when needed).

* **Be descriptive:** Choose clear, meaningful names (e.g., asdjks is not helpful).

* **Avoid overly long names:** For example 'this_is_my_height_in_cm' is too long.

* **Don't use keywords:** Avoid using Python function names, class names, or data types as variable names.

For more detailed guidelines, refer to PEP 8 or the Google Python Style Guide.

<br>

### Indentation

In python indentation is used to define code blocks. We will see more of this later when we get to conditional statements and loops. 
- Unexpected indents will result in errors.
- indents are 4 spaces according to PEP 8 standards, however commonly also two spaces on web interfaces. Be consistent.
- Using spaces is preferable to using tabs

```
# Initialising my_height in cm 
my_height = 176
 my_name = "Kavi"
 
```
The above would produce an error

## Commenting your codes
Commenting your code, and using lines liberally, are key to making your code easily understandable for both yourself and others.

- A **```#```** (Hash) is used for single line comments 

- A **```"""```** (triple quotes) is used around multiline comments or strings

- A **```\```** (backslash) is used to explicitly break a line

- Lines can be implicitly continued in some cases, for example when in brackets. We will see this later. 

## The Terminal

### What is the terminal?

The terminal is a text-based interface that lets you type commands directly to your computer’s operating system. Instead of clicking buttons or menus, you write commands for opening files, running programs, or installing software.

### The terminal in VS Code

In Visual Studio Code (VS Code), the terminal is built-in. You can open it from the menu (View → Terminal) or by pressing a shortcut (often <kbd>Ctrl</kbd>+<kbd>`</kbd>). It appears at the bottom of the editor and works just like your computer’s command line, but directly inside VS Code.

### Using the terminal to run a script

To run a python script from the terminal use:

```python script_name.py```

* note that you likely do not want to use your system python to run scripts as this is used by the operating system
- You should have installed python in the setup. sometimes it can be python3


### Using the terminal to open the python Console

To open python interactively in the terminal, in the terminal window type: 
```python```
It will offer a prompt:

```
Python 3.9.6 (default, Oct  4 2024, 08:01:31) 
[Clang 16.0.0 (clang-1600.0.26.4)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>> 
```
Here you can type for example:
```
My_name = "Kavi"
print(My_name)
```
What happens if you put "My_name" in quotes?





### Attend our course on unix command line

If you're interested in using the terminal more, for example to navigate file systems and automate tasks - attend the training facilities unix course

## What is it's 

## 


## Summary

::: {.callout-tip}
#### Key Points

- Last section of the page is a bulleted summary of the key points
:::
