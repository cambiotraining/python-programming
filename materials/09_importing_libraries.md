---
title: Importing Packages in Python
---

::: {.callout-tip}
#### Learning Objectives

- Unsderstand why we install and import packages
- create and import a package with functions
- be aware of package managers

:::

## Introduction

Importing packages with functions is essential in programming because it allows developers to reuse well-tested code instead of writing everything from scratch in every script!
It also allows you to partition code into different scripts - otherwise they would get super long and unreadable. As mentioned packages contain collections of functions that can be used for specific types of task.

Packages/Libraries from different online repositories provide ready-made tools that make programs shorter, clearer, and more reliable, while also helping programmers focus on solving problems rather than reimplementing common functionality. You can download and import packages and libraries written by others as well as write your own and import them into the script.

In reality managing packages is one of the more difficult parts of coding in python. You can imagine that importing many packages from different sources with different library requirements of their own (dependencies) can cause conflicts.

 There are specific package managers that deal with this. We won't go into them in as much detail until the end of the course. For now we need to know how to be able to download and import a very common package -> numpy. 


## Installing Packages with `pip`

`pip` (Python's default package installer) is used to install packages from the **Python Package Index (PyPI)**, a repository of software for Python.

You can install packages by running the following command in your terminal or command prompt:

`pip install package_name`

For example, to install the `numpy` library:

`pip install numpy`

You can install a specific version of a package by specifying the version number:

`pip install numpy==1.21.0`

To update a package to the latest version:

`pip install --upgrade package_name`

**Pros of Using `pip`:**

- **Wide range of packages**: Since `pip` installs from PyPI, it gives access to a vast collection of Python libraries.
- **Lightweight**: Pip is small and fast, suitable for installing Python-only packages.
- **Flexible**: Pip works well with virtual environments (e.g., `venv` or `virtualenv`) to isolate dependencies.

**Cons of Using `pip`:**

- **Dependency management**: Pip doesn't handle package dependencies as robustly as other tools like `conda`. This can result in conflicts or missing dependencies.
By this we mean packages may not have the correct packages they require or wrong versions of packages.

- **Python-only**: Pip is mainly designed for Python packages. If a package has non-Python dependencies, you may have to install them manually. Many packages used in python may actually use other languages under the hood, resulting in them requiring non-python tools to be installed.

::: {.callout-exercise}
#### Install numpy
{{< level 1 >}}

NumPy is a Python library for fast numerical computing that provides powerful support for arrays, matrices, and mathematical operations.
We will be using it later on in this course. Please try to install it with pip.

:::

## Importing Packages

Once you have installed the package/library with pip importing it into a python script is easy.
`sys.path` is the list of directories that Python searches, in order, to find modules and packages when you import them. 

Packages installed with pip are automatically added to Python’s sys.path (as long as you’re using the same Python environment).

This means that once installed, all you have to do is use the command:

`import package_name`

you will see extra parts like

`from package_name import function_name`

which specifies the function for clarity

or 

`from package_name import function_name as new_name`

which renames the function when used in your new script

## Creating your own reusable code

### Importing a single script in the same repository

Say you start with a **single Python script** that contains some reusable functions.

If you have two files in the same directory, Python can import one directly from the other:


```
project_folder/
    utils.py        # contains helper functions
    main_script.py        # main script
```

In main_script.py, you can write:
```
import utils
```
or
```
from utils import some_function
```

::: {.callout-exercise}
#### Importing functions
{{< level 1 >}}

to make your own separate function containing module, remove the functions from the expense_calculator script and put them into a separate script.
Import them into the main script. Demonstrate the script still works

:::

## Extra: Turning scripts into a package

As your code grows, you may want to group multiple scripts into a package. A package is simply a directory that Python treats as a module namespace.

```
project/
    mypackage/
        __init__.py
        utils.py
        model.py
    train.py

```

The presence of __init__.py tells Python that mypackage is a package. You can now import modules like this:

```
from mypackage import utils
```
or to import a function
```
from mypackage.model import my_function
```

### Making the package discoverable

During development, placing train.py in the same parent directory as mypackage is enough. Python automatically adds that directory to sys.path, so the package can be imported by name.

For more robust usage—especially when importing from anywhere on your system—add a minimal pyproject.toml or setup.py and install the package in editable mode:

pip install -e .


This registers the package with Python while keeping it linked to your local source code, so changes take effect immediately.

## Extra: Installing Packages with `conda`

`conda` is a package manager included with the **Anaconda** distribution, which is widely used for data science, scientific computing, and machine learning. It manages both **Python** and **non-Python dependencies**, making it a more versatile option in certain environments. 

Rather than using the Anaconda distribution, (which though good comes with a lot unnecessary packages) install conda directly. New lightweight faster alternatives to `conda`, `mamba` and `micromamba` are now widely used. They work in the same way with the same commands.

**How to Install a Package with `conda`**

To install a package using `conda`, you would use:

`conda install package_name`

For example, to install `numpy`:

`conda install numpy`

To install a specific version of a package using `conda`:

`conda install numpy=1.21.0`

To update an installed package to the latest version:

`conda update package_name`

Generally, you would create an specific environment for example to python projects, with the packages you need:
```
conda create --name env_name
conda env list
conda activate env_name
conda install -c conda-forge package_name 
#conda-forge is a channel with generally more up to date packages
conda deactivate
```

**Pros of Using `conda`:**

- **Cross-language package management**: `conda` can install packages, libraries, and software, that are written in Python, C, C++, R, or other languages.
- **Handles non-Python dependencies**: Unlike `pip`, `conda` can install non-Python dependencies such as `libc`, `OpenBLAS`, or other compiled libraries.
- **Robust dependency resolution**: `conda` provides more sophisticated dependency resolution, reducing the risk of package conflicts.
- **Environment management**: `conda` simplifies creating isolated environments, allowing you to easily manage multiple versions of Python, or other libraries, on the same system.

**Cons of Using `conda`:**

- **Limited packages**: Although conda has its own package repository, it doesn't have access to all Python packages in PyPI. Sometimes, you might need to fall back on `pip`.
- **Slower**: Conda can be slower and heavier than pip, especially when solving complex package dependencies.
- **Larger installation**: The Anaconda distribution is large, as it comes with many pre-installed libraries. This might be unnecessary if you only need specific packages.
- **Multiple environments use more space**: Having multiple different environments with different software versions can take up a lot of space (though unfortunately it is often necessary)

Overview of using conda:

| **Feature**                  | **Description**                                                                                       |
|------------------------------|-------------------------------------------------------------------------------------------------------|
| **Isolation**                | Each environment has its own packages and dependencies, avoiding conflicts between projects           |
| **Reproducibility**           | Environments can be exported to `environment.yml` files, ensuring consistent setups across systems    |
| **Package Management**        | Conda manages not just Python packages, but also dependencies for languages like R, C++, etc          |
| **Multiple Environments**     | Supports creating and switching between environments for different projects with different setups     |
| **Creating an Environment**   | `conda create --name myenv python=3.9` – Creates a new environment with a specific Python version      |
| **Activating an Environment** | `conda activate myenv` – Activates the environment for use                                            |
| **Installing Packages**       | `conda install numpy pandas` – Installs packages into the active environment                          |
| **Listing Environments**      | `conda env list` – Lists all environments                                                             |
| **Exporting an Environment**  | `conda env export > environment.yml` – Exports environment setup to a file                            |
| **Creating from yml File**    | `conda env create -f environment.yml` – Recreates environment from a `.yml` file                      |
| **Removing an Environment**   | `conda env remove --name myenv` – Deletes an environment                                              |

**Note that conda and other environment and package managers DO NOT isolate files on the filesystem.**
You can access and work with files irrespective of the `conda` environment it was created in.

## Combining `pip` and `conda`

In some cases, you may need to use both `pip` and `conda` in the same environment. For example, if a package isn't available via `conda`, you can use `pip` to install it.

Example: Using `conda` and `pip` together:

1. Create a new conda environment:

`conda create -n myenv python=3.9`

2. Activate the environment:

`conda activate myenv`

3. Install a package with `conda`:

`conda install numpy`

4. Install a package with `pip`:

`pip install some_package_not_in_conda`

**Important Note:**

- **Install with `conda` first**: It's generally recommended to install packages with `conda` first. If the package is not available, then use `pip` as a fallback to minimize conflicts.

---

## Summary: When to Use `pip` or `conda`

| **Criteria**                    | **pip**                           | **conda**                          |
|----------------------------------|-----------------------------------|------------------------------------|
| **Primary Use**                  | Python packages from PyPI         | Cross-language package management |
| **Dependency Resolution**        | Basic (manual at times)           | Advanced (automatic)              |
| **Non-Python Dependencies**      | Not handled                       | Handled                           |
| **Speed and Performance**        | Lightweight and fast              | Slower, but more robust           |
| **Access to Packages**           | Vast library via PyPI             | Limited to conda channels         |
| **Environments**                 | Works with `venv` or `virtualenv` | Built-in environment management   |
| **Best For**                     | Pure Python projects              | Data science, scientific computing|


## Extra: `if __name__ = "__main___"`

In Python, `__name__` is a special variable that indicates how a file is being used. When a file is run directly, Python sets `__name__` to `"__main__"`, whereas when the file is imported as a module, `__name__` is set to the module’s name. The common pattern if `__name__ == "__main__":` allows code to run only when the file is executed as the main program and not when it is imported, which helps separate reusable definitions from script-level execution logic and prevents unintended side effects during import.


## Summary

It is important to be able to import libraries in python
There are many libraries for different functions.
