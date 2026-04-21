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

<!--
::: {.callout-answer}
```
import os
import shutil
from PyPDF2 import PdfReader

# Your specified categories and keywords
CATEGORIES = {
    "machine learning": ["training", "dataset", "network", "machine"],
    "physics": ["quantum", "particle", "energy", "field", "wave", "gravity"],
    "biology": ["cell", "dna", "gene", "protein", "organism", "neuroscience", "ecology", "microbiology","habitat"],
    "maths": ["theorem", "proof", "equation", "lemma"],
}

def get_best_category(pdf_path):
    """Reads first 500 words and matches against the CATEGORIES dictionary."""
    try:
        reader = PdfReader(pdf_path)
        if not reader.pages:
            return "uncategorized"
            
        # Get first page and slice first 500 words
        text = reader.pages[0].extract_text().lower()
        words = text.split()[:500]
        
        scores = {cat: 0 for cat in CATEGORIES}
        
        for word in words:
            clean_word = "".join(filter(str.isalpha, word))
            for cat, keywords in CATEGORIES.items():
                if clean_word in keywords:
                    scores[cat] += 1
        
        best_cat = max(scores, key=scores.get)
        return best_cat if scores[best_cat] > 0 else "uncategorized"
    except Exception as e:
        print(f"Error reading {pdf_path}: {e}")
        return "error"

def organize_by_defined_categories(target_path):
    """
    Organizes PDFs within the specified target_path into category subfolders.
    """
    # Verify the directory exists
    if not os.path.exists(target_path):
        print(f"Error: The directory '{target_path}' does not exist.")
        return

    # 1. Identify all PDF files specifically in the provided target_path
    pdf_files = [f for f in os.listdir(target_path) if f.lower().endswith('.pdf')]
    
    if not pdf_files:
        print(f"No PDF files found in '{target_path}'.")
        return

    for filename in pdf_files:
        # Create full path to the source file
        source_file_path = os.path.join(target_path, filename)
        
        print(f"Analyzing: {filename}...")
        
        # 2. Determine category
        category = get_best_category(source_file_path)
        
        if category == "error":
            continue

        # 3. Create category folder inside the target path
        category_dir = os.path.join(target_path, category)
        if not os.path.exists(category_dir):
            os.makedirs(category_dir)
            
        # 4. Define the final destination path
        destination_path = os.path.join(category_dir, filename)
        
        # 5. Move File
        try:
            shutil.move(source_file_path, destination_path)
            print(f"  -> Sorted into: {category}")
        except Exception as e:
            print(f"  -> Error moving {filename}: {e}")

if __name__ == "__main__":
    # Specify your path here
    my_papers_folder = './Papers' 
    
    # Pass the path into the function
    organize_by_defined_categories(my_papers_folder)
    
    print("\nOrganization complete.")
```
:::
-->

:::


## Summary

Now you should already be able to use python to automate simple tasks that you need doing!
