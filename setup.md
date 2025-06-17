---
title: "Data & Setup"
number-sections: false
---

<!-- 
Note for Training Developers:
We provide instructions for commonly-used software as commented sections below.
Uncomment the sections relevant for your materials, and add additional instructions where needed (e.g. specific packages used).
Note that we use tabsets to provide instructions for all three major operating systems.
-->

::: {.callout-tip level=2}
## Workshop Attendees

If you are attending one of our workshops, we will provide a training environment with all of the required software and data. 

The data and scripts can be downloaded below. 

The idea behind this course however is to be able to use python yourselves on your local machines. We therefore recommend installing the software - Visual studio code, and mamba, using the instructions below.
:::

## Data

The data used in these materials is provided as a zip file. 
Download and unzip the folder to your Desktop to follow along with the materials.

<!-- Note for Training Developers: add the link to 'href' -->
<a href="">
  <button class="btn"><i class="fa fa-download"></i> Download</button>
</a>

## Software

### Visual Studio Code

Visual Studio Code is a popular text editor with many useful extensions to make programming easier. You can use it with many different coding languages, one of which is python. 

::: {.panel-tabset group="os"}

#### Windows 10/11

- Go to the [Visual Studio Code download page](https://code.visualstudio.com/Download) and download the installer for your operating system. 
- Double-click the downloaded file to install the software, accepting all the default options. 
- After completing the installation, search for "Visual Studio Code" and launch the application. 
- Go to "_File > Preferences > Settings_", then select "_Text Editor > Files_" on the drop-down menu on the left. Scroll down to the section named "_EOL_" and choose "_\\n_" (this will ensure that the files you edit on Windows are compatible with the Linux operating system).
- Assuming you have set WSL2 ([instructions](wsl.md)): press <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd>. Search for "**Terminal: Select Default Profile**" and click. Then click on either "**WSL Ubuntu**" or "**bash**".
- You can now close _VS Code_.

#### macOS

- Determine the type of processor on your Mac. On the top-left of your toolbar click "<i class="fa-brands fa-apple"></i> apple" > "About this Mac".
  - If you see "Intel" on your processor/chip information, then you have an Intel processor.
  - If you see "M[1,2,3,4]", then you have an M-series chip.
- Go to the [Visual Studio Code download page](https://code.visualstudio.com/Download) and download the correct installer based on the previous step.
- Follow the installation instructions on the [VS Code documentation page](https://code.visualstudio.com/docs/setup/mac)


#### Linux

- Open a terminal and run the command `uname -m`. This will help you determine the installer you should download in the next step: 
  - `x86_64` = "x64"
  - `aarch64` or `arm64` = "ARM64"
  - `armv7l` or `armhf` = "ARM32"
- Go to the [Visual Studio Code download page](https://code.visualstudio.com/Download) and download the correct installer based on the previous step.
- Install the software using your usual package manager.

:::

### mamba

We recommend that you manage your Python environment using the Mamba package manager. 
Below you can find links to our software installation instructions:

- <a href="https://cambiotraining.github.io/software-installation/materials/mamba.html" target="_blank">Mamba setup instructions</a>
- <a href="https://cambiotraining.github.io/software-installation/materials/python-base.html" target="_blank">Python setup instructions</a>

Once you follow those instructions, confirm you have an environment called `pycourse`. 
From your terminal run: 

```bash
mamba env list
```

You should see an environment called `pycourse` on the list. 

Finally, install some further packages we will use specifically on this course:

```bash
mamba install -n pycourse numpy
```