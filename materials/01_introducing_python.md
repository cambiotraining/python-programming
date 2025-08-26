---
title: Introducing Python
---

::: {.callout-tip}
#### Learning Objectives

- Understand what a programming language is
- Gain a broad introduction to Python  
- Explore the advantages and disadvantages of Python as a programming language for data science  
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
Open Visual Studio Code. Open the Scripts folder and open "expense_calculator.py". Press the play button (triangle) to run the script

Q1. What does the script do?

Q2. When looking at the script are there any keywords or symbols that you notice?

Q3. What logic is involved?

Q4. Now you have seen a small snapshot of what can be done with very basic python - can you think of any scripts you might want to write in Python?

::: {.callout-answer}

:::
:::


## So what is python?

**High-Level, General-Purpose Language:**

Python is a versatile programming language created in the late 1980s by Guido van Rossum, emphasising code readability and simplicity.

**Named After:** “Monty Python’s Flying Circus” (not the reptile).

**Key Features:**

1. **Interpreted:** In most implementations Python is usually interpreted - Executes code line-by-line (making debugging easier compared to compiled languages) - see below
2. **Object-Oriented Programming (OOP):** Supports the OOP paradigm through classes and objects, enabling structured, reusable, and scalable code for larger projects. - we will have an introduction to this later on in the course
3. **Very High-Level Language (VHLL):** Allows complex operations to be expressed in simple, single statements.
You can think of programming languages forming layers built atop one another.

**What is a high level language**

At the very low level you have binary machine code that the hardware interprets. When you start with python a high level programming language it is very simple to write. It abstracts away lots of things that need to be instructed like how to manage memory etc. This is then converted into a lower representation (e.g. ususally bytecode in the case of python), which is then eventually converted into the final binary machine code. In these conversions, the specifics are added. Lower level coding languages deal with more of the specifics (which if you are very very good can make your code more efficient, but are cumbersome to write code in). That is why most people only write code in high level languages.

Interpreters/compilers sit between to convert one coding language to the lower level. 
Interpreters run line by line, whereas compilers often deal with the whole code at once or in a different way (JIT).

**The syntax is one of the main things that defines a coding language.** 
The syntax refers to the grammar and punctuation of the language. i.e. how the language is structured and written. The same High level language can often be compiled or interpreted in multiple different ways to lower level languages/representations and ultimately machine code.

CPython is the most widely used implementation of Python. It is itself written in the C coding language and turns python into lower level code, which ultimately gets converted to machine code.


## What can python be used for?

Python can is very widely used for a whole range of tasks from web development, data science, machine learning and AI, automation including with microcontrollers, cybersecurity, game development, IoT, and business applications.

**Why is Python a good language to start learning?**

**Simple Syntax and Readability:**

- Python is a high level language and has an easy-to-understand syntax helps you focus on solving problems rather than dealing with complex code, making it accessible for both beginners and experts.

**Large Ecosystem of Libraries:**

Python is very widely used in many fields, therefore it has a large variety of libraries. We will learn more about libraries later - but in essense libraries are collections of pre-written code that youcan easily import in so that you don't have to write the code yourself. The code in a library is all collected with a specific type of task. Some examples are:

- NumPy: For numerical computations and array handling.

- *Pandas: For data manipulation and analysis.

- *Matplotlib & Seaborn: Data visualization tools.

- *Scikit-learn: Machine learning algorithms.

- *TensorFlow & PyTorch: For deep learning and neural networks.

We will demonstrate use of NumPy in this course.

*not covered in this intro course - but other courses available e.g. Python for data analysis, and machine learning

**Active Community and Support:**

- Python has a large supportive community, offering tutorials, open-source contributions, and plenty of resources.

* For a more detailed look at the pros and cons of python as a coding language please see the following materials: 

https://kavihshah.github.io/Intro-to-Python/
Shah, K. H. (2025, January 15). Intro to Python, Part III Systems Biology, University of Cambridge. Zenodo. https://doi.org/10.5281/zenodo.14651795

https://www.netguru.com/blog/python-pros-and-cons
https://www.linode.com/docs/guides/pros-and-cons-of-python/

## Summary

::: {.callout-tip}

#### Key Points

- Last section of the page is a bulleted summary of the key points
:::
