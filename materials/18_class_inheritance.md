---
title: Classes Inheritance and Composition
---

::: {.callout-tip}
#### Learning Objectives

- Understand what class inheritance and compostion are and how to use them
:::

## Introduction

Object-Oriented Programming allows classes to relate to one another in structured ways. 

Two of the most important relationships are **inheritance** and **composition**. Understanding when and how to use each is essential for writing maintainable Python code.
If you think about the initial examples of where OOP was used, by the end you will understand why inheritance and composition are such benefits.

---

## Inheritance and Subclasses

Inheritance allows a **new class** (the subclass) to reuse and extend an **existing class** (the parent or base class). This promotes code reuse and logical organization.

### Basic Inheritance

Let's say we define a base class with a move function:
```
class Animal:
    def move(self):
        print("The animal moves")
```
We can then define a dog class which inherits from it, but also adds the extra speak function
```
class Dog(Animal):
    def speak(self):
        print("Woof!")
dog1 = Dog()
dog1.move() 
dog1.speak()
```

Key ideas:

- Dog inherits from Animal
- The subclass automatically gains access to the parent’s methods
- Subclasses can add new behavior

## Instance attributes, `__init__`, and inheritance

In the previous example there are no instance attributes at all. Neither Animal nor Dog defines an `__init__` method.
No attributes are assigned using self.something = ....

As a result, dog1 has no instance-specific data.
`dog1.__dict__` is empty — there is no stored state

Now look at the following example:
```
class Animal:
    def __init__(self, name):
        self.name = name  # instance attribute

    def move(self):
        print(f"{self.name} moves")
```
Now every Animal (and every subclass) object will have a name.

**Instance attributes and inheritance**

When a subclass does not define its own` __init__`, it automatically inherits the parent’s `__init__`.
So the following works:
```
class Dog(Animal):
    def speak(self):
        print("Woof!")

dog1 = Dog("Buddy")
dog1.move()    # Buddy moves
dog1.speak()   # Woof!
```

dog1 has a name attribute created by `Animal.__init__`
Dog inherits both the attribute setup and the methods.

**Adding new instance attributes in the subclass**
If the subclass needs additional attributes, it defines its own `__init__` and calls the parent’s initializer with `super().__init__`:
```
class Dog(Animal):
    def __init__(self, name, breed):
        super().__init__(name)  # initialize Animal part
        self.breed = breed      # new instance attribute

    def speak(self):
        print("Woof!")
```
Now:

- name comes from Animal
- breed comes from Dog
- dog1 contains both attributes

Key Points:

- Instance attributes exist only when you assign to self
- Inheritance gives subclasses access to Parent methods through Parent `__init__` (if not overridden)
- super() ensures parent attributes are properly initialized

## Overriding Methods

A subclass can override a method from its parent class to change or specialize behavior.
```
class Dog(Animal):
    def move(self):
        print("The dog runs swiftly")
```
Now, calling move() on a Dog object uses the subclass version instead of the parent version.

Overriding is useful when:

- The subclass needs different behavior
- The method name and purpose remain the same

## Multiple Levels of Inheritance

Inheritance can form a hierarchy with multiple levels:
```
class Puppy(Dog):
    def play(self):
        print("The puppy is playing")
```
Puppy inherits from Dog.

Dog inherits from Animal.

Puppy can therefore use methods from both parent classes. This allows complex behavior to be built gradually from simpler classes.

## Deleting Attributes, Methods, and Objects
Python provides the `del` keyword to remove attributes, methods, or object references.

**Deleting Attributes**
del dog1.age
Removes the attribute from the object
Accessing it afterward raises an error
*Rarely used outside debugging or special cases*

**Deleting Methods**
Methods usually belong to the class, not the object.
```
del Dog.speak
```

Important notes:

- Affects all instances of the class

*Generally discouraged*

Methods should normally be removed by editing the class definition

You can also use `del` to delete a specific object

## Common Inheritance Mistakes

**1. Using Inheritance Without an “Is-a” Relationship**

Inheritance should represent a true is-a relationship.

Correct: A Dog is an Animal
Incorrect: A Car is an Engine

If the relationship is not “is-a”, inheritance is usually the wrong choice.

**2. Creating Deep or Complex Inheritance Trees**

Deep inheritance hierarchies are hard to understand and increase the risk of unintended behavior
They make debugging difficult. Prefer shallow hierarchies with clear responsibilities.

**3. Overriding Methods Incorrectly**

Overridden methods should preserve the original meaning, accept compatible inputs and produce expected outputs.
Breaking these assumptions can lead to fragile code.

## Composition: An Alternative to Inheritance

Inheritance is not the only way to reuse functionality. Composition is often a better and more flexible choice.

**What Is Composition?**

Composition means building a class by including other objects as attributes, rather than inheriting from them.

Inheritance models an 'is-a relationship'
Composition models a 'has-a relationship'

Examples:

- A Car has an Engine
- A GameCharacter has a Weapon
- A NeuralNetwork has layers

**How Composition Works Conceptually**

Instead of inheriting behavior, a class:

- Stores another object internally
- Delegates work to that object
- Can replace or modify the contained object as needed: e.g. a game character can change equipment without changing its class


This creates loose coupling between components.

Benefits of Composition;
- Increases flexibility
- Avoids rigid class hierarchies
- Makes behavior easier to change or extend
- Encourages reusable, independent components

## Inheritance vs Composition

Use inheritance when:

- There is a clear is-a relationship
- The subclass is a specialized version of the parent
- Shared behavior makes conceptual sense

Use composition when:

- One object depends on another but is not a subtype
- Behavior should be interchangeable
- Flexibility and maintainability are priorities


Composition is often better than inheritance


## Summary
- Inheritance allows classes to reuse and extend behavior
- Subclasses can override and specialize methods
- Improper inheritance can lead to fragile designs
- Composition provides a flexible alternative using “has-a” relationships
- Understanding both approaches leads to better object-oriented design
- Object-Oriented Programming helps structure programs in a way that is scalable, maintainable, and aligned with real-world relationships.
