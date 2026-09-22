---
title: Classes and Attributes
---

::: {.callout-tip}
#### Learning Objectives

- Understand what a class is and the syntax
- Understand class and instance attributes
:::

## Classes and Object Instantiation

A **class** is a blueprint for creating objects. Once a class is defined, you can **instantiate objects** (create instances of that class) like this:

```
class Dog:
    pass  # placeholder for now

# Instantiate a Dog object
my_dog = Dog()
another_dog = Dog()
```
`my_dog` and `another_dog` are two separate objects created from the Dog class.

## Instance Attributes (Object-Specific)

Instance attributes belong to a specific object.
They are usually defined in the __init__ method using self:
```
class Dog:
    def __init__(self, name, age):
        self.name = name   # instance attribute
        self.age = age     # instance attribute


dog1 = Dog("Buddy", 3)
dog2 = Dog("Max", 5)

print(dog1.name, dog1.age)  # Buddy 3
print(dog2.name, dog2.age)  # Max 5
```
In the same way as you pass variables to a function, when you instantiate a class to create an object of the class you can pass in variables.
You can also set defaults in the same way.

::: {.callout-exercise}
#### printing class attributes
{{< level 1 >}}
dir(MyClass) outputs a list of all the attributes. This includes methods, inherited attributes, and special methods - which we will look at next.

Try `print(dir(MyClass))` to see the attributes present.

You can also use print(MyClass.__dict__) or vars(MyClass) to look at all those only defined on the class object.

:::

## Modifying Instance Attributes

You can access and modify instance attributes by using the `.` directly on the object:
```
dog1.age += 1
dog1.name = "Buddy Jr."
print(dog1.name, dog1.age)  # Buddy Jr. 4
```

Each object maintains its own copy of instance attributes, so modifying one object does not affect others.


## Class Attributes (Shared Across Objects)

Class attributes belong to the class itself and are shared by all objects:
```
class Dog:
    species = "Canine"  # class attribute shared by all instances

    def __init__(self, name):
        self.name = name

dog1 = Dog("Buddy")
dog2 = Dog("Max")

print(dog1.species)  # Canine
print(dog2.species)  # Canine
```

## Modifying Class Attributes

You can modify a class attribute either for the whole class or for a specific instance:

**Change for all objects**
```
Dog.species = "Dog"
print(dog1.species)  # Dog
print(dog2.species)  # Dog
```

**Override for one instance**
```
dog1.species = "Super Dog"
print(dog1.species)  # Super Dog
print(dog2.species)  # Dog
```

Note: Assigning to dog1.species creates a new instance attribute on that object, leaving the class attribute unchanged for other instances.

## Global and Local Variables

Global variables are defined outside functions or classes and can be accessed anywhere:
```
count = 0  # global variable
```

Local variables exist only inside a function or method:
```
def example():
    x = 10  # local variable
    print(x)

example()
```

**Remember:**
Instance variables (self.name) are specific to an object
Class variables (Dog.species) are shared across all instances

| Variable Type | Scope                    |
|---------------|--------------------------|
| Global        | Entire program           |
| Local         | Inside a function/method |
| Instance      | Specific object          |
| Class         | Shared by all objects of the same class   |

## Summary

You can straight away see the benefits of OOP in having many objects of a class with different attributes
