def save_expenses(filename, expenses):
    """Uses the 'with' keyword to safely write to a file."""
    with open(filename, "w") as file:
        for cat, amount in expenses:
            file.write(f"{cat},{amount}\n")
    print("All expenses saved successfully.")