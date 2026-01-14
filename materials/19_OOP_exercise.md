---
title: Create your own Scripts
---

::: {.callout-tip}
#### Learning Objectives

- Use everything you have learn so far and apply it to creating your own script

:::

::: {.callout-exercise}
#### File Parsing and renaming Exercise
{{< level 2 >}}

I have given you a list of pdf files which are science papers of different fields.
To read these filles you will need the PyPDF2 package.
Use pip to install this package.

Then get the text in the following way:

from PyPDF2 import PdfReader

reader = PdfReader("example.pdf")
for page in reader.pages:
    text = page.extract_text()
    print(text)

Write a script to use the text to sort the pdf files in a way that makes sense to you, and rename the pdf's to meaningful file names.

Remember to use all the tools we have looked at so far. If you need help you can talk to eachother and ask the instructors.

:::


## Summary

Now you should already be able to use python to automate simple tasks that you need doing!
