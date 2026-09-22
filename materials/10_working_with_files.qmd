---
title: Working with Files in Python
---

::: {.callout-tip}
#### Learning Objectives

- Be able to read and write files in Python
- Understand how to use the `with` method and a context manager to work with files

:::

## Introduction

Working with files is essential in coding because it allows programs to store, read, and process data beyond a single run of the program. Files make it possible to handle real-world data such as user input, logs, and datasets, enabling programs to be more useful, persistent, and scalable. Imagine if you could not store information with files?

## Working Directory

A **working directory** is the directory within the file system where your program will use as a default to look for and read files or output files. It easier than always defining absolute file paths and can allow code to be transferred.

When running python scripts from the console, the working directory is the one where you launched the script from. 

The os module is a library - a collection of functions - that can be used to work with files. It is a standard python library - so you do not need to install anything extra to use it, however, you need to import it to allow your current script to access the functions. 

The **`os`** module can be used to check the working directory and change it. 

Get working Directory:

```
import os
print(os.getcwd())  #current working directory
```

Change working Directory:

```
os.chdir('/path/to/directory')
```

Like in this course setup, it is recommended to have scripts and data in the same directory, or a subdirectory of the project directory. My common setup might be:

```
/home/user/project/
    ├── data/
    │   └── dataset.csv
    ├── scripts/
    |   └── analysis.py
    ├── logs/
    │   └── error-log.log
    │   └── output-log.log
    └── output/
        └── output.csv
```

## Opening and closing files in python

You can open files in different modes using the `open()` function. The common modes include:

- `'r'`: Read (default)
- `'w'`: Write (overwrites the file if it exists)
- `'a'`: Append (adds content to the end of the file)
- `'b'`: Binary mode (for non-text files)
- `'x'`: Exclusive creation (fails if the file already exists)

Example:

```
# Open the file in read mode
file = open('my_notes.txt', 'r')

# Read the contents of the file into a string
my_notes = file.read()

# Close the file
file.close()

# The my_notes variable now holds the content of my_notes.txt
print(my_notes)  # This will display the content of the file

```

`file.readlines()` will return a list with each line:

```
file = open('dna_sequences.txt', 'r')
dna_sequences = file.readlines()
file.close()
```

**Using `for` loops to iterate line by line:**

```
file = open('dna_sequences.txt', 'r')
for line in file:
    # Strip trailing whitespace or newline characters from the end of each line
    dna_sequence = line.strip()
    print(dna_sequence)  # Process or print the current line
file.close()
```
This method is memory-efficient, especially for large files, since it doesn't load the entire file into memory at once.

Consider the problems with working with files this way:

::: {.callout-exercise}
#### Discussion: Exceptions after `open()`
{{< level 2 >}}

If an exception occurs after `open()` what will happen? What have you already learnt as a method to stop this?

::: {.callout-answer}

The file will never close properly - you could use `try` ,`except` , `finally`. The `with` statement presented in the next section is a better way to deal with this.

:::
:::


## Using `with` when working with files:

Using the `with` statement is a better way to work with files in Python as it ensures that files are properly opened and closed. 

Example:

```
with open('dna_sequence.txt', 'r') as file:
    for line in file:
        # Strip the newline character from each line and print it
        dna_sequence = line.strip()
        print(dna_sequence)

```

Note it uses the same kind of syntax as for loops and conditionals


`with` does this by working with a context manager. The open() function returns a fileobject which has the `.__enter___()` and `.__exit__()` methods. You can read more about this in your own time.  


## Writing to a file

The same methods are used to write to a file:

**Write to a new file or replace an existing file**

Writing to a new file or overwriting an existing file is simple:
```
with open('names.txt', 'w') as file:
    file.write("John\n")
    file.write("Martin\n")

```
`file.writelines():` Takes an iterable (like a list) and writes each item to the file. You can also use `for` loops.

- the `\n` is needed when manually adding lines.

**Appending to an existing file**

This is exactly the same however you need to replace `'w'` with `'a'` for append mode. 

**binary files** 
Use the `'wb'` for writing binaries for example.


::: {.callout-exercise}
#### Reading and writing files
{{< level 2 >}}

Use the above in python to first write to a file your expenses in the correct format that our expense_calculator expects it. Then read and append to the file some more expenses.
Finally test your file with the expense_calculator script.

:::


## Moving files

The `shutil` module can be used to move files in python.

```
import shutil
import os

# Define paths
source_file = 'source_folder/file.txt' 
destination_file = 'destination_folder/file.txt' 

# Create the destination folder if it doesn't exist
os.makedirs(os.path.dirname(destination_file), exist_ok=True)

# Move the file
shutil.move(source_file, destination_file)


```

The same can be used to move directories. If the main task is moving files arount - I would generally avoid using python to move around files, if you can use a bash script instead.
Generally python scripts will open, read and create files during for example data analysis.
*Attend the training facilities unix course to learn more* 

## Summary

It is important to be able to manipulate files in python. 
Many packages come with functions to read and write specific file types. This includes for examples pandas, a package often used in data analysis.
