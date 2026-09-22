def display_summary(expenses):
    """Uses a for loop to iterate through the data and print a report."""
    print("\n--- Expense Summary ---")
    for item in expenses:
        category = item[0]
        amount = item[1]
        print(f"Category: {category.capitalize()} | Amount: ${amount:.2f}")
    print("-----------------------\n")