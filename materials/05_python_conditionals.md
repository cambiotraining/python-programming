---
title: Python Conditional statements
---

::: {.callout-tip}
#### Learning Objectives

- Learn about conditional statements
- Learn how to use them and the syntax

:::

## Conditionals

Conditional statements are important because they let a program make decisions. The program can evaluate the conditions and use them to choose what action to take. The conditiones can be based on user input or data values for example. This makes programs flexible and able to respond to different situations instead of doing the same thing every time.

Conditionals in Python allow you to execute different blocks of code based on conditions with boolean outputs. By boolean outputs, it means that the condition must be true or false.

This is mainly done using `if`, `elif`, and `else` statements. These are read from top to bottom. You do not always need to have ```elif``` and ```else``` statements, but they are good to have and can be used to catch unexpected values.


**`if` Statement:**

The `if` statement evaluates a condition which has returned a boolean (`True` or `False`). If the condition is `True`, the block of code inside the `if` statement is executed.

**`elif` Statement:**

The `elif` (short for "else if") statement allows you to check multiple conditions.
It follows an `if` statement and is executed if the previous conditions were `False` and its own condition is `True`.

**`else` Statement:**

The `else` statement is used to execute a block of code if none of the preceding `if` or `elif` conditions were `True`.

**Syntax**

```
if condition:
    print(x) # Code to execute if condition is True
elif another_condition:
    print(y) # Code to execute if first condition is False and another_condition is True
else:
    print(z) # Code to execute if all conditions are False

```
Note the colon and indentation used in the above example

- Indentation is also used to nest conditionals and loops in python, and incorrect indentation is a common cause for errors.

Here is a very simple example of using conditionals:

```
temperature = 25

if temperature > 30:
    print("It's a hot day.")
    #The program checks if the temperature is greater than 30. If it is, it prints "It's a hot day."
elif temperature < 10:
    print("It's a cold day.")
    #If the first condition is False, it checks if the temperature is less than 10. If this condition is True, it prints "It's a cold day."
else:
    print("It's a pleasant day.")
    #If both conditions are False, the else block executes and prints "It's a pleasant day."
```

With very simple conditions, python has a shorthand that is useful. You can do things like:

```
print("it's a hotday") if temperature > 30 else (print("it's a cold day") if temperature < 10 else print("it's a pleasent day"))
# these are known as ternary operators - there is no elif
```

*Ternary expressions are best kept simple. Nesting them can reduce readability, so regular ```if/elif/else``` statements are often clearer.*

**Operators**

The operators are a key tool when using conditional statements in python. Remind yourself about them and their order of precedence.

::: {.callout-exercise}
#### Discussion: Operators with conditionals
{{< level 2 >}}

Which types of operators are most useful when using conditional statements in Python?

:::

::: {.callout-exercise}
#### Mini conditionals extercise

Q1.
Look at the following code:
```
x = 7

if x > 10:
    print("A")
elif x > 5:
    print("B")
elif x > 3:
    print("C")
else:
    print("D")

```
What would the output be?

Rewrite the statement to check the conditions independently

:::

::: {.callout-exercise}
#### examining conditional statements
{{< level 2 >}}

- What do the following `if` statements do?
- How can you write complex conditions and make your code legible?

Some actual examples from my (not perfect) code:
```
if (len(x[0]) == 2) and not any(x % 10 in {0, 9} for x in x[0]):
```
```
    if (
        (coordcolumnchoice[0] == (1,1) and coordinateM[0,0] in x[0] and coordinateM[1,1] in x[0]) or
        (coordcolumnchoice[0] == (1,1) and coordinateM[1,0] in x[0] and coordinateM[0,1] in x[0]) or
        (coordcolumnchoice[0] == (1,0) and coordinateM[1,0] in x[0] and coordinateM[0,0] in x[0]) or
        (coordcolumnchoice[0] == (1,0) and coordinateM[1,1] in x[0] and coordinateM[0,1] in x[0])
      ):
```
How might the second example be clearer if I was writing it again?

:::




::: {.callout-exercise}
#### Conditionals in expense_calculator
Look at the conditional statements in the expense calculator script.

What do they do?

What is the different indentation doing?

Can you add an extra condition that you would like to your expense calculator?

What are the limitations of conditional statements?
:::




## Summary

::: {.callout-tip}
#### Key Points

- Conditional statements allow complex decision making
- Conditions use ```if```, ```elif``` and ```else``` statements
- Unlike other languages python only uses indentation no curly brackets etc. when nesting conditions
- Conditionals are evaluated linearly starting with ```if``` then the multiple ```elif``` and finally the ```else``` with the following conditions ignored once a preceding condition is met
:::
