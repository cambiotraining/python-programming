---
title: Python try and except statements
---

::: {.callout-tip}
#### Learning Objectives

- Learn what try and except statements do and how to use them
- Learn the syntax and add them to your repertoir of python constructs to deal with unforseen errors
:::


## `try` and `except` in Python

In Python, `try` and `except` blocks are used for handling exceptions, which are errors that can occur during program execution. This mechanism allows developers to anticipate potential errors, provide alternate code to handle them, and prevent the program from crashing. Here's how it works:

**`try` Block:**

The code that might raise an exception is placed inside the `try` block.
If an exception occurs during execution of this block, the rest of the block is skipped, and control is passed to the `except` block.

**`except` Block:**

This block contains code that handles the exception. You can specify which exception to catch, or leave it blank to catch any exception.
If the exception type matches the one specified in the `except` block, the code inside it is executed.

**Multiple `except` Blocks:**

You can have multiple `except` blocks to handle different types of exceptions.

**`else` Block:**

You can add an `else` block after the `except` block. This block runs if the `try` block executes without raising an exception.

**`finally` Block:**

The `finally` block runs regardless of whether an exception was raised or not. It is often used for cleanup actions, like closing files or releasing resources.

**Example**

Here’s a simple example demonstrating the use of `try` and `except`:

```python
try:
    # Code that may raise an exception
    numerator = 10
    denominator = 0
    result = numerator / denominator
except ZeroDivisionError:
    # Handling a specific exception
    print("Error: You cannot divide by zero.")
except Exception as e:
    # Handling any other exception
    print(f"An unexpected error occurred: {e}")
else:
    # Executes if no exception occurred
    print("The result is:", result)
finally:
    # This block runs no matter what
    print("Execution completed.")
```
*Explanation of the Example:*

`try`:

- Attempts to divide `numerator` by `denominator`. Since `denominator` is zero, this raises a `ZeroDivisionError`.

`except`:

- The first `except` catches the `ZeroDivisionError` and prints an error message.
- The second `except` would catch any other unexpected exceptions, but it won't run in this case because the first `except` handles the error.

`else`:

- If there were no exceptions, the `else` block would print the result.

`finally`:

- This block runs at the end of the `try/except` structure, regardless of whether an exception occurred or not. It's useful for cleanup actions.

In this case I might not use the `else` or `finally`

**Benefits of Using `try` and `except`:**

- **Prevents Crashes:** By handling exceptions, you can prevent your program from crashing due to unforeseen errors.
- **Cleaner Code:** It allows for clearer separation of normal code and error handling.
- **More Robust Programs:** By anticipating and handling potential errors, your programs can handle unexpected situations better.

::: {.callout-exercise}
#### Count Nucleotide Occurrences
{{< level 2 >}}

Given a DNA sequence, write a loop to count the occurrences of each DNA base out of the four options (A, T, C, G).

**DNA Sequence:**
```python
dna_sequence = "ATCGATCGATCGATCG"

```

::: {.callout-answer}

```
# Given DNA sequence
dna_sequence = "ATCGATCGATCGATCG"

```
Initial Answer
```
# Initialize counts
count_A = 0
count_T = 0
count_C = 0
count_G = 0

# Count nucleotides
for nucleotide in dna_sequence:
    if nucleotide == 'A':
        count_A += 1
    elif nucleotide == 'T':
        count_T += 1
    elif nucleotide == 'C':
        count_C += 1
    elif nucleotide == 'G':
        count_G += 1

print(f"A: {count_A}, T: {count_T}, C: {count_C}, G: {count_G}")
```

:::

What exceptions might be generated?
- Add an else statement to deal with other characters
- Use try and except - what exception cases would this allow you to handle? Remember to follow the indentation pattern

:::

::: {.callout-exercise}
#### if statements vs try except
{{< level 2 >}}

Discussion: Can if statements statements replace try except?

::: {.callout-answer}

NO! - if statements can reduce the errors and deal with edge casees, but errors can arise within the code blocks that cannot be handled.

- Edge cases can be different to errors - the code runs without throwing errors but the output does not behave as expected

- You should always inspect data first and check things make sense.

:::
:::

::: {.callout-exercise}
#### improving the expense_calculator code
{{< level 2 >}}

Where else might you add `try` `except` statement to the expense_calculator script?
Have a go at adding these statements into the script.
When might you prefer not to use `try` `except` ?

:::


## Summary

::: {.callout-tip}
#### Key Points

- Python try except statements catch errors and enable code to continue despite some errors
- They are simple to add to scripts where this is important
:::
