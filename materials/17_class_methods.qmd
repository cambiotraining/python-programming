---
title: Class Methods
---

::: {.callout-tip}
#### Learning Objectives

- Understand the syntax of class methods

:::

## Defining Methods of a class

Methods are functions defined inside a class. They describe what an object can do and typically operate on the object’s internal data (its attributes).

see the following example: 
```
class Dog:
    def __init__(self, name):
        self.name = name

    def speak(self):
        print(f"{self.name} says Woof!")

dog1 = Dog("Buddy")
dog1.speak()
```
Output
```
Buddy says Woof!
```

**Key points:**

- Methods are defined inside a class.
- The first parameter of a method is usually self, which refers to the current object.
- Methods are called using the syntax object.method().
- Because methods have access to self, they can read and modify object-specific data such as self.name.

**Why self Is Important**

Self allows each object to behave independently.

For example, if you create multiple Dog objects, each one has its own name, but they all share the same speak() method definition. The value of self changes depending on which object is calling the method.

## Helper Methods

Sometimes, a method needs a small internal function to perform part of its task. These are called helper methods.

By convention, helper methods are prefixed with a single underscore (_) to indicate that they are internal to the class and not part of the public interface.

See the following example:
```
class Circle:
    def __init__(self, radius):
        self.radius = radius

    def area(self):
        return self._calculate_area()

    def _calculate_area(self):
        return 3.14159 * self.radius ** 2
c = Circle(5)
print(c.area())
```
output
```
78.53975
```

**Important points about helper methods:**

- `_calculate_area()` is used only inside the class.
- Users of the class are expected to call area(), not the helper method.
- The underscore is a convention, not a strict rule, but it signals “internal use”.

This helps keep the class interface clean and easy to use.

## Methods Can Modify Attributes

Methods are the primary way objects change their internal state.
```
class Dog:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def birthday(self):
        self.age += 1
        print(f"{self.name} is now {self.age} years old!")
dog1 = Dog("Buddy", 3)
dog1.birthday()
```
output:
```
Buddy is now 4 years old!
```

The method birthday() modifies the instance attribute self.age.
This keeps changes to object data controlled and predictable.

Directly modifying attributes is possible, but methods provide a safer, clearer approach.

## Class Methods vs Normal Functions

Although methods and functions look similar, they serve different purposes.

**Normal Functions**
- Defined outside of any class.
- Do not automatically receive an object.
- Operate only on the data explicitly passed to them.
- Best for stateless operations, calculations, or general utilities.

Example use cases:
Mathematical calculations
Data transformations
Helper utilities used across many parts of a program

**Class Methods (Instance Methods)**
- Defined inside a class.
- Automatically receive the object via self.
- Can access and modify the object’s attributes.
- Represent behavior that belongs to an object.

Example use cases:
Updating an object’s state
Performing actions related to an object’s data
Encapsulating logic that depends on internal attributes


| Aspect | Normal Function | Class Method |
|------|----------------|--------------|
| Location | Outside a class | Inside a class |
| Access to object state | No | Yes (via `self`) |
| Called using | `function()` | `object.method()` |
| Best suited for | Stateless logic and utility operations | Object behavior and state changes |


**Why Use Methods Instead of Functions?**

Methods: 
- Keep data and behavior together 
- Make code easier to understand and maintain
- Reduce errors by controlling how object data is accessed or modified

In object-oriented programming, methods define how objects behave, while normal functions are used for logic that does not naturally belong to a specific object.

## Polymorphism

Different class can each have different implementations of a method. This is called polymorphism. Polymorphism is an object-oriented programming principle that allows different objects to respond to the same method call in different ways, depending on their type.

In practical terms, it means you can write code that works with multiple object types through a common interface, without needing to know the specific class of each object.


The same method name can produce different behavior when invoked on different objects.

Look at the following example:

```
class Shape:
    def area(self):
        raise NotImplementedError

class Rectangle(Shape):
    def area(self):
        return 10 * 5

class Circle(Shape):
    def area(self):
        return 3.14 * 4 * 4

shapes = [Rectangle(), Circle()]

for shape in shapes:
    print(shape.area())

```

Each call to area() executes a different implementation, even though the calling code is identical.

**How Polymorphism Works in Python**

Dynamic typing: Python determines the method to call at runtime.

Method overriding: Subclasses redefine behavior.

Duck typing: Objects do not need a shared base class—only the same method names

Example:
```
class FileLogger:
    def write(self, msg):
        print(msg)

class SocketLogger:
    def write(self, msg):
        print(msg)

def log(writer):
    writer.write("Hello")

log(FileLogger())
log(SocketLogger())
```

**Why Polymorphism Is Important**

- Reduces conditional logic
- Improves extensibility
- Enables clean APIs and frameworks
- Central to plugin systems and ML libraries

Polymorphism allows different objects to be used interchangeably as long as they implement the same methods, with behavior determined at runtime.

## Extra: @classmethod and @staticmethod

So far, we have discussed instance methods, which use self and operate on individual objects. 

Python also provides class methods and static methods, which serve different purposes.

**@classmethod**

A class method is a method that operates on the class itself, not on a specific object.
Instead of receiving self, it receives cls, which refers to the class.

Key characteristics:

- Defined using the @classmethod decorator
- Receives the class as the first argument (cls)
- Can access and modify class attributes
- Cannot directly access instance-specific data unless it is passed in

Typical use cases:

- Factory methods that create and return new objects
- Methods that need to work with class-level data
- Alternative constructors

Conceptual examples:

- A class method that keeps track of how many objects have been created
- A method that creates objects with preset or default configurations

**@staticmethod**

A static method does not receive self or cls.
It behaves like a normal function but is logically grouped inside a class.

Key characteristics:

- Defined using the @staticmethod decorator
- No automatic access to instance or class data
- Included in the class for organizational clarity

Typical use cases:

- Utility functions related to the class’s concept
- Validation or formatting logic
- Helper functionality that conceptually belongs to the class but does not depend on object state

Conceptual examples:

- A method that validates input values before creating an object
- A mathematical helper related to a class’s purpose

## Summary

## Add to references 

https://makeschool.org/mediabook/oa/tutorials/superhero-team-dueler/superhero-objects/#:~:text=Make%20a%20Dog%20Class,a%20simple%20class%20called%20Dog%20.&text=Now%20define%20a%20class%20using,(%22dog%20initialized!%22)
