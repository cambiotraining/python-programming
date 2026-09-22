---
title: Python for Loops
---

::: {.callout-tip}
#### Learning Objectives

- Learn what a for loop is
- Learn the syntax for a for loop
- Learn the common functions used with for loops

:::

## `for` Loops in Python

`for` loops iterate over a sequence (list, tuple, string, dictionary, set, or range) and perform processes. The syntax of a `for` loop is simple but must be carefully followed, especially with respect to the colon (`:`) and indentation.

**Syntax**

- The `for` keyword is followed by a variable name (e.g., `item`) that will take on the value of each element in the sequence.  
- The sequence can be a list, tuple, string, or any iterable object.  
- The colon (`:`) indicates the start of the loop block.  
- The indented lines that follow the colon are the code that will be executed.


```
for item in sequence:
    print(x) # Code block to execute
```
Example:

```
animals = ["dog", "cat", "rabbit", "elephant", "tiger"]

for animal in animals:
    print(f'I have a {animal}.')
```
Output
```
I have a dog.
I have a cat.
I have a rabbit.
I have an elephant.
I have a tiger.
```

## Using `len()` and `range()` in `for` loops

In Python, `len()` and `range()` are often used with for loops to control iterations and access elements by their index.

**Using `len()`**

The `len()` function returns the number of items in an iterable (like a list, tuple, or string). This is useful when you need to loop through each element of a sequence without manually specifying the length.

**Using `range`**

The range() function generates a sequence of numbers, which can be useful for iterating over a sequence with a specified start and end. The syntax is range(start, stop[, step])

```
# Loop through the first five integers
for num in range(5):
    print(num)

```

**Examples:**

```
animals = ["dog", "cat", "rabbit", "elephant"]

for i in range(len(animals)):            # only 1 value - stop
    print(f"Animal at index {i}: {animals[i]}")

for i in range(0,len(animals),2):        #start, stop, step
    print(f"Animal at index {i}: {animals[i]}")


```

## Using `enumerate()` in `for` Loops

The `enumerate()` function in Python adds a counter to an iterable and returns it as an `enumerate` object. This is particularly useful when you want to loop through a sequence and keep track of the index of each item without using `range()`.

**Syntax**

The syntax of `enumerate()` is as follows:

```python
enumerate(iterable, start=0)
```
- iterable: The sequence (like a list, tuple, or string) you want to iterate over.
- start: The starting index (default is 0).

**Example of `enumerate()`**
Here's a simple example demonstrating how to use enumerate() with a list of animals:

```
animals = ["dog", "cat", "rabbit", "elephant"]

for index, animal in enumerate(animals):
    print(f"Animal {index}: {animal}")
```
output:
```
Animal 0: dog
Animal 1: cat
Animal 2: rabbit
Animal 3: elephant
```
**Benefits of Using `enumerate()`**

- **Clarity:** It makes the code cleaner and more readable by eliminating the need to manually manage the index.
- **Convenience:** Automatically handles the index tracking for you, reducing the risk of errors.

::: {.callout-exercise}
#### Modify the expense calculator
{{< level 2 >}}

Using conditional statements, for loops and the functions we have seen, 
Modify the expense calculator to allow the input of a dictionary specified at the top of the script rather than a file.
The dictionary should look like the following:
```
pre_existing_expenses = {
    "food": [20.50, 15.00],
    "transport": [10.00],
    "entertainment": [90.00]
}
```
Write code such that the calculator correctly loops through the dictionary to correctly load in pre-existing expenses and test your script.

Look at eachothers code - how might it be improved?

<!--
::: {.callout-answer}
```
# --- Inputs ---
# Thresholds
thresholds = {
    "food": 100.0,
    "transport": 50.0,
    "entertainment": 80.0,
    "other": 70.0
}

# Example input dictionary simulating pre-existing data
pre_existing_expenses = {
    "food": [20.50, 15.00],
    "transport": [10.00],
    "entertainment": [90.00]
}

expenses = []

# --- Functions ---

def load_from_dict(data_dict):
    """Loops through a dictionary to load pre-existing expenses."""
    keys = list(data_dict.keys())
    
    # Using range and len to iterate through the dictionary keys
    for i in range(len(keys)):
        category = keys[i]
        amounts = data_dict[category]
        
        # Using enumerate to process individual amounts
        for index, amt in enumerate(amounts):
            if category in thresholds:
                expenses.append([category, float(amt)])
            else:
                print(f"Skipping unknown category: {category}")

def get_total(category):
    """Calculates total spent for a specific category."""
    total = 0.0
    for item in expenses:
        if item[0] == category:
            total += item[1]
    return total

def process_expense(category, amount):
    """Handles the logic for adding an expense and checking thresholds."""
    expenses.append([category, amount])
    current_total = get_total(category)
    limit = thresholds[category]
    
    print(f"\n--- Update for {category.upper()} ---")
    if current_total > limit:
        over_by = current_total - limit
        print(f"ALERT: Threshold exceeded by {over_by}!")
    else:
        print(f"Added {amount}. Total: {current_total}")
        print(f"Remaining budget: {limit - current_total}")

# --- Execution part ---

# 1. Load the initial data
load_from_dict(pre_existing_expenses)
print(f"Loaded {len(expenses)} existing records.\n")

# 2. User Input Loop
while True:
    cat_input = input("Enter category (food, transport, entertainment, other) or 'done': ").lower()
    
    if cat_input == "done":
        break
        
    if cat_input in thresholds:
        amt_input = input(f"Enter amount for {cat_input}: ")
        
        # Simple validation
        if amt_input.replace('.', '', 1).isdigit():
            process_expense(cat_input, float(amt_input))
        else:
            print("Invalid numeric amount.")
    else:
        print("Invalid category. Please choose from the list.")

print("\nFinal Expense List:", expenses)

```
:::

-->

:::

::: {.callout-exercise}
#### Make your own `for` loop
{{< level 2 >}}

Exercise:  Make your on loop which iterates through a task of your own choosing - it needs to use enumerate.
Use your impagination to come up with scenarios.

Write code to deal with edge cases that might appear.
:::

## Extra: List Comprehensions

List comprehensions in python enable you to write shorter and sometimes faster code than standard loops. The syntax is:

[expression for item in iterable if condition]

Similar tools occur for dictionaries (Dictionary comprehension)

::: {.callout-exercise}
#### Use list Comprehensions
{{< level 1 >}}

print the animals list in upper case using list comprehensions


::: {.callout-answer}

Answer:
```
animals = ["dog", "cat", "rabbit", "elephant"]
print([animal.upper() for animal in animals])
```
output:
```
['DOG', 'CAT', 'RABBIT', 'ELEPHANT']
```

:::
:::

## Summary

::: {.callout-tip}
#### Key Points

- for loops can be used to repeatedly use the same logic in scripts
- conditionls can easily be embedded within for loops

:::
