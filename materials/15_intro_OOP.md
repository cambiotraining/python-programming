---
title: Introduction to Object-Oriented Programming
---

::: {.callout-tip}
#### Learning Objectives

- Understand the OOP Paradigm in python
- Understand why it is useful and when to use it
:::

## Introduction

In Python, you have already worked with **objects** when calling functions like:

```
object.function()
```

Examples similar to those we have seen so far are:
```
For example:
my_list = [1, 2, 3]
my_list.append(4)

text = "hello"
text = text.upper()
```
In these examples, `my_list` and `text` are objects, and `append()` and `upper()` are methods - functions that belong to those objects.

Object-Oriented Programming (OOP) is the programming approach that explains how objects are created and how data and behavior are grouped together.

## Why We Use OOP in Python

Object-Oriented Programming (OOP) helps us **model real-world entities** as objects that combine **data and behavior**. 

It can make code more **modular, reusable, and easier to maintain**, especially in large programs. Compared to functional programming, OOP is useful when managing complex state or hierarchical relationships, while functional programming (focusing on independent functions) can be better in particular for operations that do not depend on changing state and always produce the same output. You can also think of it as object oriented programming being better suited for projects where data and operations are naturally grouped.

With OOP, complex programs can be broken into manageable, reusable components through classes, inheritance, and polymorphism, (which we will look at in more detail next) which also helps reduce duplication and improves collaboration on large projects.

## Advantages and Disadvantages of OOP vs Functional Programming

| Aspect | OOP Advantages | OOP Disadvantages |
|--------|----------------|-------------------|
| Modularity | Encapsulates data and behavior in classes, making code organized | Can create complex class hierarchies that are hard to manage |
| Reusability | Inheritance and polymorphism allow code reuse | Overuse of inheritance can make code rigid or confusing |
| Readability | Easier to understand for programs modeling real-world entities | Sometimes more boilerplate (repeated/redundant) code than functional style |
| State Management | Objects can maintain state over time | Shared state can cause unintended side effects |
| Testing | Methods can be tested individually | Mutable state makes some tests harder than pure functions |
| Suitability | Great for GUI, games, simulations, and systems with evolving state | Less suited for purely computational pipelines or data transformations with standard input-output relationships|

Do not worry if you do not quite understand it yet - it will become clearer as we actually look at how to define and use a `class` in python.

## Common examples where the OOP paradigm is used

**Machine Learning**

In machine learning frameworks like **PyTorch** or **TensorFlow**, models and architecture/layers etc. are naturally represented as **objects**. Each model object stores its **parameters** (like layers, weights, and biases) and **behaviors** (such as forward computation or training routines).  
In machine learning frameworks such as PyTorch or TensorFlow, models are represented as objects that are composed of other objects. A model is built by combining multiple layer objects (e.g., linear layers, convolutional layers, activation functions) into a structured architecture. The model object therefore serves as a container that organizes these layers and manages their parameters (weights and biases) as well as their behavior (such as forward computation and training logic). As data flows through the model, it is passed sequentially through the collection of layers that make up the overall architecture. Each object has it's own methods and behaviours like forward computation and training routines and different types of layers can be chained together to build models.

Benefits of OOP in ML:

- Encapsulates model structure and behavior in a single object, keeping code organized.  
- Makes it easy to **extend or modify models**, for example by adding new layers or custom functions.  
- Supports **reusability**, allowing trained models to be saved, loaded, and reused in different projects.  
- Enables clear separation of concerns, with objects managing their own state independently of other parts of the program.

---

**Simulations and Games**

Simulations and games involve **entities with states and behaviors**, such as players, enemies, vehicles, or particles. Each entity can be modeled as a different type of object, and individual entities are objects with attributes (like position, health, or speed) and methods (like move, attack, or interact).  

Benefits of OOP in simulations and games:

- Each object **maintains its own state**, allowing multiple entities to exist and behave independently.  
- Methods encapsulate behavior, so objects can act in a controlled, predictable way.  
- Subclasses allow **specialized behavior**, such as different types of enemies or vehicles.  
- Organizes complex interactions between objects, making large simulations or games easier to design and maintain.

---

**Custom Data Types (NumPy, pandas)**

Libraries like **NumPy** and **pandas** use OOP to implement **custom data types**, such as arrays, DataFrames, or Series. These objects store data internally and provide **methods** for operations like aggregation, transformation, or filtering.  

Benefits of OOP in custom data types:

- Data is **encapsulated** in objects, preventing accidental misuse.  
- Objects provide **built-in methods** for common operations, reducing the need for manual coding.  
- Enables **consistent behavior** across similar objects, such as arrays or tables.  
- Supports **extensibility**, allowing users to create specialized data objects with additional functionality.


## Summary

OOP is best when programs require **stateful objects and hierarchical relationships**, while functional programming shines in **stateless, predictable operations** like data processing and mathematical computations.

