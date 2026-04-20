---
title: Python conditional loops with `while`
---

::: {.callout-tip}
#### Learning Objectives

- Learn about while conditionals and how they are used

:::


## `while` Loops in Python

A `while` loop in Python is a control flow statement that allows code to be executed repeatedly based on a boolean condition. The loop continues to execute as long as the condition remains `True`. Here's a breakdown of how `while` loops work:

**Key Components**

1. **Condition:** The loop starts with a condition that is evaluated before each iteration. If the condition is `True`, the code block within the loop is executed.

2. **Code Block:** The statements inside the loop are indented, and these will run repeatedly as long as the condition remains `True`.

3. **Increment/Decrement:** It's crucial to modify the variable used in the condition within the loop; otherwise, you may create an infinite loop.

4. **Exit:** Once the condition evaluates to `False`, the loop stops, and the program continues with the next line of code following the loop.

**Syntax**

```
while condition:
    # Code block to execute
    # Update condition variable
```
**Example**

Here's a simple example to illustrate how a while loop works:

```
count = 0

while count < 5:
    print("Count is:", count)
    count += 1  # Increment count
```
**Explanation of the Example**

- **Initialization:** The variable `count` is initialized to `0`.
  
- **Condition:** The `while` loop checks if `count` is less than `5`.
  
- **Code Execution:** If the condition is `True`, it prints the current value of `count`.
  
- **Increment:** The line `count += 1` increments the value of `count` by `1` after each iteration.
  
- **Termination:** Once `count` reaches `5`, the condition becomes `False`, and the loop exits.

This can be incredibly useful in simulations. Or when interacting in the environment. Here the number of iterations is not known beforehand and depend on a certain condition being met. They provide a way to repeat actions and process data dynamically within a program.

**However**

- **Infinite Loops:** Ensure the condition will eventually evaluate to `False` to avoid infinite loops.
  
- **Break Statement:** You can use the `break` statement to exit a loop prematurely if needed.
  
- **Continue Statement:** The `continue` statement can skip the current iteration and proceed to the next one based on a condition.

An example is:

```
import random

population = 1000
infected = 1
days = 0
infection_rate = 1.5
max_days = 30

while infected < population:
    days += 1

    if random.random() > 0.9:
        print(f"Day {days}: Lockdown in effect, no new infections today.")
        continue
    
    new_infections = int(infected * infection_rate)

    if new_infections + infected > population:
        new_infections = population - infected
    
    infected += new_infections

    print(f"Day {days}: {infected} infected.")

    if infected >= population:
        print(f"Day {days}: The entire population is infected.")
        break

    if random.random() > 0.8:
        print(f"Day {days}: Health measures implemented, slowing infection.")
        infection_rate -= 0.3
    
    if infection_rate <= 0.1:
        print(f"Day {days}: The infection has nearly stopped spreading.")
        break
    
    if days >= max_days:
        print("The simulation has reached its time limit.")
        break

```

::: {.callout-exercise}
#### Code Legibility
{{< level 2 >}}

Discussion:
What does the above code do?
Is it legibly written?
What can be done to improve this?

::: {.callout-answer}

```

# Commenting the code appropriately is important!
import random

# Parameters of the simulation
population = 1000       # Total population
infected = 1            # Initially 1 person is infected
days = 0                # Start at day 0
infection_rate = 1.5    # Rate of infection: how many people one infected person can infect per day
max_days = 30           # Maximum number of days to simulate

while infected < population:
    days += 1

    # Simulate random events like lockdown or vaccines
    if random.random() > 0.9:  # 10% chance of stopping the spread for the day
        print(f"Day {days}: Lockdown in effect, no new infections today.")
        continue  # Skip the infection calculation for this day and move to the next

    # Simulate daily infections
    new_infections = int(infected * infection_rate)

    # If new infections exceed the remaining healthy population, adjust them
    if new_infections + infected > population:
        new_infections = population - infected

    infected += new_infections

    # Display day-by-day status
    print(f"Day {days}: {infected} infected.")

    # Continue if there are still people to infect
    if infected >= population:
        print(f"Day {days}: The entire population is infected.")
        break

    # Random chance to reduce the infection rate due to interventions
    if random.random() > 0.8:  # 20% chance to reduce infection rate
        print(f"Day {days}: Health measures implemented, slowing infection.")
        infection_rate -= 0.3  # Decrease the infection rate

    # If the infection rate gets too low, break out of the loop (end of epidemic)
    if infection_rate <= 0.1:
        print(f"Day {days}: The infection has nearly stopped spreading.")
        break

    # Stop the simulation after a max number of days to avoid infinite loops
    if days >= max_days:
        print("The simulation has reached its time limit.")
        break
```

:::

:::

::: {.callout-exercise}
#### Interpreting a while loop
{{< level 2 >}}

What does the while statement in the expense_calculator.py code do?
What are its limitations?
Improve the code, by adressing these limitations

::: {.callout-answer}

Add code introducing a maximum number of iterations or a global valuse cap to force exit and stop an infinite loop
You can also add an extra break statement to stop if a user has exceeded a limit
:::

:::

::: {.callout-exercise}
#### Writing your own while loop
{{< level 2 >}}

Either write a while loop of your own choice,

or 

Write a script that asks customers repeatedly for the drinks they would like to order.
If it is not recognised from a set of your choice, then respond accordingly
If they input "stop" or order more than 10 items, complete the order.
Tell the customer the total cost.

:::

<!--
count = 0

while True:
    drink = input("Enter drink (tea / coffee / water / stop): ").strip().lower()

    if drink == "stop":
        print("Orders closed")
        break

    if drink == "tea" or drink == "coffee" or drink == "water":
        print("Order recorded")
        count += 1
        continue

    print("Unknown drink")
    continue

print("Total drinks ordered:", count)
-->

## Summary

::: {.callout-tip}
#### Key Points

- while loops can be very useful for tasks that do not have a set number of loops allowing simulation and user input
- It is important you do not get infinite loops in your code

:::

