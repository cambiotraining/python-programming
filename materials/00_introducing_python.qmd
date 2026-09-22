---
title: Introducing Python
---

::: {.callout-tip}
#### Learning Objectives

- Understand what a programming language is
- Gain a broad introduction to Python  
- Explore the advantages and disadvantages of Python as a programming language
- Examine various examples of Python's common applications and evaluate when to use python
:::

## What is a programming language

A programming language is a formal way of giving instructions to a computer so it can perform specific tasks. Just as people use spoken languages to communicate with each other, programmers use programming languages to communicate with computers, telling them step by step what to do.

At the base of a computer is the physical hardware. The code written in a programming language is translated into machine instructions, which control the hardware’s operations. In this way, abstract commands written by humans can directly influence how the computer’s circuits, processors, and memory behave.

Programming languages work in layers:

High-level code (written by humans) is translated by a compiler or interpreter into low-level machine code (binary instructions). The machine code then directly controls the hardware.

In between, there can be layers like assembly language, operating systems, and libraries, each helping bridge human-friendly instructions down to hardware-level execution.

## Let's test what python can do!

Before discussing python in more detail and trying to write any code, the best way of showing python's capabilities is to show what it can do, by running a script! Have a go at the exercise below, and answer the questions. By the end of this course you will be able understand how this script works and be able to write the equivalent script yourself!


::: {.callout-exercise}
#### Running a Python Script
*To do this exercise, you will need to have followed the setup instructions, including installing VSCode and Python. They can be found in these course materials.*

Open Visual Studio Code. Open the Scripts folder and open "expense_calculator.py". Press the play button (triangle) to run the script.

Q1. What does the script do?

Q2. When looking at the script are there any keywords or symbols that you notice?

Q3. What logic is involved? - Can yu create a flow chart reflecting what is done?

Q4. Now you have seen a small snapshot of what can be done with very basic python - can you think of any scripts you might want to write in Python?


## So what is python?

**High-Level, General-Purpose Language:**

Python is a versatile programming language created in the late 1980s by Guido van Rossum, emphasising code readability and simplicity. This makes it great for beginners!

**Named After:** “Monty Python’s Flying Circus” (not the reptile).

**Key Features:**

1. **Interpreted:** In most implementations Python is usually interpreted - This means it executes code line-by-line (making debugging easier compared to compiled languages) - see below
2. **Object-Oriented Programming (OOP):** Supports the OOP paradigm through classes and objects, enabling structured, reusable, and scalable code for larger projects. - we will see examples of this later, but for now you do not need to worry too much about this.
3. **Very High-Level Language (VHLL):** Allows complex operations to be expressed in simple, single statements.
You can think of programming languages forming layers built atop one another.

**What is a high level language**

At the very low level you have binary machine code (1s and 0s) that the hardware interprets. When you start with python a high level programming language it is very simple to write. It abstracts away lots of things that need to be instructed like how to manage memory etc. This is then converted into a lower representation (e.g. ususally bytecode in the case of python), which is then eventually converted into the final binary machine code. In these conversions, the specifics are added. Lower level coding languages deal with more of the specifics (which if you are very very good can make your code more efficient, but are cumbersome to write code in). That is why most people only write code in high level languages.

Interpreters/compilers sit between to convert one coding language to the lower level. 
Interpreters run line by line, whereas compilers often generally deal with the whole code or whole chunks of code at once. Interpreted languages are therefore usually easier to debug (find out where the faults are). It will usually tell you the line which failed in the error message.

**The syntax is one of the main things that defines a coding language.** 
The syntax refers to the grammar and punctuation of the language. i.e. how the language is structured and written. 
We will learn the basic syntax for python in this course.


## What can python be used for?

As we saw above in the exercise, Python can be used for a whole range of tasks. It is a very common programming language found in a range of fields from web development, data science, machine learning and AI, automation including with microcontrollers, cybersecurity, game development, IoT, and business applications.

**Why is Python a good language to start learning?**

**Simple Syntax and Readability:**

- Python is a high level language and has an easy-to-understand syntax helps you focus on solving problems rather than dealing with complex code, making it accessible for both beginners and experts.

**Large Ecosystem of Libraries:**

Python is very widely used in many fields, therefore it has a large variety of libraries. We will learn more about libraries later - but in essense libraries are collections of pre-written code that youcan easily import in so that you don't have to write the code yourself. The code in a library is all collected with a specific type of task in mind. Some examples are:

- NumPy: For numerical computations and array handling.

- *Pandas: For data manipulation and analysis.

- *Matplotlib & Seaborn: Data visualization tools.

- *Scikit-learn: Machine learning algorithms.

- *TensorFlow & PyTorch: For deep learning and neural networks.

We will demonstrate use of NumPy in this course.

*not covered in this intro course - but other courses available e.g. Python for data analysis, and machine learning

**Active Community and Support:**

- Python has a large supportive community, offering tutorials, open-source contributions, and plenty of resources. We will look at some of the places you can go to for help.

* For a more detailed look at the pros and cons of python as a coding language please see the following materials: 

https://kavihshah.github.io/Intro-to-Python/
Shah, K. H. (2025, January 15). Intro to Python, Part III Systems Biology, University of Cambridge. Zenodo. https://doi.org/10.5281/zenodo.14651795

https://www.netguru.com/blog/python-pros-and-cons
https://www.linode.com/docs/guides/pros-and-cons-of-python/

## Summary

::: {.callout-tip}

#### Key Points

- A coding language is used to instruct computers so they can perform desired tasks
- Python is a beginner friendly codin language, commonly used in data science and other applications
- Python is defined by its syntax (it's grammatical rules)
- Python code is run(interpreted) line by line
- Libraries/packages give pre-written code that performs specific functions
:::


## Exercises

::: {.callout-answer}

Q1. 
Do not worry if you cannot work out exactly what this script does at this stage. 
As you can see, python is a language where simple statements reflect what the code does (high level). This makes it easy to red even with little coding background and an approachable language to start learning coding.

This script is a simple expense tracker that lets users record spending in four categories: food, transport, entertainment, and other. It first tries to load any existing expenses from a CSV file and stores them in a list. Users can then input new expenses, which are validated for category and numeric amount before being added. Finally, all expenses are saved back to the CSV file, overwriting previous contents.

Q2.
Some key words you will notice in the script are:
- try
- except
- for
- if
- else
- break
- while
- in
- pass

- open
- close
- append

These are basic python logical tools/ functions

Some symbols are:
- `=`      
- `==`      
- `>`      
- `-`       
- `.`      
- `,`       
- `:`       
- `[]`      
- `()`      
- `""` / `''` 
- `\n`        
- `#`       

Some of these special symbols are called operators - they provide simple arithmetic like operations
Others reflect the rules of the language - and are grammar.

By the end of this course you will be able to use all these key words and symbols when writing python code

Q3.
A flow chart representing the python expense calculator: 


Q4.
There are many different scripts you may wish to write in python.
Everyday tasks:
- Organising/renaming files
- Checking the weather
- Accounting

Research tasks:
- Data Analysis
- Data visualisation

Some of the reason we write a scripts for something are:
- if it has to be done many times
- If it needs to be reproducible and the flow from inputs to outputs recorded exactly
- There are coding tools that can help with the task

:::
:::
