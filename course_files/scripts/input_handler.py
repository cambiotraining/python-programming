def collect_expenses(thresholds, expenses, get_total_func, check_logic_func):
    """Uses a while loop to interact with the user."""
    print("Enter your expenses. Type 'done' to finish.\n")
    
    while True:
        category = input("Category (food, transport, entertainment, other): ").lower()
        if category == "done":
            break
        
        amount_str = input("Amount: ")
        
        # Validation
        if category in thresholds and amount_str.replace('.', '', 1).isdigit():
            amount = float(amount_str)
            expenses.append([category, amount])
            
            # Use the passed-in logic functions
            current_total = get_total_func(expenses, category)
            check_logic_func(category, current_total, thresholds)
        else:
            print("Invalid input. Try again.\n")